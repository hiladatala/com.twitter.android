.class public Lcom/caverock/androidsvg/c;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Lcom/caverock/androidsvg/e;

.field public b:Lcom/caverock/androidsvg/SVG$Style;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/e;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/e;

    .line 207
    iput-object v0, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/SVG$Style;

    .line 211
    iput-object p1, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/e;

    .line 212
    iput-object p2, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/SVG$Style;

    .line 213
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method