.class public Lcom/facebook/drawee/generic/b;
.super Lcom/facebook/drawee/drawable/f;
.source "Twttr"

# interfaces
.implements Lcom/facebook/drawee/drawable/r;


# instance fields
.field private a:Lcom/facebook/drawee/drawable/s;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/drawee/drawable/s;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/s;

    .line 114
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/b;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/s;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/s;

    invoke-interface {v0}, Lcom/facebook/drawee/drawable/s;->a()V

    .line 133
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/f;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x1

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/s;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/s;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/s;->a(Z)V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/drawable/f;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
