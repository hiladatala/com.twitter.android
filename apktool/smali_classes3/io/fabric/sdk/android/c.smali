.class Lio/fabric/sdk/android/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/d;

.field final synthetic b:Lio/fabric/sdk/android/b;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/b;Lio/fabric/sdk/android/d;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lio/fabric/sdk/android/c;->b:Lio/fabric/sdk/android/b;

    iput-object p2, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->e(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->c(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->b(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/d;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->d(Landroid/app/Activity;)V

    .line 127
    return-void
.end method
