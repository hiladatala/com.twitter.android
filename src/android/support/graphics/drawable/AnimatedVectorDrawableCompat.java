package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(21)
public class AnimatedVectorDrawableCompat
  extends VectorDrawableCommon
  implements Animatable
{
  private static final String ANIMATED_VECTOR = "animated-vector";
  private static final boolean DBG_ANIMATION_VECTOR_DRAWABLE = false;
  private static final String LOGTAG = "AnimatedVDCompat";
  private static final String TARGET = "target";
  private AnimatedVectorDrawableCompat.AnimatedVectorDrawableCompatState mAnimatedVectorState;
  private ArgbEvaluator mArgbEvaluator = null;
  AnimatedVectorDrawableCompat.AnimatedVectorDrawableDelegateState mCachedConstantStateDelegate;
  private final Drawable.Callback mCallback = new AnimatedVectorDrawableCompat.1(this);
  private Context mContext;
  
  private AnimatedVectorDrawableCompat()
  {
    this(null, null, null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext)
  {
    this(paramContext, null, null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext, @Nullable AnimatedVectorDrawableCompat.AnimatedVectorDrawableCompatState paramAnimatedVectorDrawableCompatState, @Nullable Resources paramResources)
  {
    mContext = paramContext;
    if (paramAnimatedVectorDrawableCompatState != null)
    {
      mAnimatedVectorState = paramAnimatedVectorDrawableCompatState;
      return;
    }
    mAnimatedVectorState = new AnimatedVectorDrawableCompat.AnimatedVectorDrawableCompatState(paramContext, paramAnimatedVectorDrawableCompatState, mCallback, paramResources);
  }
  
  @Nullable
  public static AnimatedVectorDrawableCompat create(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      localObject = new AnimatedVectorDrawableCompat(paramContext);
      mDelegateDrawable = ResourcesCompat.getDrawable(paramContext.getResources(), paramInt, paramContext.getTheme());
      mDelegateDrawable.setCallback(mCallback);
      mCachedConstantStateDelegate = new AnimatedVectorDrawableCompat.AnimatedVectorDrawableDelegateState(mDelegateDrawable.getConstantState());
      return (AnimatedVectorDrawableCompat)localObject;
    }
    Object localObject = paramContext.getResources();
    try
    {
      localObject = ((Resources)localObject).getXml(paramInt);
      localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
      {
        paramInt = ((XmlPullParser)localObject).next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt != 2) {
        throw new XmlPullParserException("No start tag found");
      }
    }
    catch (XmlPullParserException paramContext)
    {
      AttributeSet localAttributeSet;
      Log.e("AnimatedVDCompat", "parser error", paramContext);
      return null;
      paramContext = createFromXmlInner(paramContext, paramContext.getResources(), (XmlPullParser)localObject, localAttributeSet, paramContext.getTheme());
      return paramContext;
    }
    catch (IOException paramContext)
    {
      for (;;)
      {
        Log.e("AnimatedVDCompat", "parser error", paramContext);
      }
    }
  }
  
  public static AnimatedVectorDrawableCompat createFromXmlInner(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    paramContext = new AnimatedVectorDrawableCompat(paramContext);
    paramContext.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return paramContext;
  }
  
  private boolean isStarted()
  {
    ArrayList localArrayList = mAnimatedVectorState.mAnimators;
    if (localArrayList == null) {
      return false;
    }
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  static TypedArray obtainAttributes(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    if (paramTheme == null) {
      return paramResources.obtainAttributes(paramAttributeSet, paramArrayOfInt);
    }
    return paramTheme.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, 0, 0);
  }
  
  private void setupAnimatorsForTarget(String paramString, Animator paramAnimator)
  {
    paramAnimator.setTarget(mAnimatedVectorState.mVectorDrawable.getTargetByName(paramString));
    if (Build.VERSION.SDK_INT < 21) {
      setupColorAnimator(paramAnimator);
    }
    if (mAnimatedVectorState.mAnimators == null)
    {
      mAnimatedVectorState.mAnimators = new ArrayList();
      mAnimatedVectorState.mTargetNameMap = new ArrayMap();
    }
    mAnimatedVectorState.mAnimators.add(paramAnimator);
    mAnimatedVectorState.mTargetNameMap.put(paramAnimator, paramString);
  }
  
  private void setupColorAnimator(Animator paramAnimator)
  {
    Object localObject;
    if ((paramAnimator instanceof AnimatorSet))
    {
      localObject = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (localObject != null)
      {
        int i = 0;
        while (i < ((List)localObject).size())
        {
          setupColorAnimator((Animator)((List)localObject).get(i));
          i += 1;
        }
      }
    }
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      localObject = paramAnimator.getPropertyName();
      if (("fillColor".equals(localObject)) || ("strokeColor".equals(localObject)))
      {
        if (mArgbEvaluator == null) {
          mArgbEvaluator = new ArgbEvaluator();
        }
        paramAnimator.setEvaluator(mArgbEvaluator);
      }
    }
  }
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (mDelegateDrawable != null) {
      DrawableCompat.applyTheme(mDelegateDrawable, paramTheme);
    }
  }
  
  public boolean canApplyTheme()
  {
    if (mDelegateDrawable != null) {
      return DrawableCompat.canApplyTheme(mDelegateDrawable);
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (mDelegateDrawable != null) {
      mDelegateDrawable.draw(paramCanvas);
    }
    do
    {
      return;
      mAnimatedVectorState.mVectorDrawable.draw(paramCanvas);
    } while (!isStarted());
    invalidateSelf();
  }
  
  public int getAlpha()
  {
    if (mDelegateDrawable != null) {
      return DrawableCompat.getAlpha(mDelegateDrawable);
    }
    return mAnimatedVectorState.mVectorDrawable.getAlpha();
  }
  
  public int getChangingConfigurations()
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | mAnimatedVectorState.mChangingConfigurations;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (mDelegateDrawable != null) {
      return new AnimatedVectorDrawableCompat.AnimatedVectorDrawableDelegateState(mDelegateDrawable.getConstantState());
    }
    return null;
  }
  
  public int getIntrinsicHeight()
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.getIntrinsicHeight();
    }
    return mAnimatedVectorState.mVectorDrawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.getIntrinsicWidth();
    }
    return mAnimatedVectorState.mVectorDrawable.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.getOpacity();
    }
    return mAnimatedVectorState.mVectorDrawable.getOpacity();
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (mDelegateDrawable != null)
    {
      DrawableCompat.inflate(mDelegateDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    int i = paramXmlPullParser.getEventType();
    label28:
    Object localObject1;
    Object localObject2;
    if (i != 1) {
      if (i == 2)
      {
        localObject1 = paramXmlPullParser.getName();
        if (!"animated-vector".equals(localObject1)) {
          break label155;
        }
        localObject1 = obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_AnimatedVectorDrawable);
        i = ((TypedArray)localObject1).getResourceId(0, 0);
        if (i != 0)
        {
          localObject2 = VectorDrawableCompat.create(paramResources, i, paramTheme);
          ((VectorDrawableCompat)localObject2).setAllowCaching(false);
          ((VectorDrawableCompat)localObject2).setCallback(mCallback);
          if (mAnimatedVectorState.mVectorDrawable != null) {
            mAnimatedVectorState.mVectorDrawable.setCallback(null);
          }
          mAnimatedVectorState.mVectorDrawable = ((VectorDrawableCompat)localObject2);
        }
        ((TypedArray)localObject1).recycle();
      }
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      break label28;
      break;
      label155:
      if ("target".equals(localObject1))
      {
        localObject1 = paramResources.obtainAttributes(paramAttributeSet, AndroidResources.styleable_AnimatedVectorDrawableTarget);
        localObject2 = ((TypedArray)localObject1).getString(0);
        i = ((TypedArray)localObject1).getResourceId(1, 0);
        if (i != 0)
        {
          if (mContext == null) {
            break label227;
          }
          setupAnimatorsForTarget((String)localObject2, AnimatorInflater.loadAnimator(mContext, i));
        }
        ((TypedArray)localObject1).recycle();
      }
    }
    label227:
    throw new IllegalStateException("Context can't be null when inflating animators");
  }
  
  public boolean isRunning()
  {
    if (mDelegateDrawable != null) {
      return ((AnimatedVectorDrawable)mDelegateDrawable).isRunning();
    }
    ArrayList localArrayList = mAnimatedVectorState.mAnimators;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean isStateful()
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.isStateful();
    }
    return mAnimatedVectorState.mVectorDrawable.isStateful();
  }
  
  public Drawable mutate()
  {
    if (mDelegateDrawable != null)
    {
      mDelegateDrawable.mutate();
      return this;
    }
    throw new IllegalStateException("Mutate() is not supported for older platform");
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (mDelegateDrawable != null)
    {
      mDelegateDrawable.setBounds(paramRect);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.setLevel(paramInt);
    }
    return mAnimatedVectorState.mVectorDrawable.setLevel(paramInt);
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.setState(paramArrayOfInt);
    }
    return mAnimatedVectorState.mVectorDrawable.setState(paramArrayOfInt);
  }
  
  public void setAlpha(int paramInt)
  {
    if (mDelegateDrawable != null)
    {
      mDelegateDrawable.setAlpha(paramInt);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (mDelegateDrawable != null)
    {
      mDelegateDrawable.setColorFilter(paramColorFilter);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setColorFilter(paramColorFilter);
  }
  
  public void setTint(int paramInt)
  {
    if (mDelegateDrawable != null)
    {
      DrawableCompat.setTint(mDelegateDrawable, paramInt);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (mDelegateDrawable != null)
    {
      DrawableCompat.setTintList(mDelegateDrawable, paramColorStateList);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (mDelegateDrawable != null)
    {
      DrawableCompat.setTintMode(mDelegateDrawable, paramMode);
      return;
    }
    mAnimatedVectorState.mVectorDrawable.setTintMode(paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mDelegateDrawable != null) {
      return mDelegateDrawable.setVisible(paramBoolean1, paramBoolean2);
    }
    mAnimatedVectorState.mVectorDrawable.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    if (mDelegateDrawable != null) {
      ((AnimatedVectorDrawable)mDelegateDrawable).start();
    }
    while (isStarted()) {
      return;
    }
    ArrayList localArrayList = mAnimatedVectorState.mAnimators;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      ((Animator)localArrayList.get(i)).start();
      i += 1;
    }
    invalidateSelf();
  }
  
  public void stop()
  {
    if (mDelegateDrawable != null) {
      ((AnimatedVectorDrawable)mDelegateDrawable).stop();
    }
    for (;;)
    {
      return;
      ArrayList localArrayList = mAnimatedVectorState.mAnimators;
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((Animator)localArrayList.get(i)).end();
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.graphics.drawable.AnimatedVectorDrawableCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */