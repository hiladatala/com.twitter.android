.class Lcom/twitter/database/generated/lf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazn;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/la;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/la;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/twitter/database/generated/lf;->a:Lcom/twitter/database/generated/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/twitter/database/generated/lf;->a:Lcom/twitter/database/generated/la;

    invoke-static {v0}, Lcom/twitter/database/generated/la;->a(Lcom/twitter/database/generated/la;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x77

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
