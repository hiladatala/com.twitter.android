.class public Lan;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lan;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lan;->b:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lan;->c:J

    .line 27
    return-void
.end method
