.class public final enum Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Style$VectorEffect;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public static final enum b:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field private static final synthetic c:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1059
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->a:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1060
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    const-string/jumbo v1, "NonScalingStroke"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->b:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1057
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->a:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->b:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    aput-object v1, v0, v3

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->c:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1057
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->c:[Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
