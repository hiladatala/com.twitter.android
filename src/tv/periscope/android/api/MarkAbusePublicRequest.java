package tv.periscope.android.api;

import op;

public class MarkAbusePublicRequest
  extends PublicRequest
{
  @op(a="broadcast_id")
  public String broadcastId;
  @op(a="session")
  public String session;
}

/* Location:
 * Qualified Name:     tv.periscope.android.api.MarkAbusePublicRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */