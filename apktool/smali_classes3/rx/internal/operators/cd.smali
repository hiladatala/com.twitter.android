.class Lrx/internal/operators/cd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lddn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lddn",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/cd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lrx/internal/operators/cd;->a:Ljava/lang/Object;

    return-object v0
.end method
