.class public Ltv/periscope/android/api/EndReplayViewedRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public broadcastId:Ljava/lang/String;
    .annotation runtime Lop;
        a = "broadcast_id"
    .end annotation
.end field

.field public numHearts:I
    .annotation runtime Lop;
        a = "n_hearts"
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lop;
        a = "session"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 9
    return-void
.end method
