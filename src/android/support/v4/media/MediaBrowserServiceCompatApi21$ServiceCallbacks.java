package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public abstract interface MediaBrowserServiceCompatApi21$ServiceCallbacks
{
  public abstract IBinder asBinder();
  
  public abstract void onConnect(String paramString, Object paramObject, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onConnectFailed()
    throws RemoteException;
  
  public abstract void onLoadChildren(String paramString, List<Parcel> paramList)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */