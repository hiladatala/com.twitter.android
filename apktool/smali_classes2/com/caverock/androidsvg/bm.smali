.class public Lcom/caverock/androidsvg/bm;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic m:[I

.field private static synthetic n:[I

.field private static synthetic o:[I

.field private static synthetic p:[I


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Lcom/caverock/androidsvg/k;

.field private c:F

.field private d:Z

.field private e:Lcom/caverock/androidsvg/SVG;

.field private f:Lcom/caverock/androidsvg/bt;

.field private g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/bt;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/aq;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/k;F)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    .line 212
    iput p3, p0, Lcom/caverock/androidsvg/bm;->c:F

    .line 213
    iput-object p2, p0, Lcom/caverock/androidsvg/bm;->b:Lcom/caverock/androidsvg/k;

    .line 214
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/bf;)F
    .locals 2

    .prologue
    .line 1696
    new-instance v0, Lcom/caverock/androidsvg/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/bw;-><init>(Lcom/caverock/androidsvg/bm;Lcom/caverock/androidsvg/bw;)V

    .line 1697
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 1698
    iget v0, v0, Lcom/caverock/androidsvg/bw;->a:F

    return v0
.end method

.method private a(F)I
    .locals 2

    .prologue
    const/16 v0, 0xff

    .line 2408
    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 2409
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1940
    const-string/jumbo v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-object v0

    .line 1942
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1945
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1946
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 1948
    const-string/jumbo v2, ";base64"

    add-int/lit8 v3, v1, -0x7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1950
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1951
    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1985
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1987
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 2048
    :goto_0
    return-object v0

    .line 1990
    :cond_1
    iget v0, p1, Lcom/caverock/androidsvg/k;->c:F

    iget v1, p2, Lcom/caverock/androidsvg/k;->c:F

    div-float/2addr v0, v1

    .line 1991
    iget v1, p1, Lcom/caverock/androidsvg/k;->d:F

    iget v2, p2, Lcom/caverock/androidsvg/k;->d:F

    div-float v4, v1, v2

    .line 1992
    iget v1, p2, Lcom/caverock/androidsvg/k;->a:F

    neg-float v1, v1

    .line 1993
    iget v2, p2, Lcom/caverock/androidsvg/k;->b:F

    neg-float v2, v2

    .line 1996
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1998
    iget v5, p1, Lcom/caverock/androidsvg/k;->a:F

    iget v6, p1, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1999
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2000
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object v0, v3

    .line 2001
    goto :goto_0

    .line 2006
    :cond_2
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->b()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->b:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v5, v6, :cond_3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2008
    :goto_1
    iget v4, p1, Lcom/caverock/androidsvg/k;->c:F

    div-float/2addr v4, v0

    .line 2009
    iget v5, p1, Lcom/caverock/androidsvg/k;->d:F

    div-float/2addr v5, v0

    .line 2011
    invoke-static {}, Lcom/caverock/androidsvg/bm;->e()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2025
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/bm;->e()[I

    move-result-object v4

    .line 2028
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_1

    .line 2045
    :goto_3
    iget v4, p1, Lcom/caverock/androidsvg/k;->a:F

    iget v5, p1, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2046
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2047
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object v0, v3

    .line 2048
    goto :goto_0

    .line 2006
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 2016
    :pswitch_1
    iget v6, p2, Lcom/caverock/androidsvg/k;->c:F

    sub-float v4, v6, v4

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    .line 2017
    goto :goto_2

    .line 2021
    :pswitch_2
    iget v6, p2, Lcom/caverock/androidsvg/k;->c:F

    sub-float v4, v6, v4

    sub-float/2addr v1, v4

    .line 2022
    goto :goto_2

    .line 2033
    :pswitch_3
    iget v4, p2, Lcom/caverock/androidsvg/k;->d:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v2, v4

    .line 2034
    goto :goto_3

    .line 2038
    :pswitch_4
    iget v4, p2, Lcom/caverock/androidsvg/k;->d:F

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 2039
    goto :goto_3

    .line 2011
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2028
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2384
    const/4 v3, 0x0

    .line 2387
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->b:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-ne p3, v0, :cond_1

    move v0, v1

    .line 2388
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2391
    :cond_0
    :goto_1
    const-string/jumbo v0, "serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2392
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2402
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 2387
    goto :goto_0

    .line 2389
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 2393
    :cond_4
    const-string/jumbo v0, "sans-serif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2394
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2395
    :cond_5
    const-string/jumbo v0, "monospace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2396
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2397
    :cond_6
    const-string/jumbo v0, "cursive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2398
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2399
    :cond_7
    const-string/jumbo v0, "fantasy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2400
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/au;Lcom/caverock/androidsvg/bt;)Lcom/caverock/androidsvg/bt;
    .locals 4

    .prologue
    .line 3100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    .line 3104
    :goto_0
    instance-of v0, v1, Lcom/caverock/androidsvg/as;

    if-eqz v0, :cond_0

    .line 3105
    const/4 v3, 0x0

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/as;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3107
    :cond_0
    iget-object v0, v1, Lcom/caverock/androidsvg/au;->v:Lcom/caverock/androidsvg/aq;

    if-nez v0, :cond_2

    .line 3113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3117
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->b()Lcom/caverock/androidsvg/am;

    move-result-object v0

    iget-object v0, v0, Lcom/caverock/androidsvg/am;->x:Lcom/caverock/androidsvg/k;

    iput-object v0, p2, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    .line 3118
    iget-object v0, p2, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    if-nez v0, :cond_1

    .line 3119
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->b:Lcom/caverock/androidsvg/k;

    iput-object v0, p2, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    .line 3123
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->b:Lcom/caverock/androidsvg/k;

    iput-object v0, p2, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    .line 3126
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->i:Z

    iput-boolean v0, p2, Lcom/caverock/androidsvg/bt;->i:Z

    .line 3128
    return-object p2

    .line 3109
    :cond_2
    iget-object v0, v1, Lcom/caverock/androidsvg/au;->v:Lcom/caverock/androidsvg/aq;

    check-cast v0, Lcom/caverock/androidsvg/au;

    move-object v1, v0

    .line 3103
    goto :goto_0

    .line 3113
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/as;

    .line 3114
    invoke-direct {p0, p2, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->h:Z

    if-eqz v0, :cond_0

    .line 1806
    const-string/jumbo v0, "[\\n\\t]"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    :goto_0
    return-object v0

    .line 1809
    :cond_0
    const-string/jumbo v0, "\\n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    const-string/jumbo v1, "\\t"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    if-eqz p2, :cond_1

    .line 1813
    const-string/jumbo v1, "^\\s+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1814
    :cond_1
    if-eqz p3, :cond_2

    .line 1815
    const-string/jumbo v1, "\\s+$"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    :cond_2
    const-string/jumbo v1, "\\s{2,}"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(FFFF)V
    .locals 3

    .prologue
    .line 2430
    .line 2432
    add-float v1, p1, p3

    .line 2433
    add-float v0, p2, p4

    .line 2435
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    if-eqz v2, :cond_0

    .line 2436
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    iget-object v2, v2, Lcom/caverock/androidsvg/l;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    add-float/2addr p1, v2

    .line 2437
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    iget-object v2, v2, Lcom/caverock/androidsvg/l;->a:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    add-float/2addr p2, v2

    .line 2438
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    iget-object v2, v2, Lcom/caverock/androidsvg/l;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 2439
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    iget-object v2, v2, Lcom/caverock/androidsvg/l;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 2442
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2443
    return-void
.end method

.method static synthetic a(FFFFFZZFFLcom/caverock/androidsvg/af;)V
    .locals 0

    .prologue
    .line 2549
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/bm;->b(FFFFFZZFFLcom/caverock/androidsvg/af;)V

    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 6

    .prologue
    .line 451
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->b:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_2

    .line 457
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 459
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 460
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 462
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 465
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 466
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 467
    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 469
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 470
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 471
    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v5, v5, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 480
    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/aa;Lcom/caverock/androidsvg/ar;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const v1, -0x42333333    # -0.1f

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 4178
    const-string/jumbo v0, "Mask render"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4180
    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4183
    :goto_0
    if-eqz v0, :cond_6

    .line 4185
    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->e:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    .line 4186
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/aa;->f:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/caverock/androidsvg/aa;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 4187
    :goto_2
    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->c:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    .line 4188
    :goto_3
    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->d:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    .line 4202
    :goto_4
    cmpl-float v0, v0, v9

    if-eqz v0, :cond_0

    cmpl-float v0, v1, v9

    if-nez v0, :cond_b

    .line 4226
    :cond_0
    :goto_5
    return-void

    :cond_1
    move v0, v4

    .line 4180
    goto :goto_0

    .line 4185
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->c:F

    goto :goto_1

    .line 4186
    :cond_3
    iget-object v1, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->d:F

    goto :goto_2

    .line 4187
    :cond_4
    iget-object v2, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->a:F

    float-to-double v2, v2

    iget-object v5, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->c:F

    float-to-double v6, v5

    mul-double/2addr v6, v10

    sub-double/2addr v2, v6

    double-to-float v2, v2

    goto :goto_3

    .line 4188
    :cond_5
    iget-object v2, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->b:F

    float-to-double v2, v2

    iget-object v5, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->d:F

    float-to-double v6, v5

    mul-double/2addr v6, v10

    sub-double/2addr v2, v6

    double-to-float v2, v2

    goto :goto_4

    .line 4193
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->c:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0, v8}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v0

    .line 4194
    :goto_6
    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->d:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_7

    iget-object v1, p1, Lcom/caverock/androidsvg/aa;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0, v8}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v1

    .line 4195
    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->e:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/caverock/androidsvg/aa;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0, v8}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v2

    .line 4196
    :goto_7
    iget-object v3, p1, Lcom/caverock/androidsvg/aa;->f:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/caverock/androidsvg/aa;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0, v8}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v3

    .line 4197
    :goto_8
    iget-object v5, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->a:F

    iget-object v6, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->c:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 4198
    iget-object v0, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->b:F

    iget-object v5, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->d:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 4199
    iget-object v0, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->c:F

    mul-float/2addr v0, v2

    .line 4200
    iget-object v1, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->d:F

    mul-float/2addr v1, v3

    goto :goto_4

    :cond_8
    move v0, v1

    .line 4193
    goto :goto_6

    .line 4195
    :cond_9
    const v2, 0x3f99999a    # 1.2f

    goto :goto_7

    .line 4196
    :cond_a
    const v3, 0x3f99999a    # 1.2f

    goto :goto_8

    .line 4206
    :cond_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 4208
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 4212
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Ljava/lang/Float;

    .line 4215
    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/caverock/androidsvg/aa;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v4

    .line 4216
    :goto_9
    if-nez v0, :cond_c

    .line 4217
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->a:F

    iget-object v2, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4218
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->c:F

    iget-object v2, p2, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4222
    :cond_c
    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;Z)V

    .line 4225
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto/16 :goto_5

    .line 4215
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private a(Lcom/caverock/androidsvg/ad;)V
    .locals 3

    .prologue
    .line 1039
    const-string/jumbo v0, "Path render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p1, Lcom/caverock/androidsvg/ad;->a:Lcom/caverock/androidsvg/ae;

    if-nez v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1046
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v0, :cond_0

    .line 1053
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1056
    :cond_3
    new-instance v0, Lcom/caverock/androidsvg/bp;

    iget-object v1, p1, Lcom/caverock/androidsvg/ad;->a:Lcom/caverock/androidsvg/ae;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/bp;-><init>(Lcom/caverock/androidsvg/bm;Lcom/caverock/androidsvg/ae;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bp;->a()Landroid/graphics/Path;

    move-result-object v0

    .line 1058
    iget-object v1, p1, Lcom/caverock/androidsvg/ad;->o:Lcom/caverock/androidsvg/k;

    if-nez v1, :cond_4

    .line 1059
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Landroid/graphics/Path;)Lcom/caverock/androidsvg/k;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/ad;->o:Lcom/caverock/androidsvg/k;

    .line 1061
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1063
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1064
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1066
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1068
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_5

    .line 1069
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->u()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1070
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1072
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_6

    .line 1073
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1075
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/t;)V

    .line 1077
    if-eqz v1, :cond_0

    .line 1078
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ad;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3660
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3678
    :cond_0
    :goto_0
    return-void

    .line 3662
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3665
    iget-object v0, p1, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3666
    iget-object v0, p1, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3668
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/bp;

    iget-object v1, p1, Lcom/caverock/androidsvg/ad;->a:Lcom/caverock/androidsvg/ae;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/bp;-><init>(Lcom/caverock/androidsvg/bm;Lcom/caverock/androidsvg/ae;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bp;->a()Landroid/graphics/Path;

    move-result-object v0

    .line 3670
    iget-object v1, p1, Lcom/caverock/androidsvg/ad;->o:Lcom/caverock/androidsvg/k;

    if-nez v1, :cond_3

    .line 3671
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Landroid/graphics/Path;)Lcom/caverock/androidsvg/k;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/ad;->o:Lcom/caverock/androidsvg/k;

    .line 3673
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 3676
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->y()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3677
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ag;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4123
    iget-object v0, p1, Lcom/caverock/androidsvg/ag;->u:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 4124
    if-nez v0, :cond_1

    .line 4126
    const-string/jumbo v0, "Pattern reference \'%s\' not found"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4165
    :cond_0
    :goto_0
    return-void

    .line 4129
    :cond_1
    instance-of v1, v0, Lcom/caverock/androidsvg/ag;

    if-nez v1, :cond_2

    .line 4130
    const-string/jumbo v0, "Pattern href attributes must point to other pattern elements"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4133
    :cond_2
    if-ne v0, p1, :cond_3

    .line 4134
    const-string/jumbo v0, "Circular reference in pattern href attribute \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4138
    :cond_3
    check-cast v0, Lcom/caverock/androidsvg/ag;

    .line 4140
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 4141
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->a:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->a:Ljava/lang/Boolean;

    .line 4142
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 4143
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->b:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->b:Ljava/lang/Boolean;

    .line 4144
    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    if-nez v1, :cond_6

    .line 4145
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    .line 4146
    :cond_6
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_7

    .line 4147
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    .line 4148
    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_8

    .line 4149
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    .line 4150
    :cond_8
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_9

    .line 4151
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    .line 4152
    :cond_9
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_a

    .line 4153
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    .line 4155
    :cond_a
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4156
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->i:Ljava/util/List;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->i:Ljava/util/List;

    .line 4157
    :cond_b
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->x:Lcom/caverock/androidsvg/k;

    if-nez v1, :cond_c

    .line 4158
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->x:Lcom/caverock/androidsvg/k;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->x:Lcom/caverock/androidsvg/k;

    .line 4159
    :cond_c
    iget-object v1, p1, Lcom/caverock/androidsvg/ag;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v1, :cond_d

    .line 4160
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v1, p1, Lcom/caverock/androidsvg/ag;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4163
    :cond_d
    iget-object v1, v0, Lcom/caverock/androidsvg/ag;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4164
    iget-object v0, v0, Lcom/caverock/androidsvg/ag;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ah;)V
    .locals 3

    .prologue
    .line 1261
    const-string/jumbo v0, "PolyLine render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1265
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v0, :cond_0

    .line 1272
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/ah;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1275
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    array-length v0, v0

    .line 1276
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1279
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ah;)Landroid/graphics/Path;

    move-result-object v0

    .line 1280
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1282
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1283
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1285
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1287
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_4

    .line 1288
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1289
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_5

    .line 1290
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1292
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/t;)V

    .line 1294
    if-eqz v1, :cond_0

    .line 1295
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ai;)V
    .locals 3

    .prologue
    .line 1345
    const-string/jumbo v0, "Polygon render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1349
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v0, :cond_0

    .line 1356
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ai;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1357
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/ai;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1359
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/ai;->a:[F

    array-length v0, v0

    .line 1360
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1363
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ah;)Landroid/graphics/Path;

    move-result-object v0

    .line 1364
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1366
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1367
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1369
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1371
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_4

    .line 1372
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1373
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_5

    .line 1374
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1376
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/t;)V

    .line 1378
    if-eqz v1, :cond_0

    .line 1379
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/aj;)V
    .locals 3

    .prologue
    .line 1095
    const-string/jumbo v0, "Rect render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    iget-object v0, p1, Lcom/caverock/androidsvg/aj;->c:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/aj;->d:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/aj;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/aj;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1102
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p1, Lcom/caverock/androidsvg/aj;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/aj;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1110
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/aj;)Landroid/graphics/Path;

    move-result-object v0

    .line 1111
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1114
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1116
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1118
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_3

    .line 1119
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1120
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_4

    .line 1121
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1124
    :cond_4
    if-eqz v1, :cond_0

    .line 1125
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/am;)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p1, Lcom/caverock/androidsvg/am;->c:Lcom/caverock/androidsvg/x;

    iget-object v1, p1, Lcom/caverock/androidsvg/am;->d:Lcom/caverock/androidsvg/x;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;)V

    .line 525
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;)V
    .locals 6

    .prologue
    .line 531
    iget-object v4, p1, Lcom/caverock/androidsvg/am;->x:Lcom/caverock/androidsvg/k;

    iget-object v5, p1, Lcom/caverock/androidsvg/am;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 532
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 540
    const-string/jumbo v0, "Svg render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    if-nez p5, :cond_c

    .line 548
    iget-object v0, p1, Lcom/caverock/androidsvg/am;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/am;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 552
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p1, Lcom/caverock/androidsvg/am;->v:Lcom/caverock/androidsvg/aq;

    if-eqz v1, :cond_b

    .line 560
    iget-object v1, p1, Lcom/caverock/androidsvg/am;->a:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/caverock/androidsvg/am;->a:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 561
    :goto_2
    iget-object v3, p1, Lcom/caverock/androidsvg/am;->b:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_3

    iget-object v2, p1, Lcom/caverock/androidsvg/am;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 564
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/bm;->d()Lcom/caverock/androidsvg/k;

    move-result-object v5

    .line 565
    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    move v4, v3

    .line 566
    :goto_4
    if-eqz p3, :cond_9

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 567
    :goto_5
    iget-object v5, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    new-instance v6, Lcom/caverock/androidsvg/k;

    invoke-direct {v6, v1, v2, v4, v3}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v6, v5, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    .line 569
    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 570
    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v3, v3, Lcom/caverock/androidsvg/k;->a:F

    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v4, v4, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v4, v4, Lcom/caverock/androidsvg/k;->b:F

    iget-object v5, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v5, v5, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->c:F

    iget-object v6, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v6, v6, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->d:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    .line 573
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Lcom/caverock/androidsvg/k;)V

    .line 575
    if-eqz p4, :cond_a

    .line 576
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, v2, p4, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 577
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p1, Lcom/caverock/androidsvg/am;->x:Lcom/caverock/androidsvg/k;

    iput-object v1, v0, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    .line 582
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 585
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->v()V

    .line 587
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;Z)V

    .line 589
    if-eqz v0, :cond_5

    .line 590
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 592
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    goto/16 :goto_0

    .line 548
    :cond_6
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->c:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 560
    goto/16 :goto_2

    .line 565
    :cond_8
    iget v3, v5, Lcom/caverock/androidsvg/k;->c:F

    move v4, v3

    goto :goto_4

    .line 566
    :cond_9
    iget v3, v5, Lcom/caverock/androidsvg/k;->d:F

    goto :goto_5

    .line 579
    :cond_a
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_b
    move v1, v2

    goto/16 :goto_3

    :cond_c
    move-object v0, p5

    goto/16 :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/aq;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->h:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->i:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/aq;Z)V
    .locals 2

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;)V

    .line 332
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/aq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    if-eqz p2, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->l()V

    .line 339
    :cond_1
    return-void

    .line 332
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/au;

    .line 333
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ar;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 637
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->v:Lcom/caverock/androidsvg/aq;

    if-nez v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    if-eqz v0, :cond_0

    .line 643
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 645
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/16 v0, 0x8

    new-array v3, v0, [F

    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->a:F

    aput v0, v3, v5

    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->b:F

    aput v0, v3, v6

    .line 647
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/k;->a()F

    move-result v0

    aput v0, v3, v1

    const/4 v0, 0x3

    iget-object v4, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v4, v4, Lcom/caverock/androidsvg/k;->b:F

    aput v4, v3, v0

    const/4 v0, 0x4

    .line 648
    iget-object v4, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/k;->a()F

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/k;->b()F

    move-result v4

    aput v4, v3, v0

    .line 649
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->a:F

    aput v0, v3, v7

    const/4 v0, 0x7

    iget-object v4, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/k;->b()F

    move-result v4

    aput v4, v3, v0

    .line 651
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 652
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 654
    new-instance v2, Landroid/graphics/RectF;

    aget v0, v3, v5

    aget v4, v3, v6

    aget v5, v3, v5

    aget v6, v3, v6

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v0, v1

    .line 655
    :goto_1
    if-le v0, v7, :cond_2

    .line 662
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/ar;

    .line 663
    iget-object v1, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    if-nez v1, :cond_7

    .line 664
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/k;->a(FFFF)Lcom/caverock/androidsvg/k;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    goto/16 :goto_0

    .line 656
    :cond_2
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 657
    :cond_3
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 658
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 659
    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 655
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 666
    :cond_7
    iget-object v0, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/k;->a(FFFF)Lcom/caverock/androidsvg/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/k;->a(Lcom/caverock/androidsvg/k;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    instance-of v0, v0, Lcom/caverock/androidsvg/ac;

    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    check-cast v0, Lcom/caverock/androidsvg/ac;

    iget-object v0, v0, Lcom/caverock/androidsvg/ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 434
    instance-of v1, v0, Lcom/caverock/androidsvg/ag;

    if-eqz v1, :cond_0

    .line 435
    check-cast v0, Lcom/caverock/androidsvg/ag;

    .line 436
    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;Lcom/caverock/androidsvg/ag;)V

    .line 443
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;Lcom/caverock/androidsvg/ag;)V
    .locals 15

    .prologue
    .line 3993
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 3997
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->h:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3998
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->h:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ag;Ljava/lang/String;)V

    .line 4000
    :cond_0
    if-eqz v2, :cond_7

    .line 4002
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_3

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 4003
    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 4004
    :goto_2
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v4

    .line 4005
    :goto_3
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    if-eqz v5, :cond_6

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v5

    :goto_4
    move v7, v5

    move v8, v4

    move v4, v3

    move v5, v2

    .line 4019
    :goto_5
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-nez v2, :cond_c

    .line 4113
    :cond_1
    :goto_6
    return-void

    .line 3993
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 4002
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 4003
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 4004
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 4005
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 4010
    :cond_7
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->d:Lcom/caverock/androidsvg/x;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v2

    .line 4011
    :goto_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ag;->e:Lcom/caverock/androidsvg/x;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v3

    .line 4012
    :goto_8
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_a

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/ag;->f:Lcom/caverock/androidsvg/x;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v4

    .line 4013
    :goto_9
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    if-eqz v5, :cond_b

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/ag;->g:Lcom/caverock/androidsvg/x;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, p0, v6}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v5

    .line 4014
    :goto_a
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->a:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v7, v7, Lcom/caverock/androidsvg/k;->c:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    .line 4015
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->b:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v7, v7, Lcom/caverock/androidsvg/k;->d:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    .line 4016
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->c:F

    mul-float/2addr v4, v6

    .line 4017
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->d:F

    mul-float/2addr v5, v6

    move v7, v5

    move v8, v4

    move v4, v3

    move v5, v2

    goto/16 :goto_5

    .line 4010
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 4011
    :cond_9
    const/4 v3, 0x0

    goto :goto_8

    .line 4012
    :cond_a
    const/4 v4, 0x0

    goto :goto_9

    .line 4013
    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    .line 4023
    :cond_c
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v2, :cond_e

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    .line 4026
    :goto_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 4028
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4031
    new-instance v2, Lcom/caverock/androidsvg/bt;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/bt;-><init>(Lcom/caverock/androidsvg/bm;)V

    .line 4032
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 4033
    iget-object v6, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v6, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    .line 4034
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;Lcom/caverock/androidsvg/bt;)Lcom/caverock/androidsvg/bt;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 4037
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    .line 4039
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    if-eqz v6, :cond_d

    .line 4041
    iget-object v6, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4045
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 4046
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/ag;->c:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 4047
    const/16 v2, 0x8

    new-array v9, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v10, v10, Lcom/caverock/androidsvg/k;->a:F

    aput v10, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v10, v10, Lcom/caverock/androidsvg/k;->b:F

    aput v10, v9, v2

    const/4 v2, 0x2

    .line 4048
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/k;->a()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v10, v10, Lcom/caverock/androidsvg/k;->b:F

    aput v10, v9, v2

    const/4 v2, 0x4

    .line 4049
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/k;->a()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/k;->b()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x6

    .line 4050
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v10, v10, Lcom/caverock/androidsvg/k;->a:F

    aput v10, v9, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/k;->b()F

    move-result v10

    aput v10, v9, v2

    .line 4051
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4053
    new-instance v6, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v10, 0x1

    aget v10, v9, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-direct {v6, v2, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4054
    const/4 v2, 0x2

    :goto_c
    const/4 v10, 0x6

    if-le v2, v10, :cond_f

    .line 4060
    new-instance v2, Lcom/caverock/androidsvg/k;

    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->right:F

    iget v12, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v12, v6

    invoke-direct {v2, v9, v10, v11, v6}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    .line 4064
    :cond_d
    iget v6, v2, Lcom/caverock/androidsvg/k;->a:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v8

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 4065
    iget v6, v2, Lcom/caverock/androidsvg/k;->b:F

    sub-float/2addr v6, v4

    div-float/2addr v6, v7

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 4067
    invoke-virtual {v2}, Lcom/caverock/androidsvg/k;->a()F

    move-result v9

    .line 4068
    invoke-virtual {v2}, Lcom/caverock/androidsvg/k;->b()F

    move-result v10

    .line 4069
    new-instance v11, Lcom/caverock/androidsvg/k;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {v11, v2, v6, v8, v7}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    move v6, v4

    .line 4070
    :goto_d
    cmpg-float v2, v6, v10

    if-ltz v2, :cond_14

    .line 4112
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto/16 :goto_6

    .line 4023
    :cond_e
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->c:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    goto/16 :goto_b

    .line 4055
    :cond_f
    aget v10, v9, v2

    iget v11, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_10

    aget v10, v9, v2

    iput v10, v6, Landroid/graphics/RectF;->left:F

    .line 4056
    :cond_10
    aget v10, v9, v2

    iget v11, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_11

    aget v10, v9, v2

    iput v10, v6, Landroid/graphics/RectF;->right:F

    .line 4057
    :cond_11
    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_12

    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iput v10, v6, Landroid/graphics/RectF;->top:F

    .line 4058
    :cond_12
    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iput v10, v6, Landroid/graphics/RectF;->bottom:F

    .line 4054
    :cond_13
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_c

    :cond_14
    move v4, v5

    .line 4072
    :goto_e
    cmpg-float v2, v4, v9

    if-ltz v2, :cond_15

    .line 4070
    add-float v2, v6, v7

    move v6, v2

    goto :goto_d

    .line 4074
    :cond_15
    iput v4, v11, Lcom/caverock/androidsvg/k;->a:F

    .line 4075
    iput v6, v11, Lcom/caverock/androidsvg/k;->b:F

    .line 4077
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 4079
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    .line 4080
    iget v2, v11, Lcom/caverock/androidsvg/k;->a:F

    iget v12, v11, Lcom/caverock/androidsvg/k;->b:F

    iget v13, v11, Lcom/caverock/androidsvg/k;->c:F

    iget v14, v11, Lcom/caverock/androidsvg/k;->d:F

    invoke-direct {p0, v2, v12, v13, v14}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    .line 4083
    :cond_16
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->x:Lcom/caverock/androidsvg/k;

    if-eqz v2, :cond_19

    .line 4085
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/caverock/androidsvg/ag;->x:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, v11, v12, v3}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4097
    :cond_17
    :goto_f
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v12

    .line 4100
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4104
    if-eqz v12, :cond_18

    .line 4105
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 4108
    :cond_18
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 4072
    add-float v2, v4, v8

    move v4, v2

    goto :goto_e

    .line 4089
    :cond_19
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ag;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    .line 4091
    :goto_11
    iget-object v12, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4092
    if-nez v2, :cond_17

    .line 4093
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v12, v12, Lcom/caverock/androidsvg/k;->c:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget v13, v13, Lcom/caverock/androidsvg/k;->d:F

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_f

    .line 4089
    :cond_1a
    const/4 v2, 0x1

    goto :goto_11

    .line 4100
    :cond_1b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/au;

    .line 4101
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;)V

    goto :goto_10
.end method

.method private a(Lcom/caverock/androidsvg/ar;Lcom/caverock/androidsvg/k;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3534
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3587
    :goto_0
    return-void

    .line 3538
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 3539
    if-nez v0, :cond_1

    .line 3540
    const-string/jumbo v0, "ClipPath reference \'%s\' not found"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3544
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/n;

    .line 3547
    iget-object v1, v0, Lcom/caverock/androidsvg/n;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3548
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 3552
    :cond_2
    iget-object v1, v0, Lcom/caverock/androidsvg/n;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/caverock/androidsvg/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 3554
    :goto_1
    instance-of v4, p1, Lcom/caverock/androidsvg/u;

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 3555
    const-string/jumbo v0, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 3552
    goto :goto_1

    .line 3559
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->w()V

    .line 3561
    if-nez v1, :cond_5

    .line 3563
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3564
    iget v2, p2, Lcom/caverock/androidsvg/k;->a:F

    iget v4, p2, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3565
    iget v2, p2, Lcom/caverock/androidsvg/k;->c:F

    iget v4, p2, Lcom/caverock/androidsvg/k;->d:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3566
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3568
    :cond_5
    iget-object v1, v0, Lcom/caverock/androidsvg/n;->b:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    .line 3570
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/caverock/androidsvg/n;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3575
    :cond_6
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 3577
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 3579
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3580
    iget-object v0, v0, Lcom/caverock/androidsvg/n;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3584
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3586
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->x()V

    goto/16 :goto_0

    .line 3580
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/au;

    .line 3582
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/at;Lcom/caverock/androidsvg/at;)V
    .locals 1

    .prologue
    .line 3450
    iget-object v0, p1, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_0

    .line 3451
    iget-object v0, p2, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    .line 3452
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_1

    .line 3453
    iget-object v0, p2, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    .line 3454
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_2

    .line 3455
    iget-object v0, p2, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    .line 3456
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_3

    .line 3457
    iget-object v0, p2, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    .line 3458
    :cond_3
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/au;)V
    .locals 1

    .prologue
    .line 282
    instance-of v0, p1, Lcom/caverock/androidsvg/ab;

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 288
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/au;)V

    .line 290
    instance-of v0, p1, Lcom/caverock/androidsvg/am;

    if-eqz v0, :cond_2

    .line 291
    check-cast p1, Lcom/caverock/androidsvg/am;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/am;)V

    .line 319
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto :goto_0

    .line 292
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/bk;

    if-eqz v0, :cond_3

    .line 293
    check-cast p1, Lcom/caverock/androidsvg/bk;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bk;)V

    goto :goto_1

    .line 294
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/az;

    if-eqz v0, :cond_4

    .line 295
    check-cast p1, Lcom/caverock/androidsvg/az;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/az;)V

    goto :goto_1

    .line 296
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/u;

    if-eqz v0, :cond_5

    .line 297
    check-cast p1, Lcom/caverock/androidsvg/u;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/u;)V

    goto :goto_1

    .line 298
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/w;

    if-eqz v0, :cond_6

    .line 299
    check-cast p1, Lcom/caverock/androidsvg/w;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/w;)V

    goto :goto_1

    .line 300
    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/ad;

    if-eqz v0, :cond_7

    .line 301
    check-cast p1, Lcom/caverock/androidsvg/ad;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ad;)V

    goto :goto_1

    .line 302
    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/aj;

    if-eqz v0, :cond_8

    .line 303
    check-cast p1, Lcom/caverock/androidsvg/aj;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aj;)V

    goto :goto_1

    .line 304
    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/m;

    if-eqz v0, :cond_9

    .line 305
    check-cast p1, Lcom/caverock/androidsvg/m;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/m;)V

    goto :goto_1

    .line 306
    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/r;

    if-eqz v0, :cond_a

    .line 307
    check-cast p1, Lcom/caverock/androidsvg/r;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/r;)V

    goto :goto_1

    .line 308
    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/y;

    if-eqz v0, :cond_b

    .line 309
    check-cast p1, Lcom/caverock/androidsvg/y;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/y;)V

    goto :goto_1

    .line 310
    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/ai;

    if-eqz v0, :cond_c

    .line 311
    check-cast p1, Lcom/caverock/androidsvg/ai;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ai;)V

    goto :goto_1

    .line 312
    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/ah;

    if-eqz v0, :cond_d

    .line 313
    check-cast p1, Lcom/caverock/androidsvg/ah;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ah;)V

    goto :goto_1

    .line 314
    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/bd;

    if-eqz v0, :cond_1

    .line 315
    check-cast p1, Lcom/caverock/androidsvg/bd;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bd;)V

    goto :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/au;Lcom/caverock/androidsvg/bv;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1518
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/bf;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/bv;->a(Lcom/caverock/androidsvg/bf;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/bg;

    if-eqz v0, :cond_2

    .line 1524
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 1526
    check-cast p1, Lcom/caverock/androidsvg/bg;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bg;)V

    .line 1529
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto :goto_0

    .line 1531
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/bc;

    if-eqz v0, :cond_d

    .line 1533
    const-string/jumbo v0, "TSpan render"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 1538
    check-cast p1, Lcom/caverock/androidsvg/bc;

    .line 1540
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1542
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1546
    instance-of v0, p2, Lcom/caverock/androidsvg/br;

    if-eqz v0, :cond_10

    .line 1547
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/br;

    iget v0, v0, Lcom/caverock/androidsvg/br;->b:F

    move v1, v0

    .line 1548
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/br;

    iget v0, v0, Lcom/caverock/androidsvg/br;->c:F

    move v2, v0

    .line 1549
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_5
    move v3, v4

    .line 1550
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 1553
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/caverock/androidsvg/bc;->g()Lcom/caverock/androidsvg/bi;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/ar;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1555
    instance-of v0, p2, Lcom/caverock/androidsvg/br;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 1556
    check-cast v0, Lcom/caverock/androidsvg/br;

    add-float/2addr v1, v3

    iput v1, v0, Lcom/caverock/androidsvg/br;->b:F

    move-object v0, p2

    .line 1557
    check-cast v0, Lcom/caverock/androidsvg/br;

    add-float v1, v2, v4

    iput v1, v0, Lcom/caverock/androidsvg/br;->c:F

    .line 1560
    :cond_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 1562
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 1564
    if-eqz v0, :cond_8

    .line 1565
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 1569
    :cond_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto/16 :goto_0

    .line 1547
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1548
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v2, v0

    goto :goto_2

    .line 1549
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v3, v0

    goto :goto_3

    .line 1550
    :cond_c
    iget-object v0, p1, Lcom/caverock/androidsvg/bc;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v4

    goto :goto_4

    .line 1571
    :cond_d
    instance-of v0, p1, Lcom/caverock/androidsvg/bb;

    if-eqz v0, :cond_0

    .line 1574
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    move-object v0, p1

    .line 1576
    check-cast v0, Lcom/caverock/androidsvg/bb;

    .line 1578
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1580
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1582
    invoke-virtual {v0}, Lcom/caverock/androidsvg/bb;->g()Lcom/caverock/androidsvg/bi;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/ar;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1585
    iget-object v1, p1, Lcom/caverock/androidsvg/au;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v2, v0, Lcom/caverock/androidsvg/bb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v1

    .line 1586
    if-eqz v1, :cond_f

    instance-of v2, v1, Lcom/caverock/androidsvg/bf;

    if-eqz v2, :cond_f

    .line 1588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 1589
    check-cast v0, Lcom/caverock/androidsvg/bf;

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Ljava/lang/StringBuilder;)V

    .line 1590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1591
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/bv;->a(Ljava/lang/String;)V

    .line 1601
    :cond_e
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto/16 :goto_0

    .line 1596
    :cond_f
    const-string/jumbo v1, "Tref reference \'%s\' not found"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/caverock/androidsvg/bb;->a:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    move v3, v4

    move v2, v4

    move v1, v4

    goto/16 :goto_4
.end method

.method private a(Lcom/caverock/androidsvg/au;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3592
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3616
    :goto_0
    return-void

    .line 3596
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->w()V

    .line 3598
    instance-of v0, p1, Lcom/caverock/androidsvg/bk;

    if-eqz v0, :cond_2

    .line 3599
    if-eqz p2, :cond_1

    .line 3600
    check-cast p1, Lcom/caverock/androidsvg/bk;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bk;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3615
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->x()V

    goto :goto_0

    .line 3602
    :cond_1
    const-string/jumbo v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3604
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/ad;

    if-eqz v0, :cond_3

    .line 3605
    check-cast p1, Lcom/caverock/androidsvg/ad;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ad;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3606
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/bd;

    if-eqz v0, :cond_4

    .line 3607
    check-cast p1, Lcom/caverock/androidsvg/bd;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bd;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3608
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/t;

    if-eqz v0, :cond_5

    .line 3609
    check-cast p1, Lcom/caverock/androidsvg/t;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/t;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3611
    :cond_5
    const-string/jumbo v0, "Invalid %s element found in clipPath definition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/ax;Lcom/caverock/androidsvg/ax;)V
    .locals 1

    .prologue
    .line 3463
    iget-object v0, p1, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_0

    .line 3464
    iget-object v0, p2, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    .line 3465
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_1

    .line 3466
    iget-object v0, p2, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    .line 3467
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_2

    .line 3468
    iget-object v0, p2, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    .line 3469
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ax;->i:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_3

    .line 3470
    iget-object v0, p2, Lcom/caverock/androidsvg/ax;->i:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/ax;->i:Lcom/caverock/androidsvg/x;

    .line 3471
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/ax;->j:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_4

    .line 3472
    iget-object v0, p2, Lcom/caverock/androidsvg/ax;->j:Lcom/caverock/androidsvg/x;

    iput-object v0, p1, Lcom/caverock/androidsvg/ax;->j:Lcom/caverock/androidsvg/x;

    .line 3473
    :cond_4
    return-void
.end method

.method private a(Lcom/caverock/androidsvg/az;)V
    .locals 2

    .prologue
    .line 805
    const-string/jumbo v0, "Switch render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 809
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/az;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/az;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 816
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 818
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 820
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/az;)V

    .line 822
    if-eqz v0, :cond_2

    .line 823
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 825
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/ba;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1825
    const-string/jumbo v0, "Symbol render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1828
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1857
    :cond_1
    :goto_0
    return-void

    .line 1832
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ba;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/ba;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1834
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1836
    if-eqz p2, :cond_7

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    move v2, v1

    .line 1837
    :goto_2
    if-eqz p3, :cond_8

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 1838
    :goto_3
    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    new-instance v4, Lcom/caverock/androidsvg/k;

    invoke-direct {v4, v5, v5, v2, v1}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v4, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    .line 1840
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1841
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->a:F

    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->b:F

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v3, v3, Lcom/caverock/androidsvg/k;->c:F

    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v4, v4, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v4, v4, Lcom/caverock/androidsvg/k;->d:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    .line 1844
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/ba;->x:Lcom/caverock/androidsvg/k;

    if-eqz v1, :cond_4

    .line 1845
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget-object v3, p1, Lcom/caverock/androidsvg/ba;->x:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, v2, v3, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1846
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p1, Lcom/caverock/androidsvg/ba;->x:Lcom/caverock/androidsvg/k;

    iput-object v1, v0, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    .line 1849
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 1851
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;Z)V

    .line 1853
    if-eqz v0, :cond_5

    .line 1854
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 1856
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0

    .line 1832
    :cond_6
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->c:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1836
    :cond_7
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->c:F

    move v2, v1

    goto :goto_2

    .line 1837
    :cond_8
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->d:F

    goto :goto_3
.end method

.method private a(Lcom/caverock/androidsvg/bd;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1388
    const-string/jumbo v0, "Text render"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1392
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->a:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/bd;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1399
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    move v1, v2

    .line 1400
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    move v3, v2

    .line 1401
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_5
    move v4, v2

    .line 1402
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 1405
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->r()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1406
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->a:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_7

    .line 1407
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;)F

    move-result v5

    .line 1408
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->b:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v6, :cond_d

    .line 1409
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v5, v0

    sub-float/2addr v1, v0

    .line 1415
    :cond_7
    :goto_5
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->o:Lcom/caverock/androidsvg/k;

    if-nez v0, :cond_8

    .line 1416
    new-instance v0, Lcom/caverock/androidsvg/bu;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/bu;-><init>(Lcom/caverock/androidsvg/bm;FF)V

    .line 1417
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 1418
    new-instance v5, Lcom/caverock/androidsvg/k;

    iget-object v6, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/bd;->o:Lcom/caverock/androidsvg/k;

    .line 1420
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1422
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1423
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1425
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 1427
    new-instance v5, Lcom/caverock/androidsvg/br;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2}, Lcom/caverock/androidsvg/br;-><init>(Lcom/caverock/androidsvg/bm;FF)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 1429
    if-eqz v0, :cond_0

    .line 1430
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto/16 :goto_0

    .line 1399
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 1400
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v3, v0

    goto/16 :goto_2

    .line 1401
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v4, v0

    goto/16 :goto_3

    .line 1402
    :cond_c
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    goto/16 :goto_4

    .line 1411
    :cond_d
    sub-float/2addr v1, v5

    goto/16 :goto_5
.end method

.method private a(Lcom/caverock/androidsvg/bd;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 3739
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3741
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3775
    :goto_0
    return-void

    .line 3744
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->a:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 3745
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3748
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    move v1, v2

    .line 3749
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    move v3, v2

    .line 3750
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    move v4, v2

    .line 3751
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 3754
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->a:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_6

    .line 3755
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;)F

    move-result v0

    .line 3756
    iget-object v5, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v5, v5, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->b:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_c

    .line 3757
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    .line 3763
    :cond_6
    :goto_5
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->o:Lcom/caverock/androidsvg/k;

    if-nez v0, :cond_7

    .line 3764
    new-instance v0, Lcom/caverock/androidsvg/bu;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/bu;-><init>(Lcom/caverock/androidsvg/bm;FF)V

    .line 3765
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 3766
    new-instance v5, Lcom/caverock/androidsvg/k;

    iget-object v6, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/bd;->o:Lcom/caverock/androidsvg/k;

    .line 3768
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 3770
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3771
    new-instance v5, Lcom/caverock/androidsvg/bs;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/caverock/androidsvg/bs;-><init>(Lcom/caverock/androidsvg/bm;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 3773
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->y()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3774
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 3748
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 3749
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v3, v0

    goto/16 :goto_2

    .line 3750
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v4, v0

    goto/16 :goto_3

    .line 3751
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/bd;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    goto/16 :goto_4

    .line 3759
    :cond_c
    sub-float/2addr v1, v0

    goto/16 :goto_5
.end method

.method private a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1495
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    return-void

    .line 1498
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 1501
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/au;

    .line 1505
    instance-of v5, v0, Lcom/caverock/androidsvg/bj;

    if-eqz v5, :cond_3

    .line 1506
    check-cast v0, Lcom/caverock/androidsvg/bj;

    iget-object v5, v0, Lcom/caverock/androidsvg/bj;->a:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v5, v1, v0}, Lcom/caverock/androidsvg/bm;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/bv;->a(Ljava/lang/String;)V

    :goto_2
    move v1, v3

    .line 1510
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1506
    goto :goto_1

    .line 1508
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;Lcom/caverock/androidsvg/bv;)V

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/bf;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1782
    iget-object v0, p1, Lcom/caverock/androidsvg/bf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 1785
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1796
    return-void

    .line 1787
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/au;

    .line 1789
    instance-of v5, v0, Lcom/caverock/androidsvg/bf;

    if-eqz v5, :cond_2

    .line 1790
    check-cast v0, Lcom/caverock/androidsvg/bf;

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_1
    move v1, v3

    .line 1794
    goto :goto_0

    .line 1791
    :cond_2
    instance-of v5, v0, Lcom/caverock/androidsvg/bj;

    if-eqz v5, :cond_1

    .line 1792
    check-cast v0, Lcom/caverock/androidsvg/bj;

    iget-object v5, v0, Lcom/caverock/androidsvg/bj;->a:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    invoke-direct {p0, v5, v1, v0}, Lcom/caverock/androidsvg/bm;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/bg;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1611
    const-string/jumbo v0, "TextPath render"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1615
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p1, Lcom/caverock/androidsvg/bg;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 1621
    if-nez v0, :cond_2

    .line 1623
    const-string/jumbo v0, "TextPath reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/bg;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1627
    :cond_2
    check-cast v0, Lcom/caverock/androidsvg/ad;

    .line 1628
    new-instance v2, Lcom/caverock/androidsvg/bp;

    iget-object v3, v0, Lcom/caverock/androidsvg/ad;->a:Lcom/caverock/androidsvg/ae;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/bp;-><init>(Lcom/caverock/androidsvg/bm;Lcom/caverock/androidsvg/ae;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/bp;->a()Landroid/graphics/Path;

    move-result-object v3

    .line 1630
    iget-object v2, v0, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    .line 1631
    iget-object v0, v0, Lcom/caverock/androidsvg/ad;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1633
    :cond_3
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1635
    iget-object v2, p1, Lcom/caverock/androidsvg/bg;->b:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/caverock/androidsvg/bg;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-virtual {v2, p0, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v0

    .line 1638
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->r()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    .line 1639
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->a:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v4, :cond_6

    .line 1640
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;)F

    move-result v4

    .line 1641
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->b:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v5, :cond_5

    .line 1642
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v4, v2

    sub-float/2addr v0, v2

    move v2, v0

    .line 1648
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/bg;->g()Lcom/caverock/androidsvg/bi;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/ar;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1650
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 1652
    new-instance v4, Lcom/caverock/androidsvg/bq;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/caverock/androidsvg/bq;-><init>(Lcom/caverock/androidsvg/bm;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bf;Lcom/caverock/androidsvg/bv;)V

    .line 1654
    if-eqz v0, :cond_0

    .line 1655
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1635
    goto :goto_1

    .line 1644
    :cond_5
    sub-float/2addr v0, v4

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/bk;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 968
    const-string/jumbo v0, "Use render"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    :cond_1
    :goto_0
    return-void

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 976
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 981
    if-nez v0, :cond_3

    .line 982
    const-string/jumbo v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 986
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->b:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    .line 987
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/bk;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 991
    :cond_4
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 992
    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->c:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 993
    :goto_1
    iget-object v4, p1, Lcom/caverock/androidsvg/bk;->d:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_5

    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 994
    :cond_5
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 995
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 999
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v3

    .line 1001
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;)V

    .line 1003
    instance-of v1, v0, Lcom/caverock/androidsvg/am;

    if-eqz v1, :cond_a

    .line 1005
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 1006
    check-cast v0, Lcom/caverock/androidsvg/am;

    .line 1007
    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    .line 1008
    :goto_2
    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    .line 1009
    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;)V

    .line 1010
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 1025
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->l()V

    .line 1027
    if-eqz v3, :cond_6

    .line 1028
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 1030
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0

    :cond_7
    move v1, v2

    .line 992
    goto :goto_1

    .line 1007
    :cond_8
    iget-object v1, v0, Lcom/caverock/androidsvg/am;->c:Lcom/caverock/androidsvg/x;

    goto :goto_2

    .line 1008
    :cond_9
    iget-object v2, v0, Lcom/caverock/androidsvg/am;->d:Lcom/caverock/androidsvg/x;

    goto :goto_3

    .line 1012
    :cond_a
    instance-of v1, v0, Lcom/caverock/androidsvg/ba;

    if-eqz v1, :cond_d

    .line 1014
    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->e:Lcom/caverock/androidsvg/x;

    .line 1015
    :goto_5
    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->f:Lcom/caverock/androidsvg/x;

    .line 1016
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 1017
    check-cast v0, Lcom/caverock/androidsvg/ba;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ba;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;)V

    .line 1018
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    goto :goto_4

    .line 1014
    :cond_b
    new-instance v1, Lcom/caverock/androidsvg/x;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->i:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v5, v2}, Lcom/caverock/androidsvg/x;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_5

    .line 1015
    :cond_c
    new-instance v2, Lcom/caverock/androidsvg/x;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->i:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v5, v4}, Lcom/caverock/androidsvg/x;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_6

    .line 1022
    :cond_d
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;)V

    goto :goto_4
.end method

.method private a(Lcom/caverock/androidsvg/bk;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3714
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3716
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3734
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3721
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3722
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->b:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3725
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bk;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 3726
    if-nez v0, :cond_3

    .line 3727
    const-string/jumbo v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/bk;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3731
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 3733
    invoke-direct {p0, v0, v3, p2, p3}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2065
    const-wide/16 v8, 0x1000

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->n:Lcom/caverock/androidsvg/o;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Lcom/caverock/androidsvg/o;

    .line 2070
    :cond_0
    const-wide/16 v8, 0x800

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->m:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Ljava/lang/Float;

    .line 2075
    :cond_1
    const-wide/16 v8, 0x1

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2077
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    .line 2078
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    if-eqz v0, :cond_29

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/bt;->b:Z

    .line 2081
    :cond_2
    const-wide/16 v8, 0x4

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2083
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->d:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->d:Ljava/lang/Float;

    .line 2087
    :cond_3
    const-wide/16 v8, 0x1805

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2089
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V

    .line 2092
    :cond_4
    const-wide/16 v8, 0x2

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2094
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2098
    :cond_5
    const-wide/16 v8, 0x8

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2100
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    .line 2101
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/bt;->c:Z

    .line 2104
    :cond_6
    const-wide/16 v8, 0x10

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2106
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->f:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Ljava/lang/Float;

    .line 2109
    :cond_7
    const-wide/16 v8, 0x1818

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2111
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V

    .line 2114
    :cond_8
    const-wide v8, 0x800000000L

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2116
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2119
    :cond_9
    const-wide/16 v8, 0x20

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2121
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/x;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/x;

    .line 2122
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2125
    :cond_a
    const-wide/16 v8, 0x40

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2127
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2128
    invoke-static {}, Lcom/caverock/androidsvg/bm;->f()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 2144
    :cond_b
    :goto_2
    const-wide/16 v8, 0x80

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2146
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2147
    invoke-static {}, Lcom/caverock/androidsvg/bm;->g()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 2163
    :cond_c
    :goto_3
    const-wide/16 v8, 0x100

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2165
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    .line 2166
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2169
    :cond_d
    const-wide/16 v8, 0x200

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2171
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->k:[Lcom/caverock/androidsvg/x;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->k:[Lcom/caverock/androidsvg/x;

    .line 2174
    :cond_e
    const-wide/16 v8, 0x400

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2176
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/x;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/x;

    .line 2179
    :cond_f
    const-wide/16 v8, 0x600

    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2182
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->k:[Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_2b

    .line 2184
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2212
    :cond_10
    :goto_4
    const-wide/16 v6, 0x4000

    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2214
    invoke-virtual {p0}, Lcom/caverock/androidsvg/bm;->b()F

    move-result v0

    .line 2215
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/x;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/x;

    .line 2216
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/x;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2217
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/x;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2220
    :cond_11
    const-wide/16 v6, 0x2000

    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2222
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->o:Ljava/util/List;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Ljava/util/List;

    .line 2225
    :cond_12
    const-wide/32 v6, 0x8000

    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2228
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_30

    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_30

    .line 2229
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    .line 2236
    :cond_13
    :goto_5
    const-wide/32 v6, 0x10000

    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2238
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2242
    :cond_14
    const-wide/32 v6, 0x1a000

    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2247
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Ljava/util/List;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_38

    .line 2248
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->e()Lcom/caverock/androidsvg/bx;

    move-result-object v5

    .line 2250
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v4

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2259
    :goto_6
    if-nez v0, :cond_16

    .line 2261
    const-string/jumbo v0, "sans-serif"

    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v3, v4}, Lcom/caverock/androidsvg/bm;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2263
    :cond_16
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2264
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2267
    :cond_17
    const-wide/32 v4, 0x20000

    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2269
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2270
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->d:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v0, v4, :cond_33

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2271
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->b:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v0, v4, :cond_34

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_18

    .line 2275
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->d:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v0, v4, :cond_35

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2276
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->b:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_36

    :goto_a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2280
    :cond_18
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2282
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2285
    :cond_19
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2287
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2290
    :cond_1a
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2292
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    .line 2295
    :cond_1b
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2297
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    .line 2300
    :cond_1c
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2302
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    .line 2305
    :cond_1d
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2307
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    .line 2310
    :cond_1e
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2312
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/Boolean;

    .line 2315
    :cond_1f
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2317
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    .line 2320
    :cond_20
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2322
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/l;

    .line 2325
    :cond_21
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2327
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/String;

    .line 2330
    :cond_22
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2332
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->F:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2335
    :cond_23
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2337
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    .line 2340
    :cond_24
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2342
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->C:Lcom/caverock/androidsvg/av;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Lcom/caverock/androidsvg/av;

    .line 2345
    :cond_25
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2347
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/Float;

    .line 2350
    :cond_26
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2352
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/av;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/av;

    .line 2355
    :cond_27
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2357
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/Float;

    .line 2360
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 2078
    goto/16 :goto_0

    :cond_2a
    move v0, v2

    .line 2101
    goto/16 :goto_1

    .line 2131
    :pswitch_0
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2134
    :pswitch_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2137
    :pswitch_2
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_2

    .line 2150
    :pswitch_3
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2153
    :pswitch_4
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2156
    :pswitch_5
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_3

    .line 2189
    :cond_2b
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->k:[Lcom/caverock/androidsvg/x;

    array-length v3, v0

    .line 2192
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_2c

    move v0, v3

    .line 2193
    :goto_b
    new-array v8, v0, [F

    move v5, v2

    move v6, v7

    .line 2194
    :goto_c
    if-lt v5, v0, :cond_2d

    .line 2198
    cmpl-float v0, v6, v7

    if-nez v0, :cond_2e

    .line 2199
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_4

    .line 2192
    :cond_2c
    mul-int/lit8 v0, v3, 0x2

    goto :goto_b

    .line 2195
    :cond_2d
    iget-object v9, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->k:[Lcom/caverock/androidsvg/x;

    rem-int v10, v5, v3

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v9

    aput v9, v8, v5

    .line 2196
    aget v9, v8, v5

    add-float/2addr v6, v9

    .line 2194
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 2201
    :cond_2e
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    .line 2202
    cmpg-float v3, v0, v7

    if-gez v3, :cond_2f

    .line 2205
    rem-float/2addr v0, v6

    add-float/2addr v0, v6

    .line 2207
    :cond_2f
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    invoke-direct {v5, v8, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_4

    .line 2230
    :cond_30
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_31

    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x384

    if-ge v0, v3, :cond_31

    .line 2231
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2233
    :cond_31
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 2250
    :cond_32
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2251
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v3, v4}, Lcom/caverock/androidsvg/bm;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2252
    if-nez v3, :cond_37

    if-eqz v5, :cond_37

    .line 2253
    iget-object v3, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v3, v4}, Lcom/caverock/androidsvg/bx;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2255
    :goto_d
    if-eqz v0, :cond_15

    goto/16 :goto_6

    :cond_33
    move v0, v2

    .line 2270
    goto/16 :goto_7

    :cond_34
    move v0, v2

    .line 2271
    goto/16 :goto_8

    :cond_35
    move v0, v2

    .line 2275
    goto/16 :goto_9

    :cond_36
    move v1, v2

    .line 2276
    goto/16 :goto_a

    :cond_37
    move-object v0, v3

    goto :goto_d

    :cond_38
    move-object v0, v4

    goto/16 :goto_6

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p2, Lcom/caverock/androidsvg/as;->v:Lcom/caverock/androidsvg/aq;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 388
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->a(Z)V

    .line 391
    iget-object v0, p2, Lcom/caverock/androidsvg/as;->r:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p2, Lcom/caverock/androidsvg/as;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 406
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/as;->s:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p2, Lcom/caverock/androidsvg/as;->s:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 408
    :cond_3
    return-void

    .line 387
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c;

    .line 399
    iget-object v2, v0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/e;

    invoke-static {v2, p2}, Lcom/caverock/androidsvg/CSSParser;->a(Lcom/caverock/androidsvg/e;Lcom/caverock/androidsvg/as;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v0, v0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V
    .locals 2

    .prologue
    .line 2365
    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->d:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2367
    instance-of v0, p3, Lcom/caverock/androidsvg/o;

    if-eqz v0, :cond_2

    .line 2368
    check-cast p3, Lcom/caverock/androidsvg/o;

    iget v0, p3, Lcom/caverock/androidsvg/o;->a:I

    .line 2374
    :goto_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 2375
    if-eqz p2, :cond_3

    .line 2376
    iget-object v1, p1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2379
    :cond_0
    :goto_2
    return-void

    .line 2365
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Ljava/lang/Float;

    goto :goto_0

    .line 2369
    :cond_2
    instance-of v0, p3, Lcom/caverock/androidsvg/p;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Lcom/caverock/androidsvg/o;

    iget v0, v0, Lcom/caverock/androidsvg/o;->a:I

    goto :goto_1

    .line 2378
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/m;)V
    .locals 3

    .prologue
    .line 1134
    const-string/jumbo v0, "Circle render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    iget-object v0, p1, Lcom/caverock/androidsvg/m;->c:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/m;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1141
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p1, Lcom/caverock/androidsvg/m;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/m;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1149
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/m;)Landroid/graphics/Path;

    move-result-object v0

    .line 1150
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1155
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1157
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_3

    .line 1158
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1159
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_4

    .line 1160
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1162
    :cond_4
    if-eqz v1, :cond_0

    .line 1163
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/r;)V
    .locals 3

    .prologue
    .line 1172
    const-string/jumbo v0, "Ellipse render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    iget-object v0, p1, Lcom/caverock/androidsvg/r;->c:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/r;->d:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/r;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/r;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1179
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p1, Lcom/caverock/androidsvg/r;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/r;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1187
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/r;)Landroid/graphics/Path;

    move-result-object v0

    .line 1188
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1190
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1191
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1193
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1195
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->b:Z

    if-eqz v2, :cond_3

    .line 1196
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Landroid/graphics/Path;)V

    .line 1197
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v2, :cond_4

    .line 1198
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1200
    :cond_4
    if-eqz v1, :cond_0

    .line 1201
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/s;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3407
    iget-object v1, p1, Lcom/caverock/androidsvg/s;->u:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, p2}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v2

    .line 3408
    if-nez v2, :cond_1

    .line 3410
    const-string/jumbo v1, "Gradient reference \'%s\' not found"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3445
    :cond_0
    :goto_0
    return-void

    .line 3413
    :cond_1
    instance-of v1, v2, Lcom/caverock/androidsvg/s;

    if-nez v1, :cond_2

    .line 3414
    const-string/jumbo v1, "Gradient href attributes must point to other gradient elements"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3417
    :cond_2
    if-ne v2, p1, :cond_3

    .line 3418
    const-string/jumbo v1, "Circular reference in gradient href attribute \'%s\'"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 3422
    check-cast v1, Lcom/caverock/androidsvg/s;

    .line 3424
    iget-object v3, p1, Lcom/caverock/androidsvg/s;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 3425
    iget-object v3, v1, Lcom/caverock/androidsvg/s;->b:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/s;->b:Ljava/lang/Boolean;

    .line 3426
    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/s;->c:Landroid/graphics/Matrix;

    if-nez v3, :cond_5

    .line 3427
    iget-object v3, v1, Lcom/caverock/androidsvg/s;->c:Landroid/graphics/Matrix;

    iput-object v3, p1, Lcom/caverock/androidsvg/s;->c:Landroid/graphics/Matrix;

    .line 3428
    :cond_5
    iget-object v3, p1, Lcom/caverock/androidsvg/s;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v3, :cond_6

    .line 3429
    iget-object v3, v1, Lcom/caverock/androidsvg/s;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v3, p1, Lcom/caverock/androidsvg/s;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 3430
    :cond_6
    iget-object v3, p1, Lcom/caverock/androidsvg/s;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3431
    iget-object v3, v1, Lcom/caverock/androidsvg/s;->a:Ljava/util/List;

    iput-object v3, p1, Lcom/caverock/androidsvg/s;->a:Ljava/util/List;

    .line 3435
    :cond_7
    :try_start_0
    instance-of v3, p1, Lcom/caverock/androidsvg/at;

    if-eqz v3, :cond_8

    .line 3436
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/at;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/at;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/at;Lcom/caverock/androidsvg/at;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3443
    :goto_1
    iget-object v2, v1, Lcom/caverock/androidsvg/s;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3444
    iget-object v1, v1, Lcom/caverock/androidsvg/s;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/s;Ljava/lang/String;)V

    goto :goto_0

    .line 3438
    :cond_8
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/ax;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/ax;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ax;Lcom/caverock/androidsvg/ax;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3441
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/t;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 2890
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2951
    :cond_0
    :goto_0
    return-void

    .line 2897
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2898
    iget-object v0, p1, Lcom/caverock/androidsvg/t;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 2899
    if-eqz v0, :cond_4

    .line 2900
    check-cast v0, Lcom/caverock/androidsvg/z;

    move-object v1, v0

    .line 2905
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2906
    iget-object v0, p1, Lcom/caverock/androidsvg/t;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 2907
    if-eqz v0, :cond_6

    .line 2908
    check-cast v0, Lcom/caverock/androidsvg/z;

    move-object v3, v0

    .line 2913
    :goto_2
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2914
    iget-object v0, p1, Lcom/caverock/androidsvg/t;->u:Lcom/caverock/androidsvg/SVG;

    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v4, v4, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 2915
    if-eqz v0, :cond_8

    .line 2916
    check-cast v0, Lcom/caverock/androidsvg/z;

    move-object v4, v0

    .line 2922
    :goto_3
    instance-of v0, p1, Lcom/caverock/androidsvg/ad;

    if-eqz v0, :cond_a

    .line 2923
    new-instance v0, Lcom/caverock/androidsvg/bn;

    check-cast p1, Lcom/caverock/androidsvg/ad;

    iget-object v6, p1, Lcom/caverock/androidsvg/ad;->a:Lcom/caverock/androidsvg/ae;

    invoke-direct {v0, p0, v6}, Lcom/caverock/androidsvg/bn;-><init>(Lcom/caverock/androidsvg/bm;Lcom/caverock/androidsvg/ae;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bn;->a()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 2929
    :goto_4
    if-eqz v6, :cond_0

    .line 2932
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2933
    if-eqz v7, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v8, v8, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v9, v9, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v2, v9, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    iput-object v2, v8, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    .line 2939
    if-eqz v1, :cond_2

    .line 2940
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bo;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/z;Lcom/caverock/androidsvg/bo;)V

    .line 2942
    :cond_2
    if-eqz v3, :cond_3

    move v1, v5

    .line 2944
    :goto_5
    add-int/lit8 v0, v7, -0x1

    if-lt v1, v0, :cond_c

    .line 2949
    :cond_3
    if-eqz v4, :cond_0

    .line 2950
    add-int/lit8 v0, v7, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bo;

    invoke-direct {p0, v4, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/z;Lcom/caverock/androidsvg/bo;)V

    goto/16 :goto_0

    .line 2902
    :cond_4
    const-string/jumbo v0, "Marker reference \'%s\' not found"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->x:Ljava/lang/String;

    aput-object v3, v1, v10

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v1, v2

    goto/16 :goto_1

    .line 2910
    :cond_6
    const-string/jumbo v0, "Marker reference \'%s\' not found"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v4, v4, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v3, v2

    goto/16 :goto_2

    .line 2918
    :cond_8
    const-string/jumbo v0, "Marker reference \'%s\' not found"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v6, v6, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    aput-object v6, v4, v10

    invoke-static {v0, v4}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    move-object v4, v2

    goto/16 :goto_3

    .line 2924
    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/y;

    if-eqz v0, :cond_b

    .line 2925
    check-cast p1, Lcom/caverock/androidsvg/y;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/y;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    .line 2927
    :cond_b
    check-cast p1, Lcom/caverock/androidsvg/ah;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ah;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_4

    .line 2945
    :cond_c
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bo;

    invoke-direct {p0, v3, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/z;Lcom/caverock/androidsvg/bo;)V

    .line 2944
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method private a(Lcom/caverock/androidsvg/t;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3685
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3709
    :cond_0
    :goto_0
    return-void

    .line 3687
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3690
    iget-object v0, p1, Lcom/caverock/androidsvg/t;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3691
    iget-object v0, p1, Lcom/caverock/androidsvg/t;->e:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3694
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/aj;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 3695
    check-cast v0, Lcom/caverock/androidsvg/aj;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/aj;)Landroid/graphics/Path;

    move-result-object v0

    .line 3705
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 3707
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3708
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3696
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/m;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 3697
    check-cast v0, Lcom/caverock/androidsvg/m;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/m;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    .line 3698
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/r;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 3699
    check-cast v0, Lcom/caverock/androidsvg/r;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/r;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    .line 3700
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/ah;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 3701
    check-cast v0, Lcom/caverock/androidsvg/ah;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ah;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/caverock/androidsvg/u;)V
    .locals 2

    .prologue
    .line 601
    const-string/jumbo v0, "Group render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 605
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/u;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/u;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 612
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 614
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 616
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;Z)V

    .line 618
    if-eqz v0, :cond_2

    .line 619
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 621
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/w;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1865
    const-string/jumbo v0, "Image render"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1867
    iget-object v0, p1, Lcom/caverock/androidsvg/w;->d:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/w;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    iget-object v0, p1, Lcom/caverock/androidsvg/w;->e:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/w;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p1, Lcom/caverock/androidsvg/w;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/w;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1878
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/w;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1879
    if-nez v1, :cond_8

    .line 1881
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->e()Lcom/caverock/androidsvg/bx;

    move-result-object v1

    .line 1882
    if-eqz v1, :cond_0

    .line 1885
    iget-object v3, p1, Lcom/caverock/androidsvg/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/bx;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v4, v1

    .line 1887
    :goto_2
    if-nez v4, :cond_3

    .line 1888
    const-string/jumbo v0, "Could not locate image \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/w;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1875
    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->c:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1892
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1894
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p1, Lcom/caverock/androidsvg/w;->f:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    .line 1900
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/w;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1903
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/w;->b:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/caverock/androidsvg/w;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 1904
    :goto_3
    iget-object v3, p1, Lcom/caverock/androidsvg/w;->c:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/caverock/androidsvg/w;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 1905
    :goto_4
    iget-object v5, p1, Lcom/caverock/androidsvg/w;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v5

    .line 1906
    iget-object v6, p1, Lcom/caverock/androidsvg/w;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v6

    .line 1907
    iget-object v7, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    new-instance v8, Lcom/caverock/androidsvg/k;

    invoke-direct {v8, v1, v3, v5, v6}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    .line 1909
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1910
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v1, v1, Lcom/caverock/androidsvg/k;->a:F

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v3, v3, Lcom/caverock/androidsvg/k;->b:F

    iget-object v5, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v5, v5, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->c:F

    iget-object v6, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v6, v6, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget v6, v6, Lcom/caverock/androidsvg/k;->d:F

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    .line 1913
    :cond_5
    new-instance v1, Lcom/caverock/androidsvg/k;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v2, v3, v5}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v1, p1, Lcom/caverock/androidsvg/w;->o:Lcom/caverock/androidsvg/k;

    .line 1914
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    iget-object v5, p1, Lcom/caverock/androidsvg/w;->o:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, v3, v5, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1916
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1918
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1920
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 1922
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->v()V

    .line 1924
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v4, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1926
    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1903
    goto/16 :goto_3

    :cond_7
    move v3, v2

    .line 1904
    goto :goto_4

    :cond_8
    move-object v4, v1

    goto/16 :goto_2
.end method

.method private a(Lcom/caverock/androidsvg/y;)V
    .locals 2

    .prologue
    .line 1210
    const-string/jumbo v0, "Line render"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 1214
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->c:Z

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p1, Lcom/caverock/androidsvg/y;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/y;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1224
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/y;)Landroid/graphics/Path;

    move-result-object v0

    .line 1225
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;)V

    .line 1227
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/ar;)V

    .line 1228
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Lcom/caverock/androidsvg/ar;)V

    .line 1230
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v1

    .line 1232
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Landroid/graphics/Path;)V

    .line 1234
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/t;)V

    .line 1236
    if-eqz v1, :cond_0

    .line 1237
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    goto :goto_0
.end method

.method private a(Lcom/caverock/androidsvg/z;Lcom/caverock/androidsvg/bo;)V
    .locals 12

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 2959
    .line 2962
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 2965
    iget-object v0, p1, Lcom/caverock/androidsvg/z;->f:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 2967
    iget-object v0, p1, Lcom/caverock/androidsvg/z;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2969
    iget v0, p2, Lcom/caverock/androidsvg/bo;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/caverock/androidsvg/bo;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    .line 2970
    :cond_0
    iget v0, p2, Lcom/caverock/androidsvg/bo;->d:F

    float-to-double v2, v0

    iget v0, p2, Lcom/caverock/androidsvg/bo;->c:F

    float-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2977
    :goto_0
    iget-boolean v2, p1, Lcom/caverock/androidsvg/z;->a:Z

    if-eqz v2, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2981
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;

    move-result-object v3

    iput-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 2983
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2984
    iget v3, p2, Lcom/caverock/androidsvg/bo;->a:F

    iget v5, p2, Lcom/caverock/androidsvg/bo;->b:F

    invoke-virtual {v8, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2985
    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2986
    invoke-virtual {v8, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2988
    iget-object v0, p1, Lcom/caverock/androidsvg/z;->b:Lcom/caverock/androidsvg/x;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/caverock/androidsvg/z;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    .line 2989
    :goto_2
    iget-object v2, p1, Lcom/caverock/androidsvg/z;->c:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/caverock/androidsvg/z;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 2990
    :goto_3
    iget-object v3, p1, Lcom/caverock/androidsvg/z;->d:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/caverock/androidsvg/z;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 2991
    :goto_4
    iget-object v5, p1, Lcom/caverock/androidsvg/z;->e:Lcom/caverock/androidsvg/x;

    if-eqz v5, :cond_1

    iget-object v4, p1, Lcom/caverock/androidsvg/z;->e:Lcom/caverock/androidsvg/x;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v4

    .line 2993
    :cond_1
    iget-object v5, p1, Lcom/caverock/androidsvg/z;->x:Lcom/caverock/androidsvg/k;

    if-eqz v5, :cond_d

    .line 3000
    iget-object v5, p1, Lcom/caverock/androidsvg/z;->x:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->c:F

    div-float v7, v3, v5

    .line 3001
    iget-object v5, p1, Lcom/caverock/androidsvg/z;->x:Lcom/caverock/androidsvg/k;

    iget v5, v5, Lcom/caverock/androidsvg/k;->d:F

    div-float v6, v4, v5

    .line 3004
    iget-object v5, p1, Lcom/caverock/androidsvg/z;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v5, :cond_b

    iget-object v5, p1, Lcom/caverock/androidsvg/z;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3005
    :goto_5
    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3007
    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->b()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v9

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->b:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v9, v10, :cond_c

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_6
    move v7, v6

    .line 3012
    :cond_2
    neg-float v0, v0

    mul-float/2addr v0, v7

    neg-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3013
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3017
    iget-object v0, p1, Lcom/caverock/androidsvg/z;->x:Lcom/caverock/androidsvg/k;

    iget v0, v0, Lcom/caverock/androidsvg/k;->c:F

    mul-float/2addr v0, v7

    .line 3018
    iget-object v2, p1, Lcom/caverock/androidsvg/z;->x:Lcom/caverock/androidsvg/k;

    iget v2, v2, Lcom/caverock/androidsvg/k;->d:F

    mul-float/2addr v2, v6

    .line 3021
    invoke-static {}, Lcom/caverock/androidsvg/bm;->e()[I

    move-result-object v9

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 3035
    :goto_7
    invoke-static {}, Lcom/caverock/androidsvg/bm;->e()[I

    move-result-object v9

    .line 3038
    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v5

    aget v5, v9, v5

    packed-switch v5, :pswitch_data_1

    .line 3055
    :goto_8
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3056
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    .line 3059
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 3060
    invoke-virtual {v8, v7, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3061
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3075
    :cond_4
    :goto_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->m()Z

    move-result v0

    .line 3077
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aq;Z)V

    .line 3079
    if-eqz v0, :cond_5

    .line 3080
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/ar;)V

    .line 3082
    :cond_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3083
    return-void

    .line 2973
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/z;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_0

    .line 2977
    :cond_7
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/x;

    iget v3, p0, Lcom/caverock/androidsvg/bm;->c:F

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/x;->a(F)F

    move-result v2

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 2988
    goto/16 :goto_2

    :cond_9
    move v2, v1

    .line 2989
    goto/16 :goto_3

    :cond_a
    move v3, v4

    .line 2990
    goto/16 :goto_4

    .line 3004
    :cond_b
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->c:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_5

    .line 3007
    :cond_c
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_6

    .line 3026
    :pswitch_1
    sub-float v0, v3, v0

    div-float/2addr v0, v11

    sub-float v0, v1, v0

    .line 3027
    goto :goto_7

    .line 3031
    :pswitch_2
    sub-float v0, v3, v0

    sub-float v0, v1, v0

    .line 3032
    goto :goto_7

    .line 3043
    :pswitch_3
    sub-float v2, v4, v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    .line 3044
    goto :goto_8

    .line 3048
    :pswitch_4
    sub-float v2, v4, v2

    sub-float/2addr v1, v2

    .line 3049
    goto :goto_8

    .line 3067
    :cond_d
    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3068
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3070
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3071
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/caverock/androidsvg/bm;->a(FFFF)V

    goto :goto_9

    :cond_e
    move v0, v1

    goto/16 :goto_0

    .line 3021
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3038
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 505
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/bm;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(ZLcom/caverock/androidsvg/ak;)V
    .locals 10

    .prologue
    const-wide v8, 0x180000000L

    const-wide v6, 0x100000000L

    const-wide v4, 0x80000000L

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3479
    if-eqz p1, :cond_4

    .line 3481
    iget-object v2, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3483
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->H:Lcom/caverock/androidsvg/av;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    .line 3484
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->H:Lcom/caverock/androidsvg/av;

    if-eqz v3, :cond_3

    :goto_0
    iput-boolean v0, v2, Lcom/caverock/androidsvg/bt;->b:Z

    .line 3487
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3489
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->d:Ljava/lang/Float;

    .line 3493
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3495
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V

    .line 3518
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 3484
    goto :goto_0

    .line 3500
    :cond_4
    iget-object v2, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3502
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->H:Lcom/caverock/androidsvg/av;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    .line 3503
    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->H:Lcom/caverock/androidsvg/av;

    if-eqz v3, :cond_7

    :goto_2
    iput-boolean v0, v2, Lcom/caverock/androidsvg/bt;->c:Z

    .line 3506
    :cond_5
    iget-object v0, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3508
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Ljava/lang/Float;

    .line 3512
    :cond_6
    iget-object v0, p2, Lcom/caverock/androidsvg/ak;->r:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v8, v9}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3514
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 3503
    goto :goto_2
.end method

.method private a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/ac;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3158
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v1

    .line 3159
    if-nez v1, :cond_4

    .line 3161
    const-string/jumbo v1, "%s reference \'%s\' not found"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Fill"

    :goto_0
    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v3, p3, Lcom/caverock/androidsvg/ac;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3162
    iget-object v0, p3, Lcom/caverock/androidsvg/ac;->b:Lcom/caverock/androidsvg/av;

    if-eqz v0, :cond_2

    .line 3163
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p3, Lcom/caverock/androidsvg/ac;->b:Lcom/caverock/androidsvg/av;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;ZLcom/caverock/androidsvg/av;)V

    .line 3179
    :cond_0
    :goto_1
    return-void

    .line 3161
    :cond_1
    const-string/jumbo v0, "Stroke"

    goto :goto_0

    .line 3165
    :cond_2
    if-eqz p1, :cond_3

    .line 3166
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/bt;->b:Z

    goto :goto_1

    .line 3168
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/bt;->c:Z

    goto :goto_1

    .line 3172
    :cond_4
    instance-of v0, v1, Lcom/caverock/androidsvg/at;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 3173
    check-cast v0, Lcom/caverock/androidsvg/at;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/bm;->a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/at;)V

    .line 3174
    :cond_5
    instance-of v0, v1, Lcom/caverock/androidsvg/ax;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 3175
    check-cast v0, Lcom/caverock/androidsvg/ax;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/bm;->a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/ax;)V

    .line 3176
    :cond_6
    instance-of v0, v1, Lcom/caverock/androidsvg/ak;

    if-eqz v0, :cond_0

    .line 3177
    check-cast v1, Lcom/caverock/androidsvg/ak;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/bm;->a(ZLcom/caverock/androidsvg/ak;)V

    goto :goto_1
.end method

.method private a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/at;)V
    .locals 15

    .prologue
    .line 3184
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3185
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->e:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/s;Ljava/lang/String;)V

    .line 3187
    :cond_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v6, v1

    .line 3188
    :goto_0
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    move-object v10, v1

    .line 3191
    :goto_1
    if-eqz v6, :cond_9

    .line 3193
    invoke-virtual {p0}, Lcom/caverock/androidsvg/bm;->d()Lcom/caverock/androidsvg/k;

    move-result-object v3

    .line 3194
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 3195
    :goto_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 3196
    :goto_3
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 3197
    :goto_4
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_8

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v4

    :goto_5
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    .line 3208
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 3211
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 3214
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 3215
    if-nez v6, :cond_1

    .line 3217
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/k;->a:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3218
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/k;->c:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/caverock/androidsvg/k;->d:F

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3220
    :cond_1
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->c:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 3222
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->c:Landroid/graphics/Matrix;

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3226
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 3227
    if-nez v12, :cond_f

    .line 3229
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3230
    if-eqz p1, :cond_e

    .line 3231
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/bt;->b:Z

    .line 3288
    :goto_7
    return-void

    .line 3187
    :cond_3
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_0

    .line 3188
    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    move-object v10, v1

    goto/16 :goto_1

    .line 3194
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 3195
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 3196
    :cond_7
    iget v3, v3, Lcom/caverock/androidsvg/k;->c:F

    goto :goto_4

    .line 3197
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 3201
    :cond_9
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_a

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->f:Lcom/caverock/androidsvg/x;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0, v2}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v1

    .line 3202
    :goto_8
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_b

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/at;->g:Lcom/caverock/androidsvg/x;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v2

    .line 3203
    :goto_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_c

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/at;->h:Lcom/caverock/androidsvg/x;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v3

    .line 3204
    :goto_a
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_d

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/at;->i:Lcom/caverock/androidsvg/x;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v4

    :goto_b
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_6

    .line 3201
    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    .line 3202
    :cond_b
    const/4 v2, 0x0

    goto :goto_9

    .line 3203
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_a

    .line 3204
    :cond_d
    const/4 v4, 0x0

    goto :goto_b

    .line 3233
    :cond_e
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/bt;->c:Z

    goto :goto_7

    .line 3237
    :cond_f
    new-array v6, v12, [I

    .line 3238
    new-array v7, v12, [F

    .line 3239
    const/4 v8, 0x0

    .line 3240
    const/high16 v1, -0x40800000    # -1.0f

    .line 3241
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/at;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v9, v8

    move v8, v1

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3266
    cmpl-float v1, v2, v4

    if-nez v1, :cond_10

    cmpl-float v1, v3, v5

    if-eqz v1, :cond_11

    :cond_10
    const/4 v1, 0x1

    if-ne v12, v1, :cond_16

    .line 3267
    :cond_11
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3268
    add-int/lit8 v1, v12, -0x1

    aget v1, v6, v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 3241
    :cond_12
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/au;

    .line 3243
    check-cast v1, Lcom/caverock/androidsvg/al;

    .line 3244
    if-eqz v9, :cond_13

    iget-object v14, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v8

    if-ltz v14, :cond_15

    .line 3245
    :cond_13
    iget-object v8, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v9

    .line 3246
    iget-object v8, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 3253
    :goto_d
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 3255
    iget-object v14, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v14, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3256
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->C:Lcom/caverock/androidsvg/av;

    check-cast v1, Lcom/caverock/androidsvg/o;

    .line 3257
    if-nez v1, :cond_14

    .line 3258
    sget-object v1, Lcom/caverock/androidsvg/o;->b:Lcom/caverock/androidsvg/o;

    .line 3259
    :cond_14
    iget-object v14, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v14, v14, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-direct {p0, v14}, Lcom/caverock/androidsvg/bm;->a(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    iget v1, v1, Lcom/caverock/androidsvg/o;->a:I

    or-int/2addr v1, v14

    aput v1, v6, v9

    .line 3260
    add-int/lit8 v1, v9, 0x1

    .line 3262
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    move v9, v1

    goto :goto_c

    .line 3250
    :cond_15
    aput v8, v7, v9

    goto :goto_d

    .line 3273
    :cond_16
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3274
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v1, :cond_17

    .line 3276
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v9, Lcom/caverock/androidsvg/SVG$GradientSpread;->b:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v9, :cond_18

    .line 3277
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 3282
    :cond_17
    :goto_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3285
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3286
    invoke-virtual {v1, v11}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3287
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_7

    .line 3278
    :cond_18
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/at;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v9, Lcom/caverock/androidsvg/SVG$GradientSpread;->c:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v9, :cond_17

    .line 3279
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_e
.end method

.method private a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/ax;)V
    .locals 14

    .prologue
    .line 3293
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3294
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->e:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/s;Ljava/lang/String;)V

    .line 3296
    :cond_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v5, v1

    .line 3297
    :goto_0
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    move-object v9, v1

    .line 3300
    :goto_1
    if-eqz v5, :cond_8

    .line 3302
    new-instance v3, Lcom/caverock/androidsvg/x;

    const/high16 v1, 0x42480000    # 50.0f

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->i:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v1, v2}, Lcom/caverock/androidsvg/x;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3303
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 3304
    :goto_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 3305
    :goto_3
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    if-eqz v4, :cond_7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    :goto_4
    move v4, v3

    move v3, v2

    move v2, v1

    .line 3317
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 3320
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 3323
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 3324
    if-nez v5, :cond_1

    .line 3326
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/k;->a:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/k;->b:F

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3327
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/k;->c:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/k;->d:F

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3329
    :cond_1
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->c:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 3331
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->c:Landroid/graphics/Matrix;

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3335
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 3336
    if-nez v11, :cond_d

    .line 3338
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3339
    if-eqz p1, :cond_c

    .line 3340
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/bt;->b:Z

    .line 3397
    :goto_6
    return-void

    .line 3296
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto/16 :goto_0

    .line 3297
    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->e:Landroid/graphics/Paint;

    move-object v9, v1

    goto/16 :goto_1

    .line 3303
    :cond_5
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    goto :goto_2

    .line 3304
    :cond_6
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    goto :goto_3

    .line 3305
    :cond_7
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    goto :goto_4

    .line 3309
    :cond_8
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->f:Lcom/caverock/androidsvg/x;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0, v2}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v1

    .line 3310
    :goto_7
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    if-eqz v2, :cond_a

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/ax;->g:Lcom/caverock/androidsvg/x;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v2

    .line 3311
    :goto_8
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    if-eqz v3, :cond_b

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/ax;->h:Lcom/caverock/androidsvg/x;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;F)F

    move-result v3

    :goto_9
    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_5

    .line 3309
    :cond_9
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_7

    .line 3310
    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_8

    .line 3311
    :cond_b
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_9

    .line 3342
    :cond_c
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/bt;->c:Z

    goto :goto_6

    .line 3346
    :cond_d
    new-array v5, v11, [I

    .line 3347
    new-array v6, v11, [F

    .line 3348
    const/4 v7, 0x0

    .line 3349
    const/high16 v1, -0x40800000    # -1.0f

    .line 3350
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/caverock/androidsvg/ax;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v7

    move v7, v1

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3375
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    if-ne v11, v1, :cond_13

    .line 3376
    :cond_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3377
    add-int/lit8 v1, v11, -0x1

    aget v1, v5, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_6

    .line 3350
    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/au;

    .line 3352
    check-cast v1, Lcom/caverock/androidsvg/al;

    .line 3353
    if-eqz v8, :cond_10

    iget-object v13, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v13, v13, v7

    if-ltz v13, :cond_12

    .line 3354
    :cond_10
    iget-object v7, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v8

    .line 3355
    iget-object v7, v1, Lcom/caverock/androidsvg/al;->a:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 3362
    :goto_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->j()V

    .line 3364
    iget-object v13, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-direct {p0, v13, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/as;)V

    .line 3365
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->C:Lcom/caverock/androidsvg/av;

    check-cast v1, Lcom/caverock/androidsvg/o;

    .line 3366
    if-nez v1, :cond_11

    .line 3367
    sget-object v1, Lcom/caverock/androidsvg/o;->b:Lcom/caverock/androidsvg/o;

    .line 3368
    :cond_11
    iget-object v13, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v13, v13, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {p0, v13}, Lcom/caverock/androidsvg/bm;->a(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    iget v1, v1, Lcom/caverock/androidsvg/o;->a:I

    or-int/2addr v1, v13

    aput v1, v5, v8

    .line 3369
    add-int/lit8 v1, v8, 0x1

    .line 3371
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    move v8, v1

    goto :goto_a

    .line 3359
    :cond_12
    aput v7, v6, v8

    goto :goto_b

    .line 3382
    :cond_13
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3383
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v1, :cond_14

    .line 3385
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v8, Lcom/caverock/androidsvg/SVG$GradientSpread;->b:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v8, :cond_15

    .line 3386
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 3391
    :cond_14
    :goto_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 3394
    new-instance v1, Landroid/graphics/RadialGradient;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3395
    invoke-virtual {v1, v10}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3396
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_6

    .line 3387
    :cond_15
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/ax;->d:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v8, Lcom/caverock/androidsvg/SVG$GradientSpread;->c:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v8, :cond_14

    .line 3388
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_c
.end method

.method private a(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4

    .prologue
    .line 2054
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->a:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/caverock/androidsvg/bm;)Z
    .locals 1

    .prologue
    .line 1963
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->t()Z

    move-result v0

    return v0
.end method

.method private static a(DD)[F
    .locals 20

    .prologue
    .line 2685
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v4, v2

    .line 2687
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 2688
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 2689
    int-to-double v8, v4

    div-double/2addr v2, v8

    double-to-float v5, v2

    .line 2692
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-double v8, v2, v8

    .line 2694
    mul-int/lit8 v2, v4, 0x6

    new-array v10, v2, [F

    .line 2695
    const/4 v3, 0x0

    .line 2697
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 2716
    return-object v10

    .line 2699
    :cond_0
    int-to-float v11, v2

    mul-float/2addr v11, v5

    float-to-double v12, v11

    add-double/2addr v12, v6

    .line 2701
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 2702
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 2704
    add-int/lit8 v11, v3, 0x1

    mul-double v18, v8, v16

    sub-double v18, v14, v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v10, v3

    .line 2705
    add-int/lit8 v3, v11, 0x1

    mul-double/2addr v14, v8

    add-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v10, v11

    .line 2707
    float-to-double v14, v5

    add-double/2addr v12, v14

    .line 2708
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 2709
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 2710
    add-int/lit8 v11, v3, 0x1

    mul-double v16, v8, v12

    add-double v16, v16, v14

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v10, v3

    .line 2711
    add-int/lit8 v3, v11, 0x1

    mul-double v16, v8, v14

    sub-double v16, v12, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v10, v11

    .line 2713
    add-int/lit8 v11, v3, 0x1

    double-to-float v14, v14

    aput v14, v10, v3

    .line 2714
    add-int/lit8 v3, v11, 0x1

    double-to-float v12, v12

    aput v12, v10, v11

    .line 2697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private b(Lcom/caverock/androidsvg/aj;)Landroid/graphics/Path;
    .locals 17

    .prologue
    .line 3846
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->f:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->g:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_2

    .line 3847
    const/4 v2, 0x0

    .line 3848
    const/4 v1, 0x0

    .line 3857
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/caverock/androidsvg/aj;->c:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 3858
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/aj;->d:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 3859
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->a:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_5

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->a:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 3860
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->b:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->b:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v5

    .line 3861
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->c:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 3862
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/caverock/androidsvg/aj;->d:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 3864
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/aj;->o:Lcom/caverock/androidsvg/k;

    if-nez v4, :cond_0

    .line 3865
    new-instance v4, Lcom/caverock/androidsvg/k;

    invoke-direct {v4, v2, v5, v1, v3}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/caverock/androidsvg/aj;->o:Lcom/caverock/androidsvg/k;

    .line 3868
    :cond_0
    add-float v12, v2, v1

    .line 3869
    add-float v10, v5, v3

    .line 3871
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3872
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-nez v3, :cond_7

    .line 3875
    :cond_1
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3876
    invoke-virtual {v1, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3877
    invoke-virtual {v1, v12, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3878
    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3879
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3899
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3900
    return-object v1

    .line 3849
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->f:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_3

    .line 3850
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->g:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    move v2, v1

    .line 3851
    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->g:Lcom/caverock/androidsvg/x;

    if-nez v1, :cond_4

    .line 3852
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->f:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    move v2, v1

    .line 3853
    goto/16 :goto_0

    .line 3854
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->f:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 3855
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/aj;->g:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    goto/16 :goto_0

    .line 3859
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3860
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 3886
    :cond_7
    const v3, 0x3f0d6289

    mul-float v14, v13, v3

    .line 3887
    const v3, 0x3f0d6289

    mul-float v16, v15, v3

    .line 3889
    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3890
    add-float v3, v5, v15

    sub-float v3, v3, v16

    add-float v4, v2, v13

    sub-float/2addr v4, v14

    add-float v6, v2, v13

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3891
    sub-float v3, v12, v13

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3892
    sub-float v3, v12, v13

    add-float v4, v3, v14

    add-float v3, v5, v15

    sub-float v7, v3, v16

    add-float v9, v5, v15

    move-object v3, v1

    move v6, v12

    move v8, v12

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3893
    sub-float v3, v10, v15

    invoke-virtual {v1, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3894
    sub-float v3, v10, v15

    add-float v8, v3, v16

    sub-float v3, v12, v13

    add-float v9, v3, v14

    sub-float v11, v12, v13

    move-object v6, v1

    move v7, v12

    move v12, v10

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3895
    add-float v3, v2, v13

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3896
    add-float v3, v2, v13

    sub-float v9, v3, v14

    sub-float v3, v10, v15

    add-float v12, v3, v16

    sub-float v14, v10, v15

    move-object v8, v1

    move v11, v2

    move v13, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3897
    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method private b(Lcom/caverock/androidsvg/m;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 3906
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/m;->a:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/m;->a:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v13

    .line 3907
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/m;->b:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/m;->b:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v7

    .line 3908
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/m;->c:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->c(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 3910
    sub-float v17, v13, v1

    .line 3911
    sub-float v3, v7, v1

    .line 3912
    add-float v4, v13, v1

    .line 3913
    add-float v12, v7, v1

    .line 3915
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/m;->o:Lcom/caverock/androidsvg/k;

    if-nez v2, :cond_0

    .line 3916
    new-instance v2, Lcom/caverock/androidsvg/k;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/m;->o:Lcom/caverock/androidsvg/k;

    .line 3919
    :cond_0
    const v2, 0x3f0d6289

    mul-float v21, v1, v2

    .line 3921
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3922
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3923
    add-float v2, v13, v21

    sub-float v5, v7, v21

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3924
    add-float v10, v7, v21

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3925
    sub-float v15, v13, v21

    add-float v18, v7, v21

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3926
    sub-float v18, v7, v21

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3927
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3928
    return-object v1

    .line 3906
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 3907
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private b(Lcom/caverock/androidsvg/r;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 3934
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/r;->a:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/r;->a:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v13

    .line 3935
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/r;->b:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/r;->b:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v7

    .line 3936
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/r;->c:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    .line 3937
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/r;->d:Lcom/caverock/androidsvg/x;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 3939
    sub-float v17, v13, v1

    .line 3940
    sub-float v3, v7, v2

    .line 3941
    add-float v4, v13, v1

    .line 3942
    add-float v12, v7, v2

    .line 3944
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/caverock/androidsvg/r;->o:Lcom/caverock/androidsvg/k;

    if-nez v5, :cond_0

    .line 3945
    new-instance v5, Lcom/caverock/androidsvg/k;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v2

    move/from16 v0, v17

    invoke-direct {v5, v0, v3, v6, v8}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/caverock/androidsvg/r;->o:Lcom/caverock/androidsvg/k;

    .line 3948
    :cond_0
    const v5, 0x3f0d6289

    mul-float v21, v1, v5

    .line 3949
    const v1, 0x3f0d6289

    mul-float v22, v2, v1

    .line 3951
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3952
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3953
    add-float v2, v13, v21

    sub-float v5, v7, v22

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3954
    add-float v10, v7, v22

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3955
    sub-float v15, v13, v21

    add-float v18, v7, v22

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3956
    sub-float v18, v7, v22

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3957
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3958
    return-object v1

    .line 3934
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3935
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/caverock/androidsvg/bm;)Lcom/caverock/androidsvg/bt;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    return-object v0
.end method

.method private b(Landroid/graphics/Path;)Lcom/caverock/androidsvg/k;
    .locals 5

    .prologue
    .line 1084
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1085
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1086
    new-instance v1, Lcom/caverock/androidsvg/k;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    return-object v1
.end method

.method private b(Lcom/caverock/androidsvg/ah;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/ah;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/bo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1301
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    array-length v8, v0

    .line 1303
    if-ge v8, v7, :cond_0

    .line 1304
    const/4 v0, 0x0

    .line 1336
    :goto_0
    return-object v0

    .line 1306
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    new-instance v0, Lcom/caverock/androidsvg/bo;

    iget-object v1, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v2, v1, v9

    iget-object v1, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v3, v1, v10

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bo;-><init>(Lcom/caverock/androidsvg/bm;FFFF)V

    move v2, v4

    move-object v1, v0

    .line 1310
    :goto_1
    if-lt v7, v8, :cond_2

    .line 1320
    instance-of v0, p1, Lcom/caverock/androidsvg/ai;

    if-eqz v0, :cond_3

    .line 1321
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v0, v0, v9

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v0, v0, v10

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v2, v0, v9

    .line 1323
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v3, v0, v10

    .line 1324
    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/bo;->a(FF)V

    .line 1325
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    new-instance v0, Lcom/caverock/androidsvg/bo;

    iget v4, v1, Lcom/caverock/androidsvg/bo;->a:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/bo;->b:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bo;-><init>(Lcom/caverock/androidsvg/bm;FFFF)V

    .line 1329
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/bo;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/bo;->a(Lcom/caverock/androidsvg/bo;)V

    .line 1330
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-interface {v6, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    move-object v0, v6

    .line 1336
    goto :goto_0

    .line 1311
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v2, v0, v7

    .line 1312
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    .line 1313
    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/bo;->a(FF)V

    .line 1314
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v0, Lcom/caverock/androidsvg/bo;

    iget v4, v1, Lcom/caverock/androidsvg/bo;->a:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/bo;->b:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bo;-><init>(Lcom/caverock/androidsvg/bm;FFFF)V

    .line 1310
    add-int/lit8 v1, v7, 0x2

    move v7, v1

    move v4, v3

    move-object v1, v0

    goto :goto_1

    .line 1334
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private b(Lcom/caverock/androidsvg/y;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/y;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/bo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1244
    iget-object v1, p1, Lcom/caverock/androidsvg/y;->a:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/caverock/androidsvg/y;->a:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    .line 1245
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/y;->b:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/caverock/androidsvg/y;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    .line 1246
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/y;->c:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/caverock/androidsvg/y;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    move v6, v1

    .line 1247
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/y;->d:Lcom/caverock/androidsvg/x;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/y;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    move v7, v0

    .line 1249
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1250
    new-instance v0, Lcom/caverock/androidsvg/bo;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bo;-><init>(Lcom/caverock/androidsvg/bm;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v0, Lcom/caverock/androidsvg/bo;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bo;-><init>(Lcom/caverock/androidsvg/bm;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    return-object v8

    :cond_0
    move v2, v0

    .line 1244
    goto :goto_0

    :cond_1
    move v3, v0

    .line 1245
    goto :goto_1

    :cond_2
    move v6, v0

    .line 1246
    goto :goto_2

    :cond_3
    move v7, v0

    .line 1247
    goto :goto_3
.end method

.method private static b(FFFFFZZFFLcom/caverock/androidsvg/af;)V
    .locals 28

    .prologue
    .line 2551
    cmpl-float v4, p0, p7

    if-nez v4, :cond_1

    cmpl-float v4, p1, p8

    if-nez v4, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 2559
    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_3

    .line 2560
    :cond_2
    move-object/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/caverock/androidsvg/af;->b(FF)V

    goto :goto_0

    .line 2565
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2566
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 2569
    move/from16 v0, p4

    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 2570
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 2571
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 2578
    sub-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 2579
    sub-float v6, p1, p8

    float-to-double v6, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    .line 2582
    mul-double v10, v12, v4

    mul-double v16, v14, v6

    add-double v16, v16, v10

    .line 2583
    neg-double v10, v14

    mul-double/2addr v4, v10

    mul-double/2addr v6, v12

    add-double v18, v4, v6

    .line 2585
    mul-float v4, v9, v9

    float-to-double v6, v4

    .line 2586
    mul-float v4, v8, v8

    float-to-double v4, v4

    .line 2587
    mul-double v20, v16, v16

    .line 2588
    mul-double v22, v18, v18

    .line 2593
    div-double v10, v20, v6

    div-double v24, v22, v4

    add-double v10, v10, v24

    .line 2594
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v10, v24

    if-lez v24, :cond_a

    .line 2595
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v9, v4

    .line 2596
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 2597
    mul-float v4, v9, v9

    float-to-double v6, v4

    .line 2598
    mul-float v4, v8, v8

    float-to-double v4, v4

    move v10, v8

    move v11, v9

    move-wide v8, v6

    move-wide v6, v4

    .line 2602
    :goto_1
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_6

    const/4 v4, -0x1

    :goto_2
    int-to-double v0, v4

    move-wide/from16 v24, v0

    .line 2603
    mul-double v4, v8, v6

    mul-double v26, v8, v22

    sub-double v4, v4, v26

    mul-double v26, v6, v20

    sub-double v4, v4, v26

    mul-double v8, v8, v22

    mul-double v6, v6, v20

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 2604
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    const-wide/16 v4, 0x0

    .line 2605
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v4, v4, v24

    .line 2606
    float-to-double v6, v11

    mul-double v6, v6, v18

    float-to-double v8, v10

    div-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 2607
    float-to-double v8, v10

    mul-double v8, v8, v16

    float-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v8, v8, v20

    neg-double v8, v8

    mul-double/2addr v4, v8

    .line 2610
    add-float v8, p0, p7

    float-to-double v8, v8

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v8, v8, v20

    .line 2611
    add-float v20, p1, p8

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    .line 2612
    mul-double v22, v12, v6

    mul-double v24, v14, v4

    sub-double v22, v22, v24

    add-double v8, v8, v22

    .line 2613
    mul-double/2addr v14, v6

    mul-double/2addr v12, v4

    add-double/2addr v12, v14

    add-double v12, v12, v20

    .line 2616
    sub-double v14, v16, v6

    float-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v14, v14, v20

    .line 2617
    sub-double v20, v18, v4

    float-to-double v0, v10

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    .line 2618
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    sub-double v6, v16, v6

    float-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    .line 2619
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v16, v0

    sub-double v4, v16, v4

    float-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    .line 2623
    mul-double v4, v14, v14

    mul-double v18, v20, v20

    add-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 2625
    const-wide/16 v4, 0x0

    cmpg-double v4, v20, v4

    if-gez v4, :cond_7

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 2626
    :goto_3
    div-double v18, v14, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    mul-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    .line 2629
    mul-double v4, v14, v14

    mul-double v22, v20, v20

    add-double v4, v4, v22

    mul-double v22, v6, v6

    mul-double v24, v16, v16

    add-double v22, v22, v24

    mul-double v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 2630
    mul-double v4, v14, v6

    mul-double v24, v20, v16

    add-double v24, v24, v4

    .line 2631
    mul-double v4, v14, v16

    mul-double v6, v6, v20

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 2632
    :goto_4
    div-double v6, v24, v22

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 2633
    if-nez p6, :cond_9

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_9

    .line 2634
    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double/2addr v4, v6

    .line 2638
    :cond_5
    :goto_5
    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    .line 2639
    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v6, v18, v6

    .line 2645
    invoke-static {v6, v7, v4, v5}, Lcom/caverock/androidsvg/bm;->a(DD)[F

    move-result-object v14

    .line 2648
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 2649
    invoke-virtual {v4, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2650
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2651
    double-to-float v5, v8

    double-to-float v6, v12

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2652
    invoke-virtual {v4, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2658
    array-length v4, v14

    add-int/lit8 v4, v4, -0x2

    aput p7, v14, v4

    .line 2659
    array-length v4, v14

    add-int/lit8 v4, v4, -0x1

    aput p8, v14, v4

    .line 2662
    const/4 v4, 0x0

    move v11, v4

    :goto_6
    array-length v4, v14

    if-ge v11, v4, :cond_0

    .line 2664
    aget v5, v14, v11

    add-int/lit8 v4, v11, 0x1

    aget v6, v14, v4

    add-int/lit8 v4, v11, 0x2

    aget v7, v14, v4

    add-int/lit8 v4, v11, 0x3

    aget v8, v14, v4

    add-int/lit8 v4, v11, 0x4

    aget v9, v14, v4

    add-int/lit8 v4, v11, 0x5

    aget v10, v14, v4

    move-object/from16 v4, p9

    invoke-interface/range {v4 .. v10}, Lcom/caverock/androidsvg/af;->a(FFFFFF)V

    .line 2662
    add-int/lit8 v4, v11, 0x6

    move v11, v4

    goto :goto_6

    .line 2602
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 2625
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3

    .line 2631
    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    .line 2635
    :cond_9
    if-eqz p6, :cond_5

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    .line 2636
    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v6

    goto :goto_5

    :cond_a
    move v10, v8

    move v11, v9

    move-wide v8, v6

    move-wide v6, v4

    goto/16 :goto_1
.end method

.method private b(Lcom/caverock/androidsvg/ar;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 707
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->i:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 710
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->o()V

    .line 711
    check-cast v0, Lcom/caverock/androidsvg/aa;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/aa;Lcom/caverock/androidsvg/ar;)V

    .line 713
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 716
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    .line 717
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 719
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 720
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v2, v2, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 721
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 722
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->k()V

    .line 726
    return-void
.end method

.method private b(Lcom/caverock/androidsvg/au;)V
    .locals 2

    .prologue
    .line 416
    instance-of v0, p1, Lcom/caverock/androidsvg/as;

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    check-cast p1, Lcom/caverock/androidsvg/as;

    .line 420
    iget-object v0, p1, Lcom/caverock/androidsvg/as;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p1, Lcom/caverock/androidsvg/as;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/caverock/androidsvg/bt;->h:Z

    goto :goto_0
.end method

.method private b(Lcom/caverock/androidsvg/az;)V
    .locals 8

    .prologue
    .line 831
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 832
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->e()Lcom/caverock/androidsvg/bx;

    move-result-object v4

    .line 835
    invoke-virtual {p1}, Lcom/caverock/androidsvg/az;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    :goto_1
    return-void

    .line 835
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/au;

    .line 838
    instance-of v1, v0, Lcom/caverock/androidsvg/an;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 841
    check-cast v1, Lcom/caverock/androidsvg/an;

    .line 844
    invoke-interface {v1}, Lcom/caverock/androidsvg/an;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 848
    invoke-interface {v1}, Lcom/caverock/androidsvg/an;->d()Ljava/util/Set;

    move-result-object v2

    .line 849
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    :cond_2
    invoke-interface {v1}, Lcom/caverock/androidsvg/an;->b()Ljava/util/Set;

    move-result-object v2

    .line 854
    if-eqz v2, :cond_4

    .line 855
    sget-object v6, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    if-nez v6, :cond_3

    .line 856
    invoke-static {}, Lcom/caverock/androidsvg/bm;->q()V

    .line 857
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    :cond_4
    invoke-interface {v1}, Lcom/caverock/androidsvg/an;->e()Ljava/util/Set;

    move-result-object v2

    .line 863
    if-eqz v2, :cond_6

    .line 864
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    .line 866
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 872
    :cond_6
    invoke-interface {v1}, Lcom/caverock/androidsvg/an;->f()Ljava/util/Set;

    move-result-object v1

    .line 873
    if-eqz v1, :cond_8

    .line 874
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v4, :cond_0

    .line 876
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 883
    :cond_8
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;)V

    goto :goto_1

    .line 866
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 867
    invoke-virtual {v4, v2}, Lcom/caverock/androidsvg/bx;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 876
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 877
    iget-object v6, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v6, v6, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v7, v7, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/caverock/androidsvg/bx;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_0
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/caverock/androidsvg/bm;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private c(Lcom/caverock/androidsvg/ah;)Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 3964
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3966
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->a:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/ah;->a:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3967
    const/4 v0, 0x2

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/ah;->a:[F

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 3970
    instance-of v0, p1, Lcom/caverock/androidsvg/ai;

    if-eqz v0, :cond_0

    .line 3971
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3973
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/ah;->o:Lcom/caverock/androidsvg/k;

    if-nez v0, :cond_1

    .line 3974
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->b(Landroid/graphics/Path;)Lcom/caverock/androidsvg/k;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/ah;->o:Lcom/caverock/androidsvg/k;

    .line 3977
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->y()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3978
    return-object v1

    .line 3968
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/ah;->a:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/caverock/androidsvg/ah;->a:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3967
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private c(Lcom/caverock/androidsvg/y;)Landroid/graphics/Path;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 3826
    iget-object v0, p1, Lcom/caverock/androidsvg/y;->a:Lcom/caverock/androidsvg/x;

    if-nez v0, :cond_1

    move v0, v1

    .line 3827
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/y;->b:Lcom/caverock/androidsvg/x;

    if-nez v2, :cond_2

    move v2, v1

    .line 3828
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/y;->c:Lcom/caverock/androidsvg/x;

    if-nez v3, :cond_3

    move v3, v1

    .line 3829
    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/y;->d:Lcom/caverock/androidsvg/x;

    if-nez v4, :cond_4

    .line 3831
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/y;->o:Lcom/caverock/androidsvg/k;

    if-nez v4, :cond_0

    .line 3832
    new-instance v4, Lcom/caverock/androidsvg/k;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/k;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/y;->o:Lcom/caverock/androidsvg/k;

    .line 3835
    :cond_0
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 3836
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3837
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3838
    return-object v4

    .line 3826
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/y;->a:Lcom/caverock/androidsvg/x;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v0

    goto :goto_0

    .line 3827
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/y;->b:Lcom/caverock/androidsvg/x;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v2

    goto :goto_1

    .line 3828
    :cond_3
    iget-object v3, p1, Lcom/caverock/androidsvg/y;->c:Lcom/caverock/androidsvg/x;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/x;->a(Lcom/caverock/androidsvg/bm;)F

    move-result v3

    goto :goto_2

    .line 3829
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/y;->d:Lcom/caverock/androidsvg/x;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/x;->b(Lcom/caverock/androidsvg/bm;)F

    move-result v1

    goto :goto_3
.end method

.method private c(Lcom/caverock/androidsvg/au;)Lcom/caverock/androidsvg/bt;
    .locals 2

    .prologue
    .line 3092
    new-instance v0, Lcom/caverock/androidsvg/bt;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/bt;-><init>(Lcom/caverock/androidsvg/bm;)V

    .line 3093
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3094
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/au;Lcom/caverock/androidsvg/bt;)Lcom/caverock/androidsvg/bt;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/caverock/androidsvg/ar;)V
    .locals 3

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    instance-of v0, v0, Lcom/caverock/androidsvg/ac;

    if-eqz v0, :cond_0

    .line 3145
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->b:Lcom/caverock/androidsvg/av;

    check-cast v0, Lcom/caverock/androidsvg/ac;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/bm;->a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/ac;)V

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    instance-of v0, v0, Lcom/caverock/androidsvg/ac;

    if-eqz v0, :cond_1

    .line 3148
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Lcom/caverock/androidsvg/av;

    check-cast v0, Lcom/caverock/androidsvg/ac;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/bm;->a(ZLcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/ac;)V

    .line 3150
    :cond_1
    return-void
.end method

.method static synthetic c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private d(Lcom/caverock/androidsvg/ar;)V
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p1, Lcom/caverock/androidsvg/ar;->o:Lcom/caverock/androidsvg/k;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/ar;Lcom/caverock/androidsvg/k;)V

    .line 3529
    return-void
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 495
    const-string/jumbo v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method private static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method static synthetic e()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/caverock/androidsvg/bm;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->a:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->j:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->g:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->d:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->i:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->f:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->c:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->h:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->e:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->b:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/caverock/androidsvg/bm;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method private static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method static synthetic f()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/caverock/androidsvg/bm;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->a:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->b:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->c:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/caverock/androidsvg/bm;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic g()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/caverock/androidsvg/bm;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->c:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->a:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->b:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/caverock/androidsvg/bm;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic h()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/caverock/androidsvg/bm;->p:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->b:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->a:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/bm;->p:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/caverock/androidsvg/bt;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/bt;-><init>(Lcom/caverock/androidsvg/bm;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 177
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    .line 180
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/bt;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->b:Lcom/caverock/androidsvg/k;

    iput-object v1, v0, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    .line 184
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/bt;->h:Z

    .line 185
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/bm;->d:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/bt;->i:Z

    .line 188
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->j:Ljava/util/Stack;

    .line 192
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->k:Ljava/util/Stack;

    .line 196
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->i:Ljava/util/Stack;

    .line 197
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->h:Ljava/util/Stack;

    .line 198
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 352
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 360
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 361
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 379
    return-void
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 676
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->n()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 700
    :goto_0
    return v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->m:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/bm;->a(F)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v5, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 683
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 686
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/bt;->i:Z

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v3, v3, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/au;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/caverock/androidsvg/aa;

    if-nez v0, :cond_2

    .line 691
    :cond_1
    const-string/jumbo v0, "Mask reference \'%s\' not found"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v4, v4, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    move v0, v2

    .line 693
    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->o()V

    :cond_3
    move v0, v2

    .line 700
    goto :goto_0
.end method

.method private n()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 731
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/bt;->i:Z

    if-nez v1, :cond_0

    .line 732
    const-string/jumbo v1, "Masks are not supported when using getPicture()"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 735
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/bt;->i:Z

    if-nez v1, :cond_2

    .line 734
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->k:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 746
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 747
    iput-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    const-string/jumbo v1, "Not enough memory to create temporary bitmaps for mask processing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/bm;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    throw v0
.end method

.method private p()Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/caverock/androidsvg/bm;->k:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/bm;->k:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/graphics/Bitmap;

    .line 764
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 765
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 766
    new-array v2, v4, [I

    .line 767
    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 768
    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v6, v0, :cond_0

    .line 792
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 793
    return-object v15

    .line 770
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 771
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v17

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 772
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 790
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v17

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 768
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 774
    :cond_1
    aget v5, v2, v3

    .line 775
    and-int/lit16 v7, v5, 0xff

    .line 776
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 777
    shr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 778
    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 779
    if-nez v5, :cond_2

    .line 781
    const/4 v5, 0x0

    aput v5, v17, v3

    .line 772
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 784
    :cond_2
    mul-int/lit16 v9, v9, 0x1b33

    mul-int/lit16 v8, v8, 0x5b92

    add-int/2addr v8, v9

    mul-int/lit16 v7, v7, 0x93a

    add-int/2addr v7, v8

    mul-int/2addr v5, v7

    const v7, 0x7f8000

    div-int/2addr v5, v7

    .line 785
    aget v7, v17, v3

    .line 786
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    .line 787
    mul-int/2addr v5, v8

    div-int/lit16 v5, v5, 0xff

    .line 788
    const v8, 0xffffff

    and-int/2addr v7, v8

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v7

    aput v5, v17, v3

    goto :goto_2
.end method

.method private static declared-synchronized q()V
    .locals 3

    .prologue
    .line 891
    const-class v1, Lcom/caverock/androidsvg/bm;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    .line 910
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Structure"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 911
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "BasicStructure"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 913
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "ConditionalProcessing"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 914
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Image"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 915
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Style"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 916
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "ViewportAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 917
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Shape"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 919
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "BasicText"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 920
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "PaintAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "BasicPaintAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "OpacityAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "BasicGraphicsAttribute"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Marker"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 927
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Gradient"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Clip"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "BasicClip"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "Mask"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v0, Lcom/caverock/androidsvg/bm;->l:Ljava/util/HashSet;

    const-string/jumbo v2, "View"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit v1

    return-void

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private r()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->a:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->b:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1440
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->a:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->c:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->a:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1959
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1967
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private u()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 2416
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 2423
    :goto_0
    return-object v0

    .line 2417
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/bm;->h()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2423
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 2420
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 2417
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private v()V
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/av;

    instance-of v0, v0, Lcom/caverock/androidsvg/o;

    if-eqz v0, :cond_2

    .line 2453
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/av;

    check-cast v0, Lcom/caverock/androidsvg/o;

    iget v0, v0, Lcom/caverock/androidsvg/o;->a:I

    .line 2459
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 2462
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2463
    :cond_1
    return-void

    .line 2454
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/av;

    instance-of v0, v0, Lcom/caverock/androidsvg/p;

    if-eqz v0, :cond_1

    .line 2455
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Lcom/caverock/androidsvg/o;

    iget v0, v0, Lcom/caverock/androidsvg/o;->a:I

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3627
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3628
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 3629
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3637
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/bt;

    iput-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    .line 3638
    return-void
.end method

.method private y()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-nez v0, :cond_0

    .line 3644
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 3651
    :goto_0
    return-object v0

    .line 3645
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/bm;->h()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v1, v1, Lcom/caverock/androidsvg/bt;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->F:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3651
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 3648
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 3645
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/caverock/androidsvg/bm;->c:F

    return v0
.end method

.method protected a(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 6

    .prologue
    .line 254
    iput-object p1, p0, Lcom/caverock/androidsvg/bm;->e:Lcom/caverock/androidsvg/SVG;

    .line 255
    iput-boolean p4, p0, Lcom/caverock/androidsvg/bm;->d:Z

    .line 257
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->b()Lcom/caverock/androidsvg/am;

    move-result-object v1

    .line 259
    if-nez v1, :cond_0

    .line 260
    const-string/jumbo v0, "Nothing to render. Document is empty."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/bm;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/bm;->i()V

    .line 267
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/bm;->b(Lcom/caverock/androidsvg/au;)V

    .line 270
    iget-object v2, v1, Lcom/caverock/androidsvg/am;->c:Lcom/caverock/androidsvg/x;

    iget-object v3, v1, Lcom/caverock/androidsvg/am;->d:Lcom/caverock/androidsvg/x;

    .line 271
    if-eqz p2, :cond_1

    move-object v4, p2

    .line 272
    :goto_1
    if-eqz p3, :cond_2

    move-object v5, p3

    :goto_2
    move-object v0, p0

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/bm;->a(Lcom/caverock/androidsvg/am;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/x;Lcom/caverock/androidsvg/k;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/am;->x:Lcom/caverock/androidsvg/k;

    goto :goto_1

    .line 272
    :cond_2
    iget-object v5, v1, Lcom/caverock/androidsvg/am;->w:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_2
.end method

.method protected b()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected c()F
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected d()Lcom/caverock/androidsvg/k;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->g:Lcom/caverock/androidsvg/k;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/bm;->f:Lcom/caverock/androidsvg/bt;

    iget-object v0, v0, Lcom/caverock/androidsvg/bt;->f:Lcom/caverock/androidsvg/k;

    goto :goto_0
.end method
