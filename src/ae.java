import java.io.IOException;
import org.json.JSONObject;

class ae
{
  public ad a(JSONObject paramJSONObject)
    throws IOException
  {
    if (paramJSONObject == null) {
      return null;
    }
    String str1 = paramJSONObject.optString("url", null);
    String str2 = paramJSONObject.optString("version_string", null);
    String str3 = paramJSONObject.optString("build_version", null);
    return new ad(str1, str2, paramJSONObject.optString("display_version", null), str3, paramJSONObject.optString("identifier", null), paramJSONObject.optString("instance_identifier", null));
  }
}

/* Location:
 * Qualified Name:     ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */