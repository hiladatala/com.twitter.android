.class Lcom/twitter/library/av/playback/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/aa;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/aa;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/twitter/library/av/playback/ae;->a:Lcom/twitter/library/av/playback/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/library/av/playback/ae;->a:Lcom/twitter/library/av/playback/aa;

    iget-object v0, v0, Lcom/twitter/library/av/playback/aa;->a:Lcom/twitter/library/av/playback/x;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/x;->d()V

    .line 160
    return-void
.end method
