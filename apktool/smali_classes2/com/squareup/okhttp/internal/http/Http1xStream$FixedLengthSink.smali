.class final Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokio/aa;


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

.field private final timeout:Lokio/n;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;J)V
    .locals 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lokio/n;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v1

    invoke-interface {v1}, Lokio/i;->timeout()Lokio/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/n;-><init>(Lokio/ac;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/n;

    .line 274
    iput-wide p2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;JLcom/squareup/okhttp/internal/http/Http1xStream$1;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 300
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/n;

    # invokes: Lcom/squareup/okhttp/internal/http/Http1xStream;->detachTimeout(Lokio/n;)V
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$400(Lcom/squareup/okhttp/internal/http/Http1xStream;Lokio/n;)V

    .line 302
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    # setter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$502(Lcom/squareup/okhttp/internal/http/Http1xStream;I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    invoke-interface {v0}, Lokio/i;->flush()V

    goto :goto_0
.end method

.method public timeout()Lokio/ac;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/n;

    return-object v0
.end method

.method public write(Lokio/f;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lokio/f;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 284
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 285
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/i;->write(Lokio/f;J)V

    .line 289
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 290
    return-void
.end method
