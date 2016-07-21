package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class ay
  extends Binder
  implements ax
{
  public ay()
  {
    attachInterface(this, "com.google.android.gms.measurement.internal.IMeasurementService");
  }
  
  public static ax a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
    if ((localIInterface != null) && ((localIInterface instanceof ax))) {
      return (ax)localIInterface;
    }
    return new az(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject2 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.measurement.internal.IMeasurementService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramParcel1.readInt() != 0) {}
      for (localObject1 = EventParcel.CREATOR.a(paramParcel1);; localObject1 = null)
      {
        if (paramParcel1.readInt() != 0) {
          localObject2 = AppMetadata.CREATOR.a(paramParcel1);
        }
        a((EventParcel)localObject1, (AppMetadata)localObject2);
        paramParcel2.writeNoException();
        return true;
      }
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramParcel1.readInt() != 0) {}
      for (localObject1 = UserAttributeParcel.CREATOR.a(paramParcel1);; localObject1 = null)
      {
        localObject2 = localObject3;
        if (paramParcel1.readInt() != 0) {
          localObject2 = AppMetadata.CREATOR.a(paramParcel1);
        }
        a((UserAttributeParcel)localObject1, (AppMetadata)localObject2);
        paramParcel2.writeNoException();
        return true;
      }
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramParcel1.readInt() != 0) {
        localObject1 = AppMetadata.CREATOR.a(paramParcel1);
      }
      a((AppMetadata)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
      localObject1 = localObject4;
      if (paramParcel1.readInt() != 0) {
        localObject1 = EventParcel.CREATOR.a(paramParcel1);
      }
      a((EventParcel)localObject1, paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
      localObject1 = localObject5;
      if (paramParcel1.readInt() != 0) {
        localObject1 = AppMetadata.CREATOR.a(paramParcel1);
      }
      b((AppMetadata)localObject1);
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
    localObject1 = localObject6;
    if (paramParcel1.readInt() != 0) {
      localObject1 = AppMetadata.CREATOR.a(paramParcel1);
    }
    if (paramParcel1.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramParcel1 = a((AppMetadata)localObject1, bool);
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */