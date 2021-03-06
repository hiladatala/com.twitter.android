package android.support.design.widget;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

class ValueAnimatorCompatImplHoneycombMr1
  extends ValueAnimatorCompat.Impl
{
  final ValueAnimator mValueAnimator = new ValueAnimator();
  
  public void cancel()
  {
    mValueAnimator.cancel();
  }
  
  public void end()
  {
    mValueAnimator.end();
  }
  
  public float getAnimatedFloatValue()
  {
    return ((Float)mValueAnimator.getAnimatedValue()).floatValue();
  }
  
  public float getAnimatedFraction()
  {
    return mValueAnimator.getAnimatedFraction();
  }
  
  public int getAnimatedIntValue()
  {
    return ((Integer)mValueAnimator.getAnimatedValue()).intValue();
  }
  
  public long getDuration()
  {
    return mValueAnimator.getDuration();
  }
  
  public boolean isRunning()
  {
    return mValueAnimator.isRunning();
  }
  
  public void setDuration(int paramInt)
  {
    mValueAnimator.setDuration(paramInt);
  }
  
  public void setFloatValues(float paramFloat1, float paramFloat2)
  {
    mValueAnimator.setFloatValues(new float[] { paramFloat1, paramFloat2 });
  }
  
  public void setIntValues(int paramInt1, int paramInt2)
  {
    mValueAnimator.setIntValues(new int[] { paramInt1, paramInt2 });
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    mValueAnimator.setInterpolator(paramInterpolator);
  }
  
  public void setListener(ValueAnimatorCompat.Impl.AnimatorListenerProxy paramAnimatorListenerProxy)
  {
    mValueAnimator.addListener(new ValueAnimatorCompatImplHoneycombMr1.2(this, paramAnimatorListenerProxy));
  }
  
  public void setUpdateListener(ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy paramAnimatorUpdateListenerProxy)
  {
    mValueAnimator.addUpdateListener(new ValueAnimatorCompatImplHoneycombMr1.1(this, paramAnimatorUpdateListenerProxy));
  }
  
  public void start()
  {
    mValueAnimator.start();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ValueAnimatorCompatImplHoneycombMr1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */