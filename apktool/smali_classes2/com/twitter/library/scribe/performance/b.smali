.class final Lcom/twitter/library/scribe/performance/b;
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
        "Lcom/twitter/library/scribe/performance/PerformanceScribeLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/performance/PerformanceScribeLog;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/library/scribe/performance/PerformanceScribeLog;

    invoke-direct {v0, p1}, Lcom/twitter/library/scribe/performance/PerformanceScribeLog;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/scribe/performance/PerformanceScribeLog;
    .locals 1

    .prologue
    .line 34
    new-array v0, p1, [Lcom/twitter/library/scribe/performance/PerformanceScribeLog;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/performance/b;->a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/performance/PerformanceScribeLog;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/performance/b;->a(I)[Lcom/twitter/library/scribe/performance/PerformanceScribeLog;

    move-result-object v0

    return-object v0
.end method
