.class Lcom/twitter/library/provider/ec;
.super Lawr;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/dt;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dt;I)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/twitter/library/provider/ec;->b:Lcom/twitter/library/provider/dt;

    invoke-direct {p0, p2}, Lawr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 204
    const-class v0, Lbef;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "dismiss_reason"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->a:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 209
    const-class v0, Lbeh;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 210
    return-void
.end method
