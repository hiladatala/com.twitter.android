.class final Lcom/twitter/android/moments/ui/maker/bz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lakt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bz;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bz;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lakt;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bz;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bz;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bz;->c:Landroid/content/res/Resources;

    invoke-static {v0, v1, v2}, Lakt;->a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)Lakt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/bz;->a()Lakt;

    move-result-object v0

    return-object v0
.end method
