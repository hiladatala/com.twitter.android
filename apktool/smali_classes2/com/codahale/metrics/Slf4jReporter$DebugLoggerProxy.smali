.class Lcom/codahale/metrics/Slf4jReporter$DebugLoggerProxy;
.super Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;
.source "Twttr"


# direct methods
.method public constructor <init>(Lorg/slf4j/b;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;-><init>(Lorg/slf4j/b;)V

    .line 275
    return-void
.end method


# virtual methods
.method public varargs log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter$DebugLoggerProxy;->logger:Lorg/slf4j/b;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/b;->b(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    return-void
.end method
