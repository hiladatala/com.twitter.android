package android.support.v4.text;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Locale;

public final class TextUtilsCompat
{
  private static String ARAB_SCRIPT_SUBTAG;
  private static String HEBR_SCRIPT_SUBTAG;
  private static final TextUtilsCompat.TextUtilsCompatImpl IMPL;
  public static final Locale ROOT;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17) {}
    for (IMPL = new TextUtilsCompat.TextUtilsCompatJellybeanMr1Impl(null);; IMPL = new TextUtilsCompat.TextUtilsCompatImpl(null))
    {
      ROOT = new Locale("", "");
      ARAB_SCRIPT_SUBTAG = "Arab";
      HEBR_SCRIPT_SUBTAG = "Hebr";
      return;
    }
  }
  
  public static int getLayoutDirectionFromLocale(@Nullable Locale paramLocale)
  {
    return IMPL.getLayoutDirectionFromLocale(paramLocale);
  }
  
  @NonNull
  public static String htmlEncode(@NonNull String paramString)
  {
    return IMPL.htmlEncode(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.TextUtilsCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */