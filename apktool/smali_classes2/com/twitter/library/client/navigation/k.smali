.class Lcom/twitter/library/client/navigation/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/navigation/j;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/navigation/j;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/twitter/library/client/navigation/k;->a:Lcom/twitter/library/client/navigation/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcom/twitter/library/client/navigation/j;

    iget-object v0, v0, Lcom/twitter/library/client/navigation/j;->a:Lcom/twitter/library/client/navigation/e;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/e;->a(Lcom/twitter/library/client/navigation/e;)Lcom/twitter/library/client/navigation/p;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lbfo;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/UserAccount;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcom/twitter/library/client/navigation/j;

    iget-object v0, v0, Lcom/twitter/library/client/navigation/j;->a:Lcom/twitter/library/client/navigation/e;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/e;->a(Lcom/twitter/library/client/navigation/e;)Lcom/twitter/library/client/navigation/p;

    move-result-object v1

    sget v0, Lbfo;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UserAccount;

    invoke-interface {v1, v0}, Lcom/twitter/library/client/navigation/p;->a(Lcom/twitter/android/UserAccount;)V

    .line 286
    :cond_0
    return-void
.end method
