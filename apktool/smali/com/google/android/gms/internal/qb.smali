.class public abstract Lcom/google/android/gms/internal/qb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/rj",
        "<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/qc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qc;-><init>(Lcom/google/android/gms/internal/qb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qb;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/qc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qc;-><init>(Lcom/google/android/gms/internal/qb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->a:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/qb;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/qb;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qb;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qb;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qb;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/qb;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qq;->a(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/sm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/qq;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/sm;

    move-result-object v0

    goto :goto_0
.end method
