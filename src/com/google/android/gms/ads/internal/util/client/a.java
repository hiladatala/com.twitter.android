package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.d;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.n;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.vu;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.StringTokenizer;

@oi
public class a
{
  public static final Handler a = new Handler(Looper.getMainLooper());
  private static final String b = AdView.class.getName();
  private static final String c = i.class.getName();
  private static final String d = PublisherAdView.class.getName();
  private static final String e = d.class.getName();
  private static final String f = SearchAdView.class.getName();
  private static final String g = com.google.android.gms.ads.b.class.getName();
  
  private void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString, int paramInt1, int paramInt2)
  {
    if (paramViewGroup.getChildCount() != 0) {
      return;
    }
    Context localContext = paramViewGroup.getContext();
    TextView localTextView = new TextView(localContext);
    localTextView.setGravity(17);
    localTextView.setText(paramString);
    localTextView.setTextColor(paramInt1);
    localTextView.setBackgroundColor(paramInt2);
    paramString = new FrameLayout(localContext);
    paramString.setBackgroundColor(paramInt1);
    paramInt1 = a(localContext, 3);
    paramString.addView(localTextView, new FrameLayout.LayoutParams(g - paramInt1, d - paramInt1, 17));
    paramViewGroup.addView(paramString, g, d);
  }
  
  public int a(Context paramContext, int paramInt)
  {
    return a(paramContext.getResources().getDisplayMetrics(), paramInt);
  }
  
  public int a(DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, paramDisplayMetrics);
  }
  
  public String a(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    if (paramContext == null) {}
    for (paramContext = null;; paramContext = Settings.Secure.getString(paramContext, "android_id"))
    {
      if ((paramContext == null) || (a())) {
        paramContext = "emulator";
      }
      return a(paramContext);
    }
  }
  
  public String a(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramString.getBytes());
        localObject = String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject).digest()) });
        return (String)localObject;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  String a(String paramString1, String paramString2, int paramInt)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString1, paramString2);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramInt - 1;
    paramString2 = paramString1;
    if (paramInt > 0)
    {
      paramString2 = paramString1;
      if (localStringTokenizer.hasMoreElements())
      {
        localStringBuilder.append(localStringTokenizer.nextToken());
        paramInt = i;
        while ((paramInt > 0) && (localStringTokenizer.hasMoreElements()))
        {
          localStringBuilder.append(".").append(localStringTokenizer.nextToken());
          paramInt -= 1;
        }
        paramString2 = localStringBuilder.toString();
      }
    }
    return paramString2;
  }
  
  @Nullable
  public String a(StackTraceElement[] paramArrayOfStackTraceElement, String paramString)
  {
    int i = 0;
    if (i + 1 < paramArrayOfStackTraceElement.length)
    {
      StackTraceElement localStackTraceElement = paramArrayOfStackTraceElement[i];
      String str = localStackTraceElement.getClassName();
      if ((!"loadAd".equalsIgnoreCase(localStackTraceElement.getMethodName())) || ((!b.equalsIgnoreCase(str)) && (!c.equalsIgnoreCase(str)) && (!d.equalsIgnoreCase(str)) && (!e.equalsIgnoreCase(str)) && (!f.equalsIgnoreCase(str)) && (!g.equalsIgnoreCase(str)))) {}
    }
    for (paramArrayOfStackTraceElement = paramArrayOfStackTraceElement[(i + 1)].getClassName();; paramArrayOfStackTraceElement = null)
    {
      if (paramString != null)
      {
        paramString = a(paramString, ".", 3);
        if ((paramArrayOfStackTraceElement != null) && (!paramArrayOfStackTraceElement.contains(paramString)))
        {
          return paramArrayOfStackTraceElement;
          i += 1;
          break;
        }
      }
      return null;
    }
  }
  
  public void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString)
  {
    a(paramViewGroup, paramAdSizeParcel, paramString, -16777216, -1);
  }
  
  public void a(ViewGroup paramViewGroup, AdSizeParcel paramAdSizeParcel, String paramString1, String paramString2)
  {
    b.d(paramString2);
    a(paramViewGroup, paramAdSizeParcel, paramString1, -65536, -16777216);
  }
  
  public boolean a()
  {
    return Build.DEVICE.startsWith("generic");
  }
  
  public int b(Context paramContext, int paramInt)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    return b(localDisplayMetrics, paramInt);
  }
  
  public int b(DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    return Math.round(paramInt / density);
  }
  
  public boolean b()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public boolean b(Context paramContext)
  {
    return n.isGooglePlayServicesAvailable(paramContext) == 0;
  }
  
  public boolean c(Context paramContext)
  {
    if (getResourcesgetConfigurationorientation != 2) {}
    do
    {
      return false;
      paramContext = paramContext.getResources().getDisplayMetrics();
    } while ((int)(heightPixels / density) >= 600);
    return true;
  }
  
  public boolean d(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int j;
    int i;
    if (vu.e())
    {
      paramContext.getRealMetrics(localDisplayMetrics);
      j = heightPixels;
      i = widthPixels;
      paramContext.getMetrics(localDisplayMetrics);
      int k = heightPixels;
      int m = widthPixels;
      if ((k != j) || (m != i)) {
        break label146;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      return bool;
      label146:
      try
      {
        j = ((Integer)Display.class.getMethod("getRawHeight", new Class[0]).invoke(paramContext, new Object[0])).intValue();
        i = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(paramContext, new Object[0])).intValue();
      }
      catch (Exception paramContext) {}
    }
    return false;
  }
  
  public int e(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
    if (i > 0) {
      return paramContext.getResources().getDimensionPixelSize(i);
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.util.client.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */