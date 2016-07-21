package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.qw;

@oi
public class a
{
  public boolean a(Context paramContext, Intent paramIntent, w paramw)
  {
    try
    {
      qd.e("Launching an intent: " + paramIntent.toURI());
      ar.e().a(paramContext, paramIntent);
      if (paramw != null) {
        paramw.l();
      }
      return true;
    }
    catch (ActivityNotFoundException paramContext)
    {
      qd.d(paramContext.getMessage());
    }
    return false;
  }
  
  public boolean a(Context paramContext, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, w paramw)
  {
    int i = 0;
    if (paramAdLauncherIntentInfoParcel == null)
    {
      qd.d("No intent data for launcher overlay.");
      return false;
    }
    if (i != null) {
      return a(paramContext, i, paramw);
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(c))
    {
      qd.d("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(d)) {
      localIntent.setDataAndType(Uri.parse(c), d);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(e)) {
        localIntent.setPackage(e);
      }
      if (TextUtils.isEmpty(f)) {
        break label199;
      }
      arrayOfString = f.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      qd.d("Could not parse component name from open GMSG: " + f);
      return false;
      localIntent.setData(Uri.parse(c));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    label199:
    paramAdLauncherIntentInfoParcel = g;
    if (!TextUtils.isEmpty(paramAdLauncherIntentInfoParcel)) {}
    try
    {
      int j = Integer.parseInt(paramAdLauncherIntentInfoParcel);
      i = j;
    }
    catch (NumberFormatException paramAdLauncherIntentInfoParcel)
    {
      for (;;)
      {
        qd.d("Could not parse intent flags.");
      }
    }
    localIntent.addFlags(i);
    return a(paramContext, localIntent, paramw);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */