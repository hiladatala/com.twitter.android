.class final Lokio/z;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static a:Lokio/y;

.field static b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static a()Lokio/y;
    .locals 6

    .prologue
    .line 37
    const-class v1, Lokio/z;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lokio/z;->a:Lokio/y;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lokio/z;->a:Lokio/y;

    .line 40
    iget-object v2, v0, Lokio/y;->f:Lokio/y;

    sput-object v2, Lokio/z;->a:Lokio/y;

    .line 41
    const/4 v2, 0x0

    iput-object v2, v0, Lokio/y;->f:Lokio/y;

    .line 42
    sget-wide v2, Lokio/z;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/z;->b:J

    .line 43
    monitor-exit v1

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v0, Lokio/y;

    invoke-direct {v0}, Lokio/y;-><init>()V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lokio/y;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2000

    .line 50
    iget-object v0, p0, Lokio/y;->f:Lokio/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/y;->g:Lokio/y;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iget-boolean v0, p0, Lokio/y;->d:Z

    if-eqz v0, :cond_2

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_2
    const-class v1, Lokio/z;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-wide v2, Lokio/z;->b:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_3
    :try_start_1
    sget-wide v2, Lokio/z;->b:J

    add-long/2addr v2, v6

    sput-wide v2, Lokio/z;->b:J

    .line 55
    sget-object v0, Lokio/z;->a:Lokio/y;

    iput-object v0, p0, Lokio/y;->f:Lokio/y;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lokio/y;->c:I

    iput v0, p0, Lokio/y;->b:I

    .line 57
    sput-object p0, Lokio/z;->a:Lokio/y;

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
