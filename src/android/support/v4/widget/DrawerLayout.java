package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout
  extends ViewGroup
  implements DrawerLayoutImpl
{
  private static final boolean ALLOW_EDGE_LOCK = false;
  private static final boolean CAN_HIDE_DESCENDANTS;
  private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
  private static final int DEFAULT_SCRIM_COLOR = -1728053248;
  private static final int DRAWER_ELEVATION = 10;
  static final DrawerLayout.DrawerLayoutCompatImpl IMPL;
  private static final int[] LAYOUT_ATTRS;
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  public static final int LOCK_MODE_UNDEFINED = 3;
  public static final int LOCK_MODE_UNLOCKED = 0;
  private static final int MIN_DRAWER_MARGIN = 64;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final int PEEK_DELAY = 160;
  private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "DrawerLayout";
  private static final float TOUCH_SLOP_SENSITIVITY = 1.0F;
  private final DrawerLayout.ChildAccessibilityDelegate mChildAccessibilityDelegate = new DrawerLayout.ChildAccessibilityDelegate(this);
  private boolean mChildrenCanceledTouch;
  private boolean mDisallowInterceptRequested;
  private boolean mDrawStatusBarBackground;
  private float mDrawerElevation;
  private int mDrawerState;
  private boolean mFirstLayout = true;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private Object mLastInsets;
  private final DrawerLayout.ViewDragCallback mLeftCallback;
  private final ViewDragHelper mLeftDragger;
  @Deprecated
  @Nullable
  private DrawerLayout.DrawerListener mListener;
  private List<DrawerLayout.DrawerListener> mListeners;
  private int mLockModeEnd = 3;
  private int mLockModeLeft = 3;
  private int mLockModeRight = 3;
  private int mLockModeStart = 3;
  private int mMinDrawerMargin;
  private final ArrayList<View> mNonDrawerViews;
  private final DrawerLayout.ViewDragCallback mRightCallback;
  private final ViewDragHelper mRightDragger;
  private int mScrimColor = -1728053248;
  private float mScrimOpacity;
  private Paint mScrimPaint = new Paint();
  private Drawable mShadowEnd = null;
  private Drawable mShadowLeft = null;
  private Drawable mShadowLeftResolved;
  private Drawable mShadowRight = null;
  private Drawable mShadowRightResolved;
  private Drawable mShadowStart = null;
  private Drawable mStatusBarBackground;
  private CharSequence mTitleLeft;
  private CharSequence mTitleRight;
  
  static
  {
    boolean bool2 = true;
    LAYOUT_ATTRS = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      CAN_HIDE_DESCENDANTS = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      SET_DRAWER_SHADOW_FROM_ELEVATION = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      IMPL = new DrawerLayout.DrawerLayoutCompatImplApi21();
      return;
      bool1 = false;
      break;
    }
    label70:
    IMPL = new DrawerLayout.DrawerLayoutCompatImplBase();
  }
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    mMinDrawerMargin = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    mLeftCallback = new DrawerLayout.ViewDragCallback(this, 3);
    mRightCallback = new DrawerLayout.ViewDragCallback(this, 5);
    mLeftDragger = ViewDragHelper.create(this, 1.0F, mLeftCallback);
    mLeftDragger.setEdgeTrackingEnabled(1);
    mLeftDragger.setMinVelocity(f2);
    mLeftCallback.setDragger(mLeftDragger);
    mRightDragger = ViewDragHelper.create(this, 1.0F, mRightCallback);
    mRightDragger.setEdgeTrackingEnabled(2);
    mRightDragger.setMinVelocity(f2);
    mRightCallback.setDragger(mRightDragger);
    setFocusableInTouchMode(true);
    ViewCompat.setImportantForAccessibility(this, 1);
    ViewCompat.setAccessibilityDelegate(this, new DrawerLayout.AccessibilityDelegate(this));
    ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
    if (ViewCompat.getFitsSystemWindows(this))
    {
      IMPL.configureApplyInsets(this);
      mStatusBarBackground = IMPL.getDefaultStatusBarBackground(paramContext);
    }
    mDrawerElevation = (f1 * 10.0F);
    mNonDrawerViews = new ArrayList();
  }
  
  private View findVisibleDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if ((isDrawerView(localView)) && (isDrawerVisible(localView))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  static String gravityToString(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private static boolean hasOpaqueBackground(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean hasPeekingDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      if (DrawerLayout.LayoutParams.access$200((DrawerLayout.LayoutParams)getChildAt(i).getLayoutParams())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private boolean hasVisibleDrawer()
  {
    return findVisibleDrawer() != null;
  }
  
  private static boolean includeChildForAccessibility(View paramView)
  {
    return (ViewCompat.getImportantForAccessibility(paramView) != 4) && (ViewCompat.getImportantForAccessibility(paramView) != 2);
  }
  
  private boolean mirror(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!DrawableCompat.isAutoMirrored(paramDrawable))) {
      return false;
    }
    DrawableCompat.setLayoutDirection(paramDrawable, paramInt);
    return true;
  }
  
  private Drawable resolveLeftShadow()
  {
    int i = ViewCompat.getLayoutDirection(this);
    if (i == 0)
    {
      if (mShadowStart != null)
      {
        mirror(mShadowStart, i);
        return mShadowStart;
      }
    }
    else if (mShadowEnd != null)
    {
      mirror(mShadowEnd, i);
      return mShadowEnd;
    }
    return mShadowLeft;
  }
  
  private Drawable resolveRightShadow()
  {
    int i = ViewCompat.getLayoutDirection(this);
    if (i == 0)
    {
      if (mShadowEnd != null)
      {
        mirror(mShadowEnd, i);
        return mShadowEnd;
      }
    }
    else if (mShadowStart != null)
    {
      mirror(mShadowStart, i);
      return mShadowStart;
    }
    return mShadowRight;
  }
  
  private void resolveShadowDrawables()
  {
    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
      return;
    }
    mShadowLeftResolved = resolveLeftShadow();
    mShadowRightResolved = resolveRightShadow();
  }
  
  private void updateChildrenImportantForAccessibility(View paramView, boolean paramBoolean)
  {
    int j = getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = getChildAt(i);
      if (((!paramBoolean) && (!isDrawerView(localView))) || ((paramBoolean) && (localView == paramView))) {
        ViewCompat.setImportantForAccessibility(localView, 1);
      }
      for (;;)
      {
        i += 1;
        break;
        ViewCompat.setImportantForAccessibility(localView, 4);
      }
    }
  }
  
  public void addDrawerListener(@NonNull DrawerLayout.DrawerListener paramDrawerListener)
  {
    if (paramDrawerListener == null) {
      return;
    }
    if (mListeners == null) {
      mListeners = new ArrayList();
    }
    mListeners.add(paramDrawerListener);
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int k = 0;
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int m = getChildCount();
    int i = 0;
    int j = 0;
    View localView;
    if (i < m)
    {
      localView = getChildAt(i);
      if (isDrawerView(localView)) {
        if (isDrawerOpen(localView))
        {
          j = 1;
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        mNonDrawerViews.add(localView);
      }
    }
    if (j == 0)
    {
      j = mNonDrawerViews.size();
      i = k;
      while (i < j)
      {
        localView = (View)mNonDrawerViews.get(i);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i += 1;
      }
    }
    mNonDrawerViews.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((findOpenDrawer() != null) || (isDrawerView(paramView))) {
      ViewCompat.setImportantForAccessibility(paramView, 4);
    }
    for (;;)
    {
      if (!CAN_HIDE_DESCENDANTS) {
        ViewCompat.setAccessibilityDelegate(paramView, mChildAccessibilityDelegate);
      }
      return;
      ViewCompat.setImportantForAccessibility(paramView, 1);
    }
  }
  
  void cancelChildViewTouch()
  {
    int i = 0;
    if (!mChildrenCanceledTouch)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      int j = getChildCount();
      while (i < j)
      {
        getChildAt(i).dispatchTouchEvent(localMotionEvent);
        i += 1;
      }
      localMotionEvent.recycle();
      mChildrenCanceledTouch = true;
    }
  }
  
  boolean checkDrawerViewAbsoluteGravity(View paramView, int paramInt)
  {
    return (getDrawerViewAbsoluteGravity(paramView) & paramInt) == paramInt;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void closeDrawer(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(paramInt));
    }
    closeDrawer(localView);
  }
  
  public void closeDrawer(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (mFirstLayout)
    {
      DrawerLayout.LayoutParams.access$002(localLayoutParams, 0.0F);
      DrawerLayout.LayoutParams.access$102(localLayoutParams, 0);
    }
    for (;;)
    {
      invalidate();
      return;
      DrawerLayout.LayoutParams.access$176(localLayoutParams, 4);
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        mLeftDragger.smoothSlideViewTo(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        mRightDragger.smoothSlideViewTo(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public void closeDrawers()
  {
    closeDrawers(false);
  }
  
  void closeDrawers(boolean paramBoolean)
  {
    int n = getChildCount();
    int j = 0;
    int i = 0;
    while (j < n)
    {
      View localView = getChildAt(j);
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      int k = i;
      if (isDrawerView(localView))
      {
        if ((paramBoolean) && (!DrawerLayout.LayoutParams.access$200(localLayoutParams))) {
          k = i;
        }
      }
      else
      {
        j += 1;
        i = k;
        continue;
      }
      int m = localView.getWidth();
      if (checkDrawerViewAbsoluteGravity(localView, 3)) {
        i |= mLeftDragger.smoothSlideViewTo(localView, -m, localView.getTop());
      }
      for (;;)
      {
        DrawerLayout.LayoutParams.access$202(localLayoutParams, false);
        m = i;
        break;
        i |= mRightDragger.smoothSlideViewTo(localView, getWidth(), localView.getTop());
      }
    }
    mLeftCallback.removeCallbacks();
    mRightCallback.removeCallbacks();
    if (i != 0) {
      invalidate();
    }
  }
  
  public void computeScroll()
  {
    int j = getChildCount();
    float f = 0.0F;
    int i = 0;
    while (i < j)
    {
      f = Math.max(f, DrawerLayout.LayoutParams.access$000((DrawerLayout.LayoutParams)getChildAt(i).getLayoutParams()));
      i += 1;
    }
    mScrimOpacity = f;
    if ((mLeftDragger.continueSettling(true) | mRightDragger.continueSettling(true))) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  void dispatchOnDrawerClosed(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if ((DrawerLayout.LayoutParams.access$100(localLayoutParams) & 0x1) == 1)
    {
      DrawerLayout.LayoutParams.access$102(localLayoutParams, 0);
      if (mListeners != null)
      {
        int i = mListeners.size() - 1;
        while (i >= 0)
        {
          ((DrawerLayout.DrawerListener)mListeners.get(i)).onDrawerClosed(paramView);
          i -= 1;
        }
      }
      updateChildrenImportantForAccessibility(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  void dispatchOnDrawerOpened(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if ((DrawerLayout.LayoutParams.access$100(localLayoutParams) & 0x1) == 0)
    {
      DrawerLayout.LayoutParams.access$102(localLayoutParams, 1);
      if (mListeners != null)
      {
        int i = mListeners.size() - 1;
        while (i >= 0)
        {
          ((DrawerLayout.DrawerListener)mListeners.get(i)).onDrawerOpened(paramView);
          i -= 1;
        }
      }
      updateChildrenImportantForAccessibility(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
      paramView.requestFocus();
    }
  }
  
  void dispatchOnDrawerSlide(View paramView, float paramFloat)
  {
    if (mListeners != null)
    {
      int i = mListeners.size() - 1;
      while (i >= 0)
      {
        ((DrawerLayout.DrawerListener)mListeners.get(i)).onDrawerSlide(paramView, paramFloat);
        i -= 1;
      }
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i2 = getHeight();
    boolean bool1 = isContentView(paramView);
    int k = 0;
    int n = 0;
    int i = getWidth();
    int i3 = paramCanvas.save();
    int j = i;
    int m;
    View localView;
    if (bool1)
    {
      int i4 = getChildCount();
      m = 0;
      k = n;
      for (;;)
      {
        if (m < i4)
        {
          localView = getChildAt(m);
          if ((localView != paramView) && (localView.getVisibility() == 0) && (hasOpaqueBackground(localView)) && (isDrawerView(localView)))
          {
            if (localView.getHeight() < i2)
            {
              n = k;
              j = i;
              m += 1;
              i = j;
              k = n;
              continue;
            }
            if (checkDrawerViewAbsoluteGravity(localView, 3))
            {
              j = localView.getRight();
              if (j <= k) {
                break label534;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      n = j;
      j = i;
      break;
      int i1 = localView.getLeft();
      j = i1;
      n = k;
      if (i1 < i) {
        break;
      }
      j = i;
      n = k;
      break;
      paramCanvas.clipRect(k, 0, i, getHeight());
      j = i;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i3);
      if ((mScrimOpacity > 0.0F) && (bool1))
      {
        i = (int)(((mScrimColor & 0xFF000000) >>> 24) * mScrimOpacity);
        m = mScrimColor;
        mScrimPaint.setColor(i << 24 | m & 0xFFFFFF);
        paramCanvas.drawRect(k, 0.0F, j, getHeight(), mScrimPaint);
      }
      do
      {
        return bool2;
        if ((mShadowLeftResolved != null) && (checkDrawerViewAbsoluteGravity(paramView, 3)))
        {
          i = mShadowLeftResolved.getIntrinsicWidth();
          j = paramView.getRight();
          k = mLeftDragger.getEdgeSize();
          f = Math.max(0.0F, Math.min(j / k, 1.0F));
          mShadowLeftResolved.setBounds(j, paramView.getTop(), i + j, paramView.getBottom());
          mShadowLeftResolved.setAlpha((int)(255.0F * f));
          mShadowLeftResolved.draw(paramCanvas);
          return bool2;
        }
      } while ((mShadowRightResolved == null) || (!checkDrawerViewAbsoluteGravity(paramView, 5)));
      i = mShadowRightResolved.getIntrinsicWidth();
      j = paramView.getLeft();
      k = getWidth();
      m = mRightDragger.getEdgeSize();
      float f = Math.max(0.0F, Math.min((k - j) / m, 1.0F));
      mShadowRightResolved.setBounds(j - i, paramView.getTop(), j, paramView.getBottom());
      mShadowRightResolved.setAlpha((int)(255.0F * f));
      mShadowRightResolved.draw(paramCanvas);
      return bool2;
      label534:
      j = k;
    }
  }
  
  View findDrawerWithGravity(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    int j = getChildCount();
    paramInt = 0;
    while (paramInt < j)
    {
      View localView = getChildAt(paramInt);
      if ((getDrawerViewAbsoluteGravity(localView) & 0x7) == (i & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  View findOpenDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if ((DrawerLayout.LayoutParams.access$100((DrawerLayout.LayoutParams)localView.getLayoutParams()) & 0x1) == 1) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) {
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new DrawerLayout.LayoutParams(paramLayoutParams);
  }
  
  public float getDrawerElevation()
  {
    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
      return mDrawerElevation;
    }
    return 0.0F;
  }
  
  public int getDrawerLockMode(int paramInt)
  {
    int i = ViewCompat.getLayoutDirection(this);
    switch (paramInt)
    {
    }
    for (;;)
    {
      return 0;
      if (mLockModeLeft != 3) {
        return mLockModeLeft;
      }
      if (i == 0) {}
      for (paramInt = mLockModeStart; paramInt != 3; paramInt = mLockModeEnd) {
        return paramInt;
      }
      if (mLockModeRight != 3) {
        return mLockModeRight;
      }
      if (i == 0) {}
      for (paramInt = mLockModeEnd; paramInt != 3; paramInt = mLockModeStart) {
        return paramInt;
      }
      if (mLockModeStart != 3) {
        return mLockModeStart;
      }
      if (i == 0) {}
      for (paramInt = mLockModeLeft; paramInt != 3; paramInt = mLockModeRight) {
        return paramInt;
      }
      if (mLockModeEnd != 3) {
        return mLockModeEnd;
      }
      if (i == 0) {}
      for (paramInt = mLockModeRight; paramInt != 3; paramInt = mLockModeLeft) {
        return paramInt;
      }
    }
  }
  
  public int getDrawerLockMode(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getDrawerLockMode(getLayoutParamsgravity);
  }
  
  @Nullable
  public CharSequence getDrawerTitle(int paramInt)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      return mTitleLeft;
    }
    if (paramInt == 5) {
      return mTitleRight;
    }
    return null;
  }
  
  int getDrawerViewAbsoluteGravity(View paramView)
  {
    return GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(this));
  }
  
  float getDrawerViewOffset(View paramView)
  {
    return DrawerLayout.LayoutParams.access$000((DrawerLayout.LayoutParams)paramView.getLayoutParams());
  }
  
  public Drawable getStatusBarBackgroundDrawable()
  {
    return mStatusBarBackground;
  }
  
  boolean isContentView(View paramView)
  {
    return getLayoutParamsgravity == 0;
  }
  
  public boolean isDrawerOpen(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null) {
      return isDrawerOpen(localView);
    }
    return false;
  }
  
  public boolean isDrawerOpen(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return (DrawerLayout.LayoutParams.access$100((DrawerLayout.LayoutParams)paramView.getLayoutParams()) & 0x1) == 1;
  }
  
  boolean isDrawerView(View paramView)
  {
    int i = GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(paramView));
    if ((i & 0x3) != 0) {
      return true;
    }
    return (i & 0x5) != 0;
  }
  
  public boolean isDrawerVisible(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null) {
      return isDrawerVisible(localView);
    }
    return false;
  }
  
  public boolean isDrawerVisible(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return DrawerLayout.LayoutParams.access$000((DrawerLayout.LayoutParams)paramView.getLayoutParams()) > 0.0F;
  }
  
  void moveDrawerToOffset(View paramView, float paramFloat)
  {
    float f = getDrawerViewOffset(paramView);
    int i = paramView.getWidth();
    int j = (int)(f * i);
    i = (int)(i * paramFloat) - j;
    if (checkDrawerViewAbsoluteGravity(paramView, 3)) {}
    for (;;)
    {
      paramView.offsetLeftAndRight(i);
      setDrawerViewOffset(paramView, paramFloat);
      return;
      i = -i;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    mFirstLayout = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((mDrawStatusBarBackground) && (mStatusBarBackground != null))
    {
      int i = IMPL.getTopInset(mLastInsets);
      if (i > 0)
      {
        mStatusBarBackground.setBounds(0, 0, getWidth(), i);
        mStatusBarBackground.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool2 = mLeftDragger.shouldInterceptTouchEvent(paramMotionEvent);
    boolean bool3 = mRightDragger.shouldInterceptTouchEvent(paramMotionEvent);
    switch (i)
    {
    default: 
      i = 0;
      if (((bool2 | bool3)) || (i != 0) || (hasPeekingDrawer()) || (mChildrenCanceledTouch)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      if (mScrimOpacity > 0.0F)
      {
        paramMotionEvent = mLeftDragger.findTopChildUnder((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!isContentView(paramMotionEvent))) {
          break;
        }
      }
      break;
    }
    for (i = 1;; i = 0)
    {
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      break label63;
      if (!mLeftDragger.checkTouchSlop(3)) {
        break;
      }
      mLeftCallback.removeCallbacks();
      mRightCallback.removeCallbacks();
      i = 0;
      break label63;
      closeDrawers(true);
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (hasVisibleDrawer()))
    {
      KeyEventCompat.startTracking(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = findVisibleDrawer();
      if ((paramKeyEvent != null) && (getDrawerLockMode(paramKeyEvent) == 0)) {
        closeDrawers();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mInLayout = true;
    int m = paramInt3 - paramInt1;
    int n = getChildCount();
    paramInt3 = 0;
    if (paramInt3 < n)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() == 8) {}
      DrawerLayout.LayoutParams localLayoutParams;
      for (;;)
      {
        paramInt3 += 1;
        break;
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (!isContentView(localView)) {
          break label113;
        }
        localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
      }
      label113:
      int i1 = localView.getMeasuredWidth();
      int i2 = localView.getMeasuredHeight();
      int i;
      float f;
      label167:
      int j;
      if (checkDrawerViewAbsoluteGravity(localView, 3))
      {
        paramInt1 = -i1;
        i = (int)(i1 * DrawerLayout.LayoutParams.access$000(localLayoutParams)) + paramInt1;
        f = (i1 + i) / i1;
        if (f == DrawerLayout.LayoutParams.access$000(localLayoutParams)) {
          break label314;
        }
        j = 1;
        label181:
        switch (gravity & 0x70)
        {
        default: 
          localView.layout(i, topMargin, i1 + i, i2 + topMargin);
          label241:
          if (j != 0) {
            setDrawerViewOffset(localView, f);
          }
          if (DrawerLayout.LayoutParams.access$000(localLayoutParams) <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i = m - (int)(i1 * DrawerLayout.LayoutParams.access$000(localLayoutParams));
        f = (m - i) / i1;
        break label167;
        label314:
        j = 0;
        break label181;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i1 + i, paramInt1 - bottomMargin);
        break label241;
        int i3 = paramInt4 - paramInt2;
        int k = (i3 - i2) / 2;
        if (k < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i, paramInt1, i1 + i, i2 + paramInt1);
          break;
          paramInt1 = k;
          if (k + i2 > i3 - bottomMargin) {
            paramInt1 = i3 - bottomMargin - i2;
          }
        }
      }
    }
    mInLayout = false;
    mFirstLayout = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int n = View.MeasureSpec.getMode(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    int j;
    if (n == 1073741824)
    {
      j = i;
      if (m == 1073741824) {}
    }
    else if (isInEditMode())
    {
      if (n == Integer.MIN_VALUE)
      {
        if (m != Integer.MIN_VALUE) {
          break label162;
        }
        j = i;
        i = k;
      }
    }
    for (;;)
    {
      label71:
      setMeasuredDimension(j, i);
      if ((mLastInsets != null) && (ViewCompat.getFitsSystemWindows(this))) {}
      int i3;
      int i1;
      View localView;
      for (n = 1;; n = 0)
      {
        i3 = ViewCompat.getLayoutDirection(this);
        k = 0;
        m = 0;
        int i4 = getChildCount();
        i1 = 0;
        for (;;)
        {
          if (i1 >= i4) {
            break label580;
          }
          localView = getChildAt(i1);
          if (localView.getVisibility() != 8) {
            break;
          }
          i1 += 1;
        }
        if (n != 0) {
          break;
        }
        i = 300;
        break;
        label162:
        j = i;
        if (m != 0) {
          break label581;
        }
        j = i;
        i = 300;
        break label71;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
      }
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      int i2;
      if (n != 0)
      {
        i2 = GravityCompat.getAbsoluteGravity(gravity, i3);
        if (!ViewCompat.getFitsSystemWindows(localView)) {
          break label304;
        }
        IMPL.dispatchChildInsets(localView, mLastInsets, i2);
      }
      for (;;)
      {
        if (!isContentView(localView)) {
          break label323;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(j - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i - topMargin - bottomMargin, 1073741824));
        break;
        label304:
        IMPL.applyMarginInsets(localLayoutParams, mLastInsets, i2);
      }
      label323:
      if (isDrawerView(localView))
      {
        if ((SET_DRAWER_SHADOW_FROM_ELEVATION) && (ViewCompat.getElevation(localView) != mDrawerElevation)) {
          ViewCompat.setElevation(localView, mDrawerElevation);
        }
        int i5 = getDrawerViewAbsoluteGravity(localView) & 0x7;
        if (i5 == 3) {}
        for (i2 = 1; ((i2 != 0) && (k != 0)) || ((i2 == 0) && (m != 0)); i2 = 0) {
          throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(i5) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
        }
        if (i2 != 0) {
          k = 1;
        }
        for (;;)
        {
          localView.measure(getChildMeasureSpec(paramInt1, mMinDrawerMargin + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
          break;
          m = 1;
        }
      }
      throw new IllegalStateException("Child " + localView + " at index " + i1 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
      label580:
      return;
      label581:
      i = k;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (openDrawerGravity != 0)
    {
      View localView = findDrawerWithGravity(openDrawerGravity);
      if (localView != null) {
        openDrawer(localView);
      }
    }
    if (lockModeLeft != 3) {
      setDrawerLockMode(lockModeLeft, 3);
    }
    if (lockModeRight != 3) {
      setDrawerLockMode(lockModeRight, 5);
    }
    if (lockModeStart != 3) {
      setDrawerLockMode(lockModeStart, 8388611);
    }
    if (lockModeEnd != 3) {
      setDrawerLockMode(lockModeEnd, 8388613);
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    resolveShadowDrawables();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int m = getChildCount();
    int i = 0;
    for (;;)
    {
      DrawerLayout.LayoutParams localLayoutParams;
      int j;
      if (i < m)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)getChildAt(i).getLayoutParams();
        if (DrawerLayout.LayoutParams.access$100(localLayoutParams) != 1) {
          break label119;
        }
        j = 1;
        if (DrawerLayout.LayoutParams.access$100(localLayoutParams) != 2) {
          break label124;
        }
      }
      label119:
      label124:
      for (int k = 1;; k = 0)
      {
        if ((j == 0) && (k == 0)) {
          break label129;
        }
        openDrawerGravity = gravity;
        lockModeLeft = mLockModeLeft;
        lockModeRight = mLockModeRight;
        lockModeStart = mLockModeStart;
        lockModeEnd = mLockModeEnd;
        return localSavedState;
        j = 0;
        break;
      }
      label129:
      i += 1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    mLeftDragger.processTouchEvent(paramMotionEvent);
    mRightDragger.processTouchEvent(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = mLeftDragger.findTopChildUnder((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (isContentView(paramMotionEvent)))
      {
        f2 -= mInitialMotionX;
        f1 -= mInitialMotionY;
        int i = mLeftDragger.getTouchSlop();
        if (f2 * f2 + f1 * f1 < i * i)
        {
          paramMotionEvent = findOpenDrawer();
          if (paramMotionEvent != null) {
            if (getDrawerLockMode(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      closeDrawers(bool);
      mDisallowInterceptRequested = false;
      return true;
      bool = false;
      continue;
      closeDrawers(true);
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      return true;
      bool = true;
    }
  }
  
  public void openDrawer(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(paramInt));
    }
    openDrawer(localView);
  }
  
  public void openDrawer(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (mFirstLayout)
    {
      DrawerLayout.LayoutParams.access$002(localLayoutParams, 1.0F);
      DrawerLayout.LayoutParams.access$102(localLayoutParams, 1);
      updateChildrenImportantForAccessibility(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      DrawerLayout.LayoutParams.access$176(localLayoutParams, 2);
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        mLeftDragger.smoothSlideViewTo(paramView, 0, paramView.getTop());
      } else {
        mRightDragger.smoothSlideViewTo(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void removeDrawerListener(@NonNull DrawerLayout.DrawerListener paramDrawerListener)
  {
    if (paramDrawerListener == null) {}
    while (mListeners == null) {
      return;
    }
    mListeners.remove(paramDrawerListener);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    mDisallowInterceptRequested = paramBoolean;
    if (paramBoolean) {
      closeDrawers(true);
    }
  }
  
  public void requestLayout()
  {
    if (!mInLayout) {
      super.requestLayout();
    }
  }
  
  public void setChildInsets(Object paramObject, boolean paramBoolean)
  {
    mLastInsets = paramObject;
    mDrawStatusBarBackground = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    mDrawerElevation = paramFloat;
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (isDrawerView(localView)) {
        ViewCompat.setElevation(localView, mDrawerElevation);
      }
      i += 1;
    }
  }
  
  @Deprecated
  public void setDrawerListener(DrawerLayout.DrawerListener paramDrawerListener)
  {
    if (mListener != null) {
      removeDrawerListener(mListener);
    }
    if (paramDrawerListener != null) {
      addDrawerListener(paramDrawerListener);
    }
    mListener = paramDrawerListener;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }
  
  public void setDrawerLockMode(int paramInt1, int paramInt2)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt2, ViewCompat.getLayoutDirection(this));
    Object localObject;
    switch (paramInt2)
    {
    default: 
      if (paramInt1 != 0)
      {
        if (i == 3)
        {
          localObject = mLeftDragger;
          label67:
          ((ViewDragHelper)localObject).cancel();
        }
      }
      else {
        switch (paramInt1)
        {
        }
      }
      break;
    }
    do
    {
      do
      {
        return;
        mLockModeLeft = paramInt1;
        break;
        mLockModeRight = paramInt1;
        break;
        mLockModeStart = paramInt1;
        break;
        mLockModeEnd = paramInt1;
        break;
        localObject = mRightDragger;
        break label67;
        localObject = findDrawerWithGravity(i);
      } while (localObject == null);
      openDrawer((View)localObject);
      return;
      localObject = findDrawerWithGravity(i);
    } while (localObject == null);
    closeDrawer((View)localObject);
  }
  
  public void setDrawerLockMode(int paramInt, View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a " + "drawer with appropriate layout_gravity");
    }
    setDrawerLockMode(paramInt, getLayoutParamsgravity);
  }
  
  public void setDrawerShadow(@DrawableRes int paramInt1, int paramInt2)
  {
    setDrawerShadow(getResources().getDrawable(paramInt1), paramInt2);
  }
  
  public void setDrawerShadow(Drawable paramDrawable, int paramInt)
  {
    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
      return;
    }
    if ((paramInt & 0x800003) == 8388611) {
      mShadowStart = paramDrawable;
    }
    for (;;)
    {
      resolveShadowDrawables();
      invalidate();
      return;
      if ((paramInt & 0x800005) == 8388613)
      {
        mShadowEnd = paramDrawable;
      }
      else if ((paramInt & 0x3) == 3)
      {
        mShadowLeft = paramDrawable;
      }
      else
      {
        if ((paramInt & 0x5) != 5) {
          break;
        }
        mShadowRight = paramDrawable;
      }
    }
  }
  
  public void setDrawerTitle(int paramInt, CharSequence paramCharSequence)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      mTitleLeft = paramCharSequence;
    }
    while (paramInt != 5) {
      return;
    }
    mTitleRight = paramCharSequence;
  }
  
  void setDrawerViewOffset(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == DrawerLayout.LayoutParams.access$000(localLayoutParams)) {
      return;
    }
    DrawerLayout.LayoutParams.access$002(localLayoutParams, paramFloat);
    dispatchOnDrawerSlide(paramView, paramFloat);
  }
  
  public void setScrimColor(@ColorInt int paramInt)
  {
    mScrimColor = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = ContextCompat.getDrawable(getContext(), paramInt);; localDrawable = null)
    {
      mStatusBarBackground = localDrawable;
      invalidate();
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    mStatusBarBackground = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(@ColorInt int paramInt)
  {
    mStatusBarBackground = new ColorDrawable(paramInt);
    invalidate();
  }
  
  void updateDrawerState(int paramInt1, int paramInt2, View paramView)
  {
    paramInt1 = mLeftDragger.getViewDragState();
    int i = mRightDragger.getViewDragState();
    DrawerLayout.LayoutParams localLayoutParams;
    if ((paramInt1 == 1) || (i == 1))
    {
      paramInt1 = 1;
      if ((paramView != null) && (paramInt2 == 0))
      {
        localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (DrawerLayout.LayoutParams.access$000(localLayoutParams) != 0.0F) {
          break label145;
        }
        dispatchOnDrawerClosed(paramView);
      }
    }
    for (;;)
    {
      if (paramInt1 == mDrawerState) {
        return;
      }
      mDrawerState = paramInt1;
      if (mListeners == null) {
        return;
      }
      paramInt2 = mListeners.size() - 1;
      while (paramInt2 >= 0)
      {
        ((DrawerLayout.DrawerListener)mListeners.get(paramInt2)).onDrawerStateChanged(paramInt1);
        paramInt2 -= 1;
      }
      if ((paramInt1 == 2) || (i == 2))
      {
        paramInt1 = 2;
        break;
      }
      paramInt1 = 0;
      break;
      label145:
      if (DrawerLayout.LayoutParams.access$000(localLayoutParams) == 1.0F) {
        dispatchOnDrawerOpened(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */