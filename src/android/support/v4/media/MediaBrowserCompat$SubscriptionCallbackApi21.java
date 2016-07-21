package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

class MediaBrowserCompat$SubscriptionCallbackApi21
  extends MediaBrowserCompat.SubscriptionCallback
{
  private Bundle mOptions;
  MediaBrowserCompat.SubscriptionCallback mSubscriptionCallback;
  private final Object mSubscriptionCallbackObj;
  
  public MediaBrowserCompat$SubscriptionCallbackApi21(MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback, Bundle paramBundle)
  {
    mSubscriptionCallback = paramSubscriptionCallback;
    mOptions = paramBundle;
    mSubscriptionCallbackObj = MediaBrowserCompatApi21.createSubscriptionCallback(new MediaBrowserCompat.SubscriptionCallbackApi21.StubApi21(this, null));
  }
  
  public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowserCompat.MediaItem> paramList)
  {
    mSubscriptionCallback.onChildrenLoaded(paramString, paramList);
  }
  
  public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowserCompat.MediaItem> paramList, @NonNull Bundle paramBundle)
  {
    mSubscriptionCallback.onChildrenLoaded(paramString, paramList, paramBundle);
  }
  
  public void onError(@NonNull String paramString)
  {
    mSubscriptionCallback.onError(paramString);
  }
  
  public void onError(@NonNull String paramString, @NonNull Bundle paramBundle)
  {
    mSubscriptionCallback.onError(paramString, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.SubscriptionCallbackApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */