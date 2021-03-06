package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ca;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.ly;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.qz;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.ta;
import com.google.android.gms.internal.tg;
import java.util.Collections;
import java.util.Map;

@oi
public class zzd
  extends ly
  implements z
{
  static final int a = Color.argb(0, 0, 0, 0);
  AdOverlayInfoParcel b;
  sz c;
  l d;
  zzo e;
  boolean f = false;
  FrameLayout g;
  WebChromeClient.CustomViewCallback h;
  boolean i = false;
  boolean j = false;
  RelativeLayout k;
  boolean l = false;
  int m = 0;
  t n;
  private final Activity o;
  private boolean p;
  private boolean q = false;
  private boolean r = true;
  
  public zzd(Activity paramActivity)
  {
    o = paramActivity;
    n = new x();
  }
  
  public void a()
  {
    m = 2;
    o.finish();
  }
  
  public void a(int paramInt)
  {
    o.setRequestedOrientation(paramInt);
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    i = bool;
    try
    {
      b = AdOverlayInfoParcel.a(o.getIntent());
      if (b != null) {
        break label71;
      }
      throw new zzd.zza("Could not get info for ad overlay.");
    }
    catch (zzd.zza paramBundle)
    {
      qd.d(paramBundle.getMessage());
      m = 3;
      o.finish();
    }
    return;
    label71:
    if (b.n.d > 7500000) {
      m = 3;
    }
    if (o.getIntent() != null) {
      r = o.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
    }
    if (b.q != null)
    {
      j = b.q.b;
      label142:
      if ((((Boolean)cj.aE.c()).booleanValue()) && (j) && (b.q.d != null)) {
        new m(this, null).g();
      }
      if (paramBundle == null)
      {
        if ((b.d != null) && (r)) {
          b.d.f_();
        }
        if ((b.l != 1) && (b.c != null)) {
          b.c.e();
        }
      }
      k = new k(o, b.p);
      k.setId(1000);
      switch (b.l)
      {
      }
    }
    for (;;)
    {
      throw new zzd.zza("Could not determine ad overlay type.");
      j = false;
      break label142;
      b(false);
      return;
      d = new l(b.e);
      b(false);
      return;
      b(true);
      return;
      if (i)
      {
        m = 3;
        o.finish();
        return;
      }
      if (ar.b().a(o, b.b, b.j)) {
        break;
      }
      m = 3;
      o.finish();
      return;
    }
  }
  
  public void a(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    g = new FrameLayout(o);
    g.setBackgroundColor(-16777216);
    g.addView(paramView, -1, -1);
    o.setContentView(g);
    l();
    h = paramCustomViewCallback;
    f = true;
  }
  
  public void a(sz paramsz, Map<String, String> paramMap)
  {
    n.a(paramsz, paramMap);
  }
  
  public void a(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i1 = 50;
      e = new zzo(o, i1, this);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label88;
      }
    }
    label88:
    for (int i1 = 11;; i1 = 9)
    {
      localLayoutParams.addRule(i1);
      e.a(paramBoolean, b.h);
      k.addView(e, localLayoutParams);
      return;
      i1 = 32;
      break;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (e != null) {
      e.a(paramBoolean1, paramBoolean2);
    }
  }
  
  public void b()
  {
    if ((b != null) && (f)) {
      a(b.k);
    }
    if (g != null)
    {
      o.setContentView(k);
      l();
      g.removeAllViews();
      g = null;
    }
    if (h != null)
    {
      h.onCustomViewHidden();
      h = null;
    }
    f = false;
  }
  
  protected void b(int paramInt)
  {
    c.a(paramInt);
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", i);
  }
  
  protected void b(boolean paramBoolean)
    throws zzd.zza
  {
    if (!p) {
      o.requestWindowFeature(1);
    }
    Object localObject = o.getWindow();
    if (localObject == null) {
      throw new zzd.zza("Invalid activity, no window available.");
    }
    if ((!j) || ((b.q != null) && (b.q.c))) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    boolean bool2 = b.e.l().b();
    l = false;
    boolean bool1;
    if (bool2)
    {
      if (b.k != ar.g().a()) {
        break label590;
      }
      if (o.getResources().getConfiguration().orientation == 1)
      {
        bool1 = true;
        l = bool1;
      }
    }
    else
    {
      label147:
      qd.a("Delay onShow to next orientation change: " + l);
      a(b.k);
      if (ar.g().a((Window)localObject)) {
        qd.a("Hardware acceleration on the AdActivity window enabled.");
      }
      if (j) {
        break label638;
      }
      k.setBackgroundColor(-16777216);
      label217:
      o.setContentView(k);
      l();
      if (!paramBoolean) {
        break label705;
      }
      c = ar.f().a(o, b.e.k(), true, bool2, null, b.n, null, b.e.h());
      c.l().a(null, null, b.f, b.j, true, b.o, null, b.e.l().a(), null);
      c.l().a(new j(this));
      if (b.m == null) {
        break label651;
      }
      c.loadUrl(b.m);
      label384:
      if (b.e != null) {
        b.e.b(this);
      }
      label407:
      c.a(this);
      localObject = c.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(c.b());
      }
      if (j) {
        c.setBackgroundColor(a);
      }
      k.addView(c.b(), -1, -1);
      if ((!paramBoolean) && (!l)) {
        p();
      }
      a(bool2);
      if (c.m()) {
        a(bool2, true);
      }
      localObject = c.h();
      if (localObject == null) {
        break label732;
      }
    }
    label590:
    label638:
    label651:
    label705:
    label732:
    for (localObject = c;; localObject = null)
    {
      if (localObject == null) {
        break label738;
      }
      n = ((u)localObject).a(o, c, k);
      return;
      bool1 = false;
      break;
      if (b.k != ar.g().b()) {
        break label147;
      }
      if (o.getResources().getConfiguration().orientation == 2) {}
      for (bool1 = true;; bool1 = false)
      {
        l = bool1;
        break;
      }
      k.setBackgroundColor(a);
      break label217;
      if (b.i != null)
      {
        c.loadDataWithBaseURL(b.g, b.i, "text/html", "UTF-8", null);
        break label384;
      }
      throw new zzd.zza("No URL or HTML to display in ad overlay.");
      c = b.e;
      c.a(o);
      break label407;
    }
    label738:
    qd.d("Appstreaming controller is null.");
  }
  
  public void c()
  {
    m = 1;
    o.finish();
  }
  
  public void d()
  {
    m = 0;
  }
  
  public boolean e()
  {
    boolean bool1 = true;
    boolean bool2 = true;
    m = 0;
    if (c == null) {
      return bool2;
    }
    if ((c.t()) && (n.d())) {}
    for (;;)
    {
      bool2 = bool1;
      if (bool1) {
        break;
      }
      c.a("onbackblocked", Collections.emptyMap());
      return bool1;
      bool1 = false;
    }
  }
  
  public void f() {}
  
  public void g() {}
  
  public void h()
  {
    if ((b != null) && (b.l == 4))
    {
      if (i)
      {
        m = 3;
        o.finish();
      }
    }
    else
    {
      if (b.d != null) {
        b.d.h_();
      }
      if ((c == null) || (c.r())) {
        break label107;
      }
      ar.g().b(c);
    }
    for (;;)
    {
      n.b();
      return;
      i = true;
      break;
      label107:
      qd.d("The webview does not exit. Ignoring action.");
    }
  }
  
  public void i()
  {
    n.a();
    b();
    if (b.d != null) {
      b.d.g_();
    }
    if ((c != null) && ((!o.isFinishing()) || (d == null))) {
      ar.g().a(c);
    }
    n();
  }
  
  public void j()
  {
    n();
  }
  
  public void k()
  {
    if (c != null) {
      k.removeView(c.b());
    }
    n();
  }
  
  public void l()
  {
    p = true;
  }
  
  public void m()
  {
    k.removeView(e);
    a(true);
  }
  
  protected void n()
  {
    if ((!o.isFinishing()) || (q)) {
      return;
    }
    q = true;
    if (c != null)
    {
      b(m);
      k.removeView(c.b());
      if (d == null) {
        break label169;
      }
      c.a(d.d);
      c.a(false);
      d.c.addView(c.b(), d.a, d.b);
      d = null;
    }
    for (;;)
    {
      c = null;
      if ((b != null) && (b.d != null)) {
        b.d.e_();
      }
      n.c();
      return;
      label169:
      if (o.getApplicationContext() != null) {
        c.a(o.getApplicationContext());
      }
    }
  }
  
  public void o()
  {
    if (l)
    {
      l = false;
      p();
    }
  }
  
  protected void p()
  {
    c.d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */