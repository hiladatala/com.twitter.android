.class public Lcom/google/android/gms/measurement/internal/aj;
.super Lcom/google/android/gms/measurement/internal/ck;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/google/android/gms/common/f;->b:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(\\d+)(\\d)(\\d\\d)"

    const-string/jumbo v2, "$1.$2.$3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/aj;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/bx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ck;-><init>(Lcom/google/android/gms/measurement/internal/bx;)V

    return-void
.end method


# virtual methods
.method A()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public B()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->m:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public C()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->n:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public D()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->o:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method E()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method F()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method G()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method H()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method I()J
    .locals 2

    const-wide/32 v0, 0xee48

    return-wide v0
.end method

.method J()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->A:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_app_measurement.db"

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_app_measurement2.db"

    return-object v0
.end method

.method public M()J
    .locals 2

    sget v0, Lcom/google/android/gms/common/f;->b:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public N()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/common/internal/i;->a:Z

    return v0
.end method

.method public O()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->m()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vv;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->b()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public P()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->y:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->u:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public R()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public S()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->e:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public T()I
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->k:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public U()I
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->l:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->q:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public W()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->f:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public X()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->r:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public Y()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->t:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public Z()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->s:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method a(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->d:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/aw",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/aw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->c:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->g:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->h:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "config/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "app_instance_id"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "gmp_version"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->M()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aa()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->v:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public ab()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->w:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public ac()I
    .locals 3

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->x:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method b(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->z:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/aj;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/aw",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/aw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/aw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->i:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/aj;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/measurement/internal/av;->j:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/aj;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->d()V

    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/av;->p:Lcom/google/android/gms/measurement/internal/aw;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/aj;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aw;)I

    move-result v0

    const v1, 0xf4240

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->f()V

    return-void
.end method

.method public bridge synthetic g()Lcom/google/android/gms/measurement/internal/ai;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->g()Lcom/google/android/gms/measurement/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->h()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/google/android/gms/measurement/internal/ba;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->i()Lcom/google/android/gms/measurement/internal/ba;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/android/gms/measurement/internal/aq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->j()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/google/android/gms/internal/vj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->l()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->m()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/google/android/gms/measurement/internal/ak;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Lcom/google/android/gms/measurement/internal/ag;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Lcom/google/android/gms/measurement/internal/bs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->p()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Lcom/google/android/gms/measurement/internal/u;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->q()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/android/gms/measurement/internal/bt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->r()Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/android/gms/measurement/internal/bc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/google/android/gms/measurement/internal/bn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ck;->u()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method w()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method x()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public y()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public z()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method
