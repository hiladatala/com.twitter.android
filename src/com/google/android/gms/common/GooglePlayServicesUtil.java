package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.TypedValue;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.vm;
import com.google.android.gms.internal.vu;
import ib;
import ie;
import java.util.concurrent.atomic.AtomicBoolean;

public final class GooglePlayServicesUtil
  extends n
{
  public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
  @Deprecated
  public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
  @Deprecated
  public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = n.GOOGLE_PLAY_SERVICES_VERSION_CODE;
  public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
  
  @Deprecated
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return getErrorDialog(paramInt1, paramActivity, paramInt2, null);
  }
  
  @Deprecated
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return zza(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  @Deprecated
  public static PendingIntent getErrorPendingIntent(int paramInt1, Context paramContext, int paramInt2)
  {
    return n.getErrorPendingIntent(paramInt1, paramContext, paramInt2);
  }
  
  @Deprecated
  public static String getErrorString(int paramInt)
  {
    return n.getErrorString(paramInt);
  }
  
  @Deprecated
  public static String getOpenSourceSoftwareLicenseInfo(Context paramContext)
  {
    return n.getOpenSourceSoftwareLicenseInfo(paramContext);
  }
  
  public static Context getRemoteContext(Context paramContext)
  {
    return n.getRemoteContext(paramContext);
  }
  
  public static Resources getRemoteResource(Context paramContext)
  {
    return n.getRemoteResource(paramContext);
  }
  
  @Deprecated
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    return n.isGooglePlayServicesAvailable(paramContext);
  }
  
  @Deprecated
  public static boolean isUserRecoverableError(int paramInt)
  {
    return n.isUserRecoverableError(paramInt);
  }
  
  @Deprecated
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, paramInt2, null);
  }
  
  @Deprecated
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramFragment = zza(paramInt1, paramActivity, paramFragment, paramInt2, paramOnCancelListener);
    if (paramFragment == null) {
      return false;
    }
    zza(paramActivity, paramOnCancelListener, "GooglePlayServicesErrorDialog", paramFragment);
    return true;
  }
  
  @Deprecated
  public static void showErrorNotification(int paramInt, Context paramContext)
  {
    int i = paramInt;
    if (vm.a(paramContext))
    {
      i = paramInt;
      if (paramInt == 2) {
        i = 42;
      }
    }
    if ((zzd(paramContext, i)) || (zze(paramContext, i)))
    {
      zzam(paramContext);
      return;
    }
    zza(i, paramContext);
  }
  
  @TargetApi(14)
  private static Dialog zza(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject2 = null;
    if (paramInt1 == 0) {
      return null;
    }
    int i = paramInt1;
    if (vm.a(paramActivity))
    {
      i = paramInt1;
      if (paramInt1 == 2) {
        i = 42;
      }
    }
    paramInt1 = i;
    if (zzd(paramActivity, i)) {
      paramInt1 = 18;
    }
    Object localObject1 = localObject2;
    if (vu.c())
    {
      TypedValue localTypedValue = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, localTypedValue, true);
      localObject1 = localObject2;
      if ("Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(resourceId))) {
        localObject1 = new AlertDialog.Builder(paramActivity, 5);
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new AlertDialog.Builder(paramActivity);
    }
    ((AlertDialog.Builder)localObject2).setMessage(y.a(paramActivity, paramInt1, zzao(paramActivity)));
    if (paramOnCancelListener != null) {
      ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
    }
    paramOnCancelListener = b.a().a(paramActivity, paramInt1, "d");
    if (paramFragment == null) {}
    for (paramFragment = new z(paramActivity, paramOnCancelListener, paramInt2);; paramFragment = new z(paramFragment, paramOnCancelListener, paramInt2))
    {
      paramOnCancelListener = y.b(paramActivity, paramInt1);
      if (paramOnCancelListener != null) {
        ((AlertDialog.Builder)localObject2).setPositiveButton(paramOnCancelListener, paramFragment);
      }
      paramActivity = y.a(paramActivity, paramInt1);
      if (paramActivity != null) {
        ((AlertDialog.Builder)localObject2).setTitle(paramActivity);
      }
      return ((AlertDialog.Builder)localObject2).create();
    }
  }
  
  @TargetApi(21)
  private static void zza(int paramInt, Context paramContext)
  {
    zza(paramInt, paramContext, null);
  }
  
  @TargetApi(21)
  private static void zza(int paramInt, Context paramContext, String paramString)
  {
    Object localObject2 = paramContext.getResources();
    Object localObject3 = zzao(paramContext);
    String str = y.a(paramContext, paramInt);
    Object localObject1 = str;
    if (str == null) {
      localObject1 = ((Resources)localObject2).getString(ie.common_google_play_services_notification_ticker);
    }
    str = y.a(paramContext, paramInt, (String)localObject3);
    localObject3 = b.a().a(paramContext, paramInt, 0, "n");
    if (vm.a(paramContext))
    {
      bm.a(vu.d());
      localObject1 = new Notification.Builder(paramContext).setSmallIcon(ib.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText((String)localObject1 + " " + str)).addAction(ib.common_full_open_on_phone, ((Resources)localObject2).getString(ie.common_open_on_phone), (PendingIntent)localObject3).build();
      if (!zzbw(paramInt)) {
        break label366;
      }
      zzafQ.set(false);
    }
    label366:
    for (paramInt = 10436;; paramInt = 39789)
    {
      paramContext = (NotificationManager)paramContext.getSystemService("notification");
      if (paramString == null) {
        break label373;
      }
      paramContext.notify(paramString, paramInt, (Notification)localObject1);
      return;
      localObject2 = ((Resources)localObject2).getString(ie.common_google_play_services_notification_ticker);
      if (vu.a())
      {
        localObject1 = new Notification.Builder(paramContext).setSmallIcon(17301642).setContentTitle((CharSequence)localObject1).setContentText(str).setContentIntent((PendingIntent)localObject3).setTicker((CharSequence)localObject2).setAutoCancel(true);
        if (vu.h()) {
          ((Notification.Builder)localObject1).setLocalOnly(true);
        }
        if (vu.d()) {
          ((Notification.Builder)localObject1).setStyle(new Notification.BigTextStyle().bigText(str));
        }
        for (localObject1 = ((Notification.Builder)localObject1).build();; localObject1 = ((Notification.Builder)localObject1).getNotification())
        {
          if (Build.VERSION.SDK_INT == 19) {
            extras.putBoolean("android.support.localOnly", true);
          }
          break;
        }
      }
      localObject1 = new NotificationCompat.Builder(paramContext).setSmallIcon(17301642).setTicker((CharSequence)localObject2).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent((PendingIntent)localObject3).setContentTitle((CharSequence)localObject1).setContentText(str).build();
      break;
    }
    label373:
    paramContext.notify(paramInt, (Notification)localObject1);
  }
  
  @TargetApi(11)
  public static void zza(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener, String paramString, @NonNull Dialog paramDialog)
  {
    try
    {
      bool = paramActivity instanceof FragmentActivity;
      if (bool)
      {
        paramActivity = ((FragmentActivity)paramActivity).getSupportFragmentManager();
        SupportErrorDialogFragment.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
        return;
      }
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      for (;;)
      {
        boolean bool = false;
      }
      if (vu.a())
      {
        paramActivity = paramActivity.getFragmentManager();
        a.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
        return;
      }
      throw new RuntimeException("This Activity does not support Fragments.");
    }
  }
  
  private static void zzam(Context paramContext)
  {
    paramContext = new c(paramContext);
    paramContext.sendMessageDelayed(paramContext.obtainMessage(1), 120000L);
  }
  
  @Deprecated
  public static Intent zzbv(int paramInt)
  {
    return n.zzbv(paramInt);
  }
  
  @Deprecated
  public static boolean zzd(Context paramContext, int paramInt)
  {
    return n.zzd(paramContext, paramInt);
  }
  
  @Deprecated
  public static boolean zze(Context paramContext, int paramInt)
  {
    return n.zze(paramContext, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */