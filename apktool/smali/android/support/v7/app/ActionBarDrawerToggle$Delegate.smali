.class public interface abstract Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.super Ljava/lang/Object;
.source "Twttr"


# virtual methods
.method public abstract getActionBarThemedContext()Landroid/content/Context;
.end method

.method public abstract getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isNavigationVisible()Z
.end method

.method public abstract setActionBarDescription(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method