.class final Lcom/twitter/android/ft;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/android/Flow$PasswordEntryStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/android/Flow$PasswordEntryStep;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/twitter/android/Flow$PasswordEntryStep;

    invoke-direct {v0, p1}, Lcom/twitter/android/Flow$PasswordEntryStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/android/Flow$PasswordEntryStep;
    .locals 1

    .prologue
    .line 375
    new-array v0, p1, [Lcom/twitter/android/Flow$PasswordEntryStep;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/twitter/android/ft;->a(Landroid/os/Parcel;)Lcom/twitter/android/Flow$PasswordEntryStep;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/twitter/android/ft;->a(I)[Lcom/twitter/android/Flow$PasswordEntryStep;

    move-result-object v0

    return-object v0
.end method
