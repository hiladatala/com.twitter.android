.class public Lcom/google/android/gms/measurement/internal/bx;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/measurement/internal/c;

.field private static volatile b:Lcom/google/android/gms/measurement/internal/bx;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/measurement/internal/aj;

.field private final e:Lcom/google/android/gms/measurement/internal/bn;

.field private final f:Lcom/google/android/gms/measurement/internal/bc;

.field private final g:Lcom/google/android/gms/measurement/internal/bt;

.field private final h:Lcom/google/android/gms/measurement/internal/u;

.field private final i:Lcom/google/android/gms/measurement/internal/bs;

.field private final j:Lcom/google/android/gms/measurement/a;

.field private final k:Lcom/google/android/gms/measurement/internal/ag;

.field private final l:Lcom/google/android/gms/measurement/internal/ak;

.field private final m:Lcom/google/android/gms/measurement/internal/bf;

.field private final n:Lcom/google/android/gms/internal/vj;

.field private final o:Lcom/google/android/gms/measurement/internal/i;

.field private final p:Lcom/google/android/gms/measurement/internal/aq;

.field private final q:Lcom/google/android/gms/measurement/internal/d;

.field private final r:Lcom/google/android/gms/measurement/internal/ba;

.field private final s:Lcom/google/android/gms/measurement/internal/bk;

.field private final t:Lcom/google/android/gms/measurement/internal/ad;

.field private final u:Lcom/google/android/gms/measurement/internal/ai;

.field private final v:Z

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/c;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->l(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/internal/vj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->n:Lcom/google/android/gms/internal/vj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->d:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->b(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->e:Lcom/google/android/gms/measurement/internal/bn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->c(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->x()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "App measurement is starting up, version"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/aj;->M()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->x()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "To enable debug logging run: adb shell setprop log.tag.GMPM VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Debug logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->i(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->k:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->n(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aq;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->p:Lcom/google/android/gms/measurement/internal/aq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->o(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ba;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->r:Lcom/google/android/gms/measurement/internal/ba;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->j(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->l:Lcom/google/android/gms/measurement/internal/ak;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->r(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ai;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->u:Lcom/google/android/gms/measurement/internal/ai;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->k(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bf;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->m:Lcom/google/android/gms/measurement/internal/bf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->m(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->o:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->h(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->q:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->q(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->t:Lcom/google/android/gms/measurement/internal/ad;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->p(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->s:Lcom/google/android/gms/measurement/internal/bk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->g(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->j:Lcom/google/android/gms/measurement/a;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->e(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->h:Lcom/google/android/gms/measurement/internal/u;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->f(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bs;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->i:Lcom/google/android/gms/measurement/internal/bs;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/c;->d(Lcom/google/android/gms/measurement/internal/bx;)Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bt;->H()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/bx;->y:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/bx;->z:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/bx;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/measurement/internal/bx;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bx;->v:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->d:Lcom/google/android/gms/measurement/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->l()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    new-instance v1, Lcom/google/android/gms/measurement/internal/by;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/by;-><init>(Lcom/google/android/gms/measurement/internal/bx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bt;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Not tracking deep linking pre-ICS"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private D()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->E()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->u()Lcom/google/android/gms/measurement/internal/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bk;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->v()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->G()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->u()Lcom/google/android/gms/measurement/internal/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bk;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->v()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bf;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->u()Lcom/google/android/gms/measurement/internal/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bk;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->v()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/bn;->e:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bq;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/aj;->X()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ag;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->u()Lcom/google/android/gms/measurement/internal/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bk;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->v()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ad;->a(J)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Upload scheduled in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->v()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/ad;->a(J)V

    goto/16 :goto_0
.end method

.method private G()J
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/aj;->aa()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/aj;->Y()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/bn;->c:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/bq;->a()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/bn;->d:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/bq;->a()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/ak;->A()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/ak;->B()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sub-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v0, v10

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v0, v6

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v2, v10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v6

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ag;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    add-long v2, v0, v4

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->ac()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v4, v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->ab()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/bx;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/bx;->b:Lcom/google/android/gms/measurement/internal/bx;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/internal/bx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/bx;->b:Lcom/google/android/gms/measurement/internal/bx;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/bx;->a:Lcom/google/android/gms/measurement/internal/c;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/measurement/internal/bx;->a:Lcom/google/android/gms/measurement/internal/c;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->a()Lcom/google/android/gms/measurement/internal/bx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/bx;->b:Lcom/google/android/gms/measurement/internal/bx;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/bx;->b:Lcom/google/android/gms/measurement/internal/bx;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/Throwable;[B)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bx;->x:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/bx;->x:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->c:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->d:Lcom/google/android/gms/measurement/internal/bq;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ak;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->B()V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v1

    const-string/jumbo v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bn;->d:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->e:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 4

    const-string/jumbo v0, "_err"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "_err"

    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/bx;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/bx;->a(ILjava/lang/Throwable;[B)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/bx;Ljava/lang/String;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/lang/String;ILjava/lang/Throwable;[B)V

    return-void
.end method

.method private a(Lcom/google/android/gms/measurement/internal/ck;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Throwable;[B)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v5, 0x130

    const/4 v1, 0x1

    const/16 v4, 0x194

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v5, :cond_4

    :cond_1
    if-nez p3, :cond_4

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    if-ne p2, v4, :cond_9

    :cond_2
    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/wo;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    :goto_1
    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->f(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/b;)V

    if-ne p2, v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Config not found. Using empty config"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->B()V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto :goto_1

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0

    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/bn;->d:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_a

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->e:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->x:Ljava/util/List;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/cb;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/measurement/internal/cb;-><init>(Lcom/google/android/gms/measurement/internal/bx;Lcom/google/android/gms/measurement/internal/by;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v4}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/am;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/cb;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/internal/wv;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ws;

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v2

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/internal/wv;

    iget-object v6, v0, Lcom/google/android/gms/internal/wv;->o:Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ws;

    iget-object v0, v0, Lcom/google/android/gms/internal/ws;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/bs;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v6, "Dropping blacklisted raw event"

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ws;

    iget-object v0, v0, Lcom/google/android/gms/internal/ws;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v6, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    add-int/lit8 v2, v1, 0x1

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ws;

    aput-object v0, v6, v1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ws;

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    :cond_2
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/internal/wv;

    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->o:Ljava/lang/String;

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/internal/wv;

    iget-object v1, v1, Lcom/google/android/gms/internal/wv;->c:[Lcom/google/android/gms/internal/wx;

    iget-object v2, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/wx;[Lcom/google/android/gms/internal/ws;)[Lcom/google/android/gms/internal/wr;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->A:[Lcom/google/android/gms/internal/wr;

    iget-object v0, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->e:Ljava/lang/Long;

    iget-object v0, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->f:Ljava/lang/Long;

    const/4 v0, 0x1

    :goto_2
    iget-object v1, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, v5, Lcom/google/android/gms/internal/wv;->b:[Lcom/google/android/gms/internal/ws;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v6, v5, Lcom/google/android/gms/internal/wv;->e:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    iput-object v2, v5, Lcom/google/android/gms/internal/wv;->e:Ljava/lang/Long;

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v6, v5, Lcom/google/android/gms/internal/wv;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/ws;->c:Ljava/lang/Long;

    iput-object v1, v5, Lcom/google/android/gms/internal/wv;->f:Ljava/lang/Long;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/internal/wv;

    iget-object v6, v0, Lcom/google/android/gms/internal/wv;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Bundling raw events w/o app info"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/internal/wv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/cb;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/ak;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    :goto_4
    return v0

    :cond_6
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/b;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_5
    iput-object v2, v5, Lcom/google/android/gms/internal/wv;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/b;->f()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_a

    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7
    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->g:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/b;->p()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/b;->m()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/wv;->w:Ljava/lang/Integer;

    iget-object v0, v5, Lcom/google/android/gms/internal/wv;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(J)V

    iget-object v0, v5, Lcom/google/android/gms/internal/wv;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto :goto_4

    :cond_a
    move-wide v0, v2

    goto :goto_6
.end method

.method private a(Ljava/lang/String;[Lcom/google/android/gms/internal/wx;[Lcom/google/android/gms/internal/ws;)[Lcom/google/android/gms/internal/wr;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->w()Lcom/google/android/gms/measurement/internal/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/ai;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/ws;[Lcom/google/android/gms/internal/wx;)[Lcom/google/android/gms/internal/wr;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/android/gms/measurement/internal/cl;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/cl;->E()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_7

    new-instance v0, Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/bx;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/b;->c(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->j()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->c(J)V

    move v0, v1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->k()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->d(J)V

    move v0, v1

    :cond_5
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->l()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/b;->a(Z)V

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/b;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method A()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on package side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public B()V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->v()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bf;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->W()J

    move-result-wide v0

    sub-long v0, v8, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/bx;->a(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->c:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bq;->a()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/aj;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/aj;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/wv;

    iget-object v6, v0, Lcom/google/android/gms/internal/wv;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->s:Ljava/lang/String;

    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_e

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/wv;

    iget-object v7, v0, Lcom/google/android/gms/internal/wv;->s:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->s:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_3
    new-instance v6, Lcom/google/android/gms/internal/wu;

    invoke-direct {v6}, Lcom/google/android/gms/internal/wu;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/wv;

    iput-object v0, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    iget-object v0, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    array-length v0, v0

    if-ge v3, v0, :cond_9

    iget-object v7, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/wv;

    aput-object v0, v7, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/aj;->M()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/wv;->r:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    aget-object v0, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/wv;->d:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/wv;->z:Ljava/lang/Boolean;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/ag;->b(Lcom/google/android/gms/internal/wu;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/ag;->a(Lcom/google/android/gms/internal/wu;)[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/aj;->V()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/bn;->d:Lcom/google/android/gms/measurement/internal/bq;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/bq;->a(J)V

    const-string/jumbo v4, "?"

    iget-object v5, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    array-length v5, v5

    if-lez v5, :cond_a

    iget-object v4, v6, Lcom/google/android/gms/internal/wu;->a:[Lcom/google/android/gms/internal/wv;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/google/android/gms/internal/wv;->o:Ljava/lang/String;

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v5

    const-string/jumbo v6, "Uploading data. app, uncompressed size, data"

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v4, v8, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/measurement/internal/bz;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/bz;-><init>(Lcom/google/android/gms/measurement/internal/bx;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/bf;->a(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/bh;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Failed to parse upload URL. Not uploading"

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->W()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ak;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v4

    const-string/jumbo v6, "Fetching remote configuration"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/wo;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v4, v1, Lcom/google/android/gms/internal/wo;->a:Ljava/lang/Long;

    if-eqz v4, :cond_c

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string/jumbo v4, "Config-Version"

    iget-object v1, v1, Lcom/google/android/gms/internal/wo;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->o()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/ca;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/ca;-><init>(Lcom/google/android/gms/measurement/internal/bx;)V

    invoke-virtual {v1, v0, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/bf;->a(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/bh;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Failed to parse config URL. Not fetching"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v5

    goto/16 :goto_5

    :cond_e
    move-object v2, v4

    goto/16 :goto_3

    :cond_f
    move-object v6, v5

    goto/16 :goto_1
.end method

.method C()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/bx;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/bx;->z:I

    return-void
.end method

.method a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bx;->v:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method a(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method

.method a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 18

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->j()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/bs;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Dropping blacklisted event"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/bc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Logging event"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->c:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/EventParams;->b()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "currency"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-lez v3, :cond_6

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[A-Z]{3}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_ltv_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ak;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/af;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/af;->d:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-nez v3, :cond_8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/aj;->b(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/af;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/af;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/af;)Z

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/ag;->a(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/ag;->a(Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->z()J

    move-result-wide v6

    if-eqz v9, :cond_9

    if-eqz v2, :cond_9

    const/4 v10, 0x1

    :goto_2
    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/ak;->a(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/al;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/al;->b:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/aj;->B()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_a

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v4, "Data loss. Too many events logged. count"

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/al;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/af;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v3, Lcom/google/android/gms/measurement/internal/af;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/af;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v2

    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    if-eqz v9, :cond_c

    :try_start_2
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/al;->a:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/aj;->C()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_c

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/lang/String;I)V

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v4, "Data loss. Too many public events logged. count"

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/al;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto/16 :goto_0

    :cond_c
    if-eqz v9, :cond_d

    if-eqz v2, :cond_d

    :try_start_3
    iget-wide v2, v3, Lcom/google/android/gms/measurement/internal/al;->c:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/aj;->D()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    const-string/jumbo v2, "_c"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/gms/measurement/internal/bx;->a(Landroid/os/Bundle;I)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ak;->c(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v5

    const-string/jumbo v6, "Data lost. Too many events stored on disk, deleted"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    new-instance v5, Lcom/google/android/gms/measurement/internal/ar;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->e:J

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    move-object v8, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/ar;-><init>(Lcom/google/android/gms/measurement/internal/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/as;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ak;->g(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/aj;->A()I

    move-result v6

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Too many event names used, ignoring event. name, supported count"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/ar;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/aj;->A()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto/16 :goto_0

    :cond_f
    :try_start_4
    new-instance v7, Lcom/google/android/gms/measurement/internal/as;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/ar;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Lcom/google/android/gms/measurement/internal/ar;->d:J

    move-object v8, v4

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/as;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/as;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/ar;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/bc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Event recorded"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v2

    const-string/jumbo v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    :try_start_5
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/as;->e:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/ar;->a(Lcom/google/android/gms/measurement/internal/bx;J)Lcom/google/android/gms/measurement/internal/ar;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/ar;->d:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/as;->a(J)Lcom/google/android/gms/measurement/internal/as;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    goto :goto_3
.end method

.method a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "No app data available; dropping event"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v1

    const-string/jumbo v2, "App version does not match; dropping event"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v1

    const-string/jumbo v2, "Could not find package"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->j()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->k()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->l()Z

    move-result v11

    move-object v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/measurement/internal/AppMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ag;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ag;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/af;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->c:J

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/af;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v2, "Setting user property"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/af;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ak;->c()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v2, "User property set"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/af;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/af;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->w()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v2, "Ignoring user property. Value too long"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/af;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/af;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0
.end method

.method a(Lcom/google/android/gms/measurement/internal/ar;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ar;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ar;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->b(Z)V

    new-instance v2, Lcom/google/android/gms/internal/wv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/wv;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->a:Ljava/lang/Integer;

    const-string/jumbo v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->n:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->p:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->q:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->y:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->v:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bn;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->s:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->t:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->s()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->s()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aq;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->s()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aq;->v()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->s()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aq;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->l:Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/gms/internal/wv;->r:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/wv;->d:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/wv;->e:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/wv;->f:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/b;

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/bx;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/b;->e(J)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/b;->a(J)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/b;->b(J)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->c(J)V

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->d(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/b;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/wx;

    iput-object v0, v2, Lcom/google/android/gms/internal/wv;->c:[Lcom/google/android/gms/internal/wx;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/wx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/wx;-><init>()V

    iget-object v0, v2, Lcom/google/android/gms/internal/wv;->c:[Lcom/google/android/gms/internal/wx;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/af;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/internal/wx;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/af;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/af;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/wx;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/af;->d:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/measurement/internal/ag;->a(Lcom/google/android/gms/internal/wx;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ak;->b(Lcom/google/android/gms/internal/wv;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->a(Lcom/google/android/gms/measurement/internal/ar;J)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v1

    const-string/jumbo v2, "Data loss. Failed to insert raw event metadata"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method a(Lcom/google/android/gms/measurement/internal/cl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/bx;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/bx;->y:I

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    return-void
.end method

.method a(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/bx;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_au"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    const-string/jumbo v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ak;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/as;

    move-result-object v0

    if-nez v0, :cond_4

    const-wide/32 v0, 0x36ee80

    div-long v0, v4, v0

    add-long/2addr v0, v6

    mul-long/2addr v0, v8

    new-instance v2, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    const-string/jumbo v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_f"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->j:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_cd"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0
.end method

.method b(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Removing user property"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->b()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/bx;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "User property removed"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ak;->v()V

    throw v0
.end method

.method protected b()Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->w:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ag;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ag;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->w:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->t()Lcom/google/android/gms/measurement/internal/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ba;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->w:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected c()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bt;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bt;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Scheduler shutting down before Scion.start() called"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ak;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ag;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->m()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ag;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->f()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/bx;->F()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->d()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->N()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->y()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->t()Lcom/google/android/gms/measurement/internal/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ba;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->l()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->c()V

    goto :goto_1
.end method

.method public d()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->d:Lcom/google/android/gms/measurement/internal/aj;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/measurement/internal/bn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->e:Lcom/google/android/gms/measurement/internal/bn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/ck;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->e:Lcom/google/android/gms/measurement/internal/bn;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/measurement/internal/bc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/measurement/internal/bc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->f:Lcom/google/android/gms/measurement/internal/bc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/google/android/gms/measurement/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    return-object v0
.end method

.method public i()Lcom/google/android/gms/measurement/internal/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->h:Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->h:Lcom/google/android/gms/measurement/internal/u;

    return-object v0
.end method

.method public j()Lcom/google/android/gms/measurement/internal/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->i:Lcom/google/android/gms/measurement/internal/bs;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->i:Lcom/google/android/gms/measurement/internal/bs;

    return-object v0
.end method

.method k()Lcom/google/android/gms/measurement/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->g:Lcom/google/android/gms/measurement/internal/bt;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->q:Lcom/google/android/gms/measurement/internal/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->q:Lcom/google/android/gms/measurement/internal/d;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/measurement/internal/ag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->k:Lcom/google/android/gms/measurement/internal/ag;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->a(Lcom/google/android/gms/measurement/internal/ck;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->k:Lcom/google/android/gms/measurement/internal/ag;

    return-object v0
.end method

.method public n()Lcom/google/android/gms/measurement/internal/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->l:Lcom/google/android/gms/measurement/internal/ak;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->l:Lcom/google/android/gms/measurement/internal/ak;

    return-object v0
.end method

.method public o()Lcom/google/android/gms/measurement/internal/bf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->m:Lcom/google/android/gms/measurement/internal/bf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->m:Lcom/google/android/gms/measurement/internal/bf;

    return-object v0
.end method

.method public p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->c:Landroid/content/Context;

    return-object v0
.end method

.method public q()Lcom/google/android/gms/internal/vj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->n:Lcom/google/android/gms/internal/vj;

    return-object v0
.end method

.method public r()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->o:Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->o:Lcom/google/android/gms/measurement/internal/i;

    return-object v0
.end method

.method public s()Lcom/google/android/gms/measurement/internal/aq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->p:Lcom/google/android/gms/measurement/internal/aq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->p:Lcom/google/android/gms/measurement/internal/aq;

    return-object v0
.end method

.method public t()Lcom/google/android/gms/measurement/internal/ba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->r:Lcom/google/android/gms/measurement/internal/ba;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->r:Lcom/google/android/gms/measurement/internal/ba;

    return-object v0
.end method

.method public u()Lcom/google/android/gms/measurement/internal/bk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->s:Lcom/google/android/gms/measurement/internal/bk;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->s:Lcom/google/android/gms/measurement/internal/bk;

    return-object v0
.end method

.method public v()Lcom/google/android/gms/measurement/internal/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->t:Lcom/google/android/gms/measurement/internal/ad;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->t:Lcom/google/android/gms/measurement/internal/ad;

    return-object v0
.end method

.method public w()Lcom/google/android/gms/measurement/internal/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->u:Lcom/google/android/gms/measurement/internal/ai;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/bx;->b(Lcom/google/android/gms/measurement/internal/cl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bx;->u:Lcom/google/android/gms/measurement/internal/ai;

    return-object v0
.end method

.method public x()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->h()Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bt;->f()V

    return-void
.end method

.method protected y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method z()J
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->q()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/bn;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method
