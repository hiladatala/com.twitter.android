package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class zzk<T>
  implements Comparable<zzk<T>>
{
  private final xj a;
  private final int b;
  private final String c;
  private final int d;
  private final uz e;
  private Integer f;
  private ua g;
  private boolean h;
  private boolean i;
  private boolean j;
  private long k;
  private wa l;
  private aw m;
  
  public zzk(int paramInt, String paramString, uz paramuz)
  {
    if (xj.a) {}
    for (xj localxj = new xj();; localxj = null)
    {
      a = localxj;
      h = true;
      i = false;
      j = false;
      k = 0L;
      m = null;
      b = paramInt;
      c = paramString;
      e = paramuz;
      a(new es());
      d = a(paramString);
      return;
    }
  }
  
  private static int a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      if (paramString != null)
      {
        paramString = paramString.getHost();
        if (paramString != null) {
          return paramString.hashCode();
        }
      }
    }
    return 0;
  }
  
  private byte[] a(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getKey(), paramString));
        localStringBuilder.append('=');
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getValue(), paramString));
        localStringBuilder.append('&');
      }
      paramMap = localStringBuilder.toString().getBytes(paramString);
    }
    catch (UnsupportedEncodingException paramMap)
    {
      throw new RuntimeException("Encoding not supported: " + paramString, paramMap);
    }
    return paramMap;
  }
  
  public int a(zzk<T> paramzzk)
  {
    zzk.zza localzza1 = q();
    zzk.zza localzza2 = paramzzk.q();
    if (localzza1 == localzza2) {
      return f.intValue() - f.intValue();
    }
    return localzza2.ordinal() - localzza1.ordinal();
  }
  
  protected abstract uy<T> a(pn parampn);
  
  public final zzk<?> a(int paramInt)
  {
    f = Integer.valueOf(paramInt);
    return this;
  }
  
  public zzk<?> a(aw paramaw)
  {
    m = paramaw;
    return this;
  }
  
  public zzk<?> a(ua paramua)
  {
    g = paramua;
    return this;
  }
  
  public zzk<?> a(wa paramwa)
  {
    l = paramwa;
    return this;
  }
  
  protected zzr a(zzr paramzzr)
  {
    return paramzzr;
  }
  
  public Map<String, String> a()
    throws zza
  {
    return Collections.emptyMap();
  }
  
  protected abstract void a(T paramT);
  
  public int b()
  {
    return b;
  }
  
  public void b(zzr paramzzr)
  {
    if (e != null) {
      e.a(paramzzr);
    }
  }
  
  public void b(String paramString)
  {
    if (xj.a) {
      a.a(paramString, Thread.currentThread().getId());
    }
    while (k != 0L) {
      return;
    }
    k = SystemClock.elapsedRealtime();
  }
  
  public int c()
  {
    return d;
  }
  
  void c(String paramString)
  {
    if (g != null) {
      g.b(this);
    }
    long l1;
    if (xj.a)
    {
      l1 = Thread.currentThread().getId();
      if (Looper.myLooper() != Looper.getMainLooper()) {
        new Handler(Looper.getMainLooper()).post(new ty(this, paramString, l1));
      }
    }
    do
    {
      return;
      a.a(paramString, l1);
      a.a(toString());
      return;
      l1 = SystemClock.elapsedRealtime() - k;
    } while (l1 < 3000L);
    xi.b("%d ms: %s", new Object[] { Long.valueOf(l1), toString() });
  }
  
  public String d()
  {
    return c;
  }
  
  public String e()
  {
    return d();
  }
  
  public aw f()
  {
    return m;
  }
  
  public boolean g()
  {
    return i;
  }
  
  @Deprecated
  protected Map<String, String> h()
    throws zza
  {
    return l();
  }
  
  @Deprecated
  protected String i()
  {
    return m();
  }
  
  @Deprecated
  public String j()
  {
    return n();
  }
  
  @Deprecated
  public byte[] k()
    throws zza
  {
    Map localMap = h();
    if ((localMap != null) && (localMap.size() > 0)) {
      return a(localMap, i());
    }
    return null;
  }
  
  protected Map<String, String> l()
    throws zza
  {
    return null;
  }
  
  protected String m()
  {
    return "UTF-8";
  }
  
  public String n()
  {
    return "application/x-www-form-urlencoded; charset=" + m();
  }
  
  public byte[] o()
    throws zza
  {
    Map localMap = l();
    if ((localMap != null) && (localMap.size() > 0)) {
      return a(localMap, m());
    }
    return null;
  }
  
  public final boolean p()
  {
    return h;
  }
  
  public zzk.zza q()
  {
    return zzk.zza.b;
  }
  
  public final int r()
  {
    return l.a();
  }
  
  public wa s()
  {
    return l;
  }
  
  public void t()
  {
    j = true;
  }
  
  public String toString()
  {
    String str2 = "0x" + Integer.toHexString(c());
    StringBuilder localStringBuilder = new StringBuilder();
    if (i) {}
    for (String str1 = "[X] ";; str1 = "[ ] ") {
      return str1 + d() + " " + str2 + " " + q() + " " + f;
    }
  }
  
  public boolean u()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */