.class Lcom/twitter/database/generated/eb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Layb;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/dz;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/dz;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/twitter/database/generated/eb;->a:Lcom/twitter/database/generated/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/twitter/database/generated/eb;->a:Lcom/twitter/database/generated/dz;

    invoke-static {v0}, Lcom/twitter/database/generated/dz;->a(Lcom/twitter/database/generated/dz;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
