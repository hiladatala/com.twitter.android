.class Lokhttp3/internal/http/j;
.super Lokhttp3/internal/http/h;
.source "Twttr"


# instance fields
.field final synthetic d:Lokhttp3/internal/http/f;

.field private e:J

.field private f:Z

.field private final g:Lokhttp3/internal/http/r;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/f;Lokhttp3/internal/http/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iput-object p1, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/h;-><init>(Lokhttp3/internal/http/f;Lokhttp3/internal/http/g;)V

    .line 408
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/j;->f:Z

    .line 413
    iput-object p2, p0, Lokhttp3/internal/http/j;->g:Lokhttp3/internal/http/r;

    .line 414
    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 437
    iget-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    invoke-static {v0}, Lokhttp3/internal/http/f;->b(Lokhttp3/internal/http/f;)Lokio/j;

    move-result-object v0

    invoke-interface {v0}, Lokio/j;->s()Ljava/lang/String;

    .line 441
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    invoke-static {v0}, Lokhttp3/internal/http/f;->b(Lokhttp3/internal/http/f;)Lokio/j;

    move-result-object v0

    invoke-interface {v0}, Lokio/j;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    .line 442
    iget-object v0, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    invoke-static {v0}, Lokhttp3/internal/http/f;->b(Lokhttp3/internal/http/f;)Lokio/j;

    move-result-object v0

    invoke-interface {v0}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-wide v2, p0, Lokhttp3/internal/http/j;->e:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 444
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/j;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_2
    iget-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http/j;->f:Z

    .line 452
    iget-object v0, p0, Lokhttp3/internal/http/j;->g:Lokhttp3/internal/http/r;

    iget-object v1, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    invoke-virtual {v1}, Lokhttp3/internal/http/f;->e()Lokhttp3/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/r;->a(Lokhttp3/ag;)V

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/j;->a(Z)V

    .line 455
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-boolean v0, p0, Lokhttp3/internal/http/j;->b:Z

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http/j;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Ldbw;->a(Lokio/ab;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/j;->a(Z)V

    .line 462
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/j;->b:Z

    goto :goto_0
.end method

.method public read(Lokio/f;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 417
    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/http/j;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/http/j;->f:Z

    if-nez v2, :cond_3

    .line 432
    :cond_2
    :goto_0
    return-wide v0

    .line 421
    :cond_3
    iget-wide v2, p0, Lokhttp3/internal/http/j;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lokhttp3/internal/http/j;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_5

    .line 422
    :cond_4
    invoke-direct {p0}, Lokhttp3/internal/http/j;->a()V

    .line 423
    iget-boolean v2, p0, Lokhttp3/internal/http/j;->f:Z

    if-eqz v2, :cond_2

    .line 426
    :cond_5
    iget-object v2, p0, Lokhttp3/internal/http/j;->d:Lokhttp3/internal/http/f;

    invoke-static {v2}, Lokhttp3/internal/http/f;->b(Lokhttp3/internal/http/f;)Lokio/j;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/j;->e:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lokio/j;->read(Lokio/f;J)J

    move-result-wide v2

    .line 427
    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/j;->a(Z)V

    .line 429
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_6
    iget-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http/j;->e:J

    move-wide v0, v2

    .line 432
    goto :goto_0
.end method
