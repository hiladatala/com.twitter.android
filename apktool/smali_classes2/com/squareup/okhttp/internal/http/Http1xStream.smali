.class public final Lcom/squareup/okhttp/internal/http/Http1xStream;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HttpStream;


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private final sink:Lokio/i;

.field private final source:Lokio/j;

.field private state:I

.field private final streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/StreamAllocation;Lokio/j;Lokio/i;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 78
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    .line 79
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->source:Lokio/j;

    .line 80
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    .line 81
    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/http/Http1xStream;Lokio/n;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->detachTimeout(Lokio/n;)V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/http/Http1xStream;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    return v0
.end method

.method static synthetic access$502(Lcom/squareup/okhttp/internal/http/Http1xStream;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/j;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->source:Lokio/j;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method private detachTimeout(Lokio/n;)V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p1}, Lokio/n;->a()Lokio/ac;

    move-result-object v0

    .line 262
    sget-object v1, Lokio/ac;->NONE:Lokio/ac;

    invoke-virtual {p1, v1}, Lokio/n;->a(Lokio/ac;)Lokio/n;

    .line 263
    invoke-virtual {v0}, Lokio/ac;->clearDeadline()Lokio/ac;

    .line 264
    invoke-virtual {v0}, Lokio/ac;->clearTimeout()Lokio/ac;

    .line 265
    return-void
.end method

.method private getTransferStream(Lcom/squareup/okhttp/Response;)Lokio/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasBody(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/ab;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newChunkedSource(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lokio/ab;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/ab;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newUnknownLengthSource()Lokio/ab;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->connection()Lcom/squareup/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/io/RealConnection;->cancel()V

    .line 105
    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newChunkedSink()Lokio/aa;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/squareup/okhttp/internal/http/Http1xStream;->newFixedLengthSink(J)Lokio/aa;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    invoke-interface {v0}, Lokio/i;->flush()V

    .line 162
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChunkedSink()Lokio/aa;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 220
    new-instance v0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 244
    new-instance v0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSource;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/aa;
    .locals 3

    .prologue
    .line 224
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 226
    new-instance v0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;JLcom/squareup/okhttp/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 238
    new-instance v0, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/Http1xStream$FixedLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 252
    new-instance v0, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->getTransferStream(Lcom/squareup/okhttp/Response;)Lokio/ab;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/squareup/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/RealResponseBody;-><init>(Lcom/squareup/okhttp/Headers;Lokio/j;)V

    return-object v1
.end method

.method public readHeaders()Lcom/squareup/okhttp/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->source:Lokio/j;

    invoke-interface {v1}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/Internal;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponse()Lcom/squareup/okhttp/Response$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->source:Lokio/j;

    invoke-interface {v0}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->readHeaders()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    .line 194
    iget v0, v0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->streamAllocation:Lcom/squareup/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->readResponse()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEngine(Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 85
    return-void
.end method

.method public writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    invoke-interface {v0, p2}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 176
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I

    .line 232
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lokio/aa;)V

    .line 233
    return-void
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/http/RequestLine;->get(Lcom/squareup/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    .line 124
    return-void
.end method
