.class public Lcom/google/android/gms/internal/la;
.super Lcom/google/android/gms/internal/ku;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# instance fields
.field private final a:Lir;


# direct methods
.method public constructor <init>(Lir;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ku;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/dynamic/j;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/m;->a(Lcom/google/android/gms/dynamic/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lir;->b(Landroid/view/View;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/b;

    new-instance v3, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->c()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/dynamic/j;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/m;->a(Lcom/google/android/gms/dynamic/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lir;->a(Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/di;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->h()Lcom/google/android/gms/ads/formats/b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/b;->c()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->d()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->b()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->a:Lir;

    invoke-virtual {v0}, Lir;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
