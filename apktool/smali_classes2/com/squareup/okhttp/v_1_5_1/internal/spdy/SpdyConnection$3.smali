.class Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;
.super Lcom/squareup/okhttp/v_1_5_1/internal/NamedRunnable;
.source "Twttr"


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    iput-boolean p4, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$reply:Z

    iput p5, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$payload1:I

    iput p6, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$payload2:I

    iput-object p7, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$ping:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/v_1_5_1/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    iget-boolean v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$reply:Z

    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$payload1:I

    iget v3, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$payload2:I

    iget-object v4, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$3;->val$ping:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;

    # invokes: Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->writePing(ZIILcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->access$800(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/v_1_5_1/internal/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method
