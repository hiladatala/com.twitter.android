.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;
.source "Twttr"


# instance fields
.field mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptorApi21$ServiceBinderProxyApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;)V

    .line 56
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .line 57
    return-void
.end method


# virtual methods
.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    const-class v0, Landroid/service/media/MediaBrowserService;

    const-string/jumbo v1, "KEY_MEDIA_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23$ServiceBinderProxyApi23;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-interface {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;->getMediaItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;)V

    .line 83
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :goto_1
    const-string/jumbo v1, "MediaBrowserServiceCompatApi21"

    const-string/jumbo v2, "Failed to get KEY_MEDIA_ITEM via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    goto :goto_1
.end method
