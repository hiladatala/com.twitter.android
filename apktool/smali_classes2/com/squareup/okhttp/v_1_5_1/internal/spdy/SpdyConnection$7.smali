.class Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;
.super Lcom/squareup/okhttp/v_1_5_1/internal/NamedRunnable;
.source "Twttr"


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/v_1_5_1/internal/spdy/ErrorCode;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/v_1_5_1/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/PushObserver;
    invoke-static {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->access$2600(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/v_1_5_1/internal/spdy/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->val$errorCode:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/PushObserver;->onReset(ILcom/squareup/okhttp/v_1_5_1/internal/spdy/ErrorCode;)V

    .line 841
    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    monitor-enter v1

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->this$0:Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;->access$2700(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/SpdyConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 843
    monitor-exit v1

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
