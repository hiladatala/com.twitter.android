.class public abstract Lorg/spongycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II[II)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 550
    int-to-long v0, p0

    and-long/2addr v0, v6

    int-to-long v2, p1

    and-long/2addr v2, v6

    .line 551
    mul-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    add-long/2addr v0, v10

    .line 552
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 553
    ushr-long/2addr v0, v8

    .line 554
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 555
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 556
    ushr-long/2addr v0, v8

    .line 557
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 558
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 559
    ushr-long/2addr v0, v8

    .line 560
    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p2, p3, v1}, Lorg/spongycastle/math/raw/Nat;->a(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static a(IJ[II)I
    .locals 15

    .prologue
    .line 527
    const-wide/16 v2, 0x0

    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 528
    const-wide v6, 0xffffffffL

    and-long v6, v6, p1

    .line 529
    mul-long v8, v4, v6

    add-int/lit8 v10, p4, 0x0

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 530
    add-int/lit8 v8, p4, 0x0

    long-to-int v9, v2

    aput v9, p3, v8

    .line 531
    const/16 v8, 0x20

    ushr-long/2addr v2, v8

    .line 532
    const/16 v8, 0x20

    ushr-long v8, p1, v8

    .line 533
    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 534
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v2

    aput v5, p3, v4

    .line 535
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 536
    add-int/lit8 v4, p4, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 537
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v2

    aput v5, p3, v4

    .line 538
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 539
    add-int/lit8 v4, p4, 0x3

    aget v4, p3, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 540
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v2

    aput v5, p3, v4

    .line 541
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 542
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v1, v3}, Lorg/spongycastle/math/raw/Nat;->a(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static a([II)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 204
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 207
    if-ltz v1, :cond_0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 211
    and-int/lit8 v0, p1, 0x1f

    .line 212
    aget v1, p0, v1

    ushr-int v0, v1, v0

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([II[II)I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 111
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 112
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 113
    ushr-long/2addr v0, v8

    .line 114
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    ushr-long/2addr v0, v8

    .line 118
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 119
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 120
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 121
    ushr-long/2addr v0, v8

    .line 122
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 123
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 124
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 125
    ushr-long/2addr v0, v8

    .line 126
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 127
    add-int/lit8 v2, p1, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 128
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 129
    ushr-long/2addr v0, v8

    .line 130
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 131
    add-int/lit8 v2, p1, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 132
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 133
    ushr-long/2addr v0, v8

    .line 134
    long-to-int v0, v0

    return v0
.end method

.method public static a([II[III)I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 85
    int-to-long v0, p4

    and-long/2addr v0, v6

    .line 86
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 90
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v8

    .line 92
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 93
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 94
    ushr-long/2addr v0, v8

    .line 95
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 96
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 97
    ushr-long/2addr v0, v8

    .line 98
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 99
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 100
    ushr-long/2addr v0, v8

    .line 101
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 102
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 103
    ushr-long/2addr v0, v8

    .line 104
    long-to-int v0, v0

    return v0
.end method

.method public static a([I[I[I)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 15
    long-to-int v2, v0

    aput v2, p2, v9

    .line 16
    ushr-long/2addr v0, v8

    .line 17
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 18
    long-to-int v2, v0

    aput v2, p2, v10

    .line 19
    ushr-long/2addr v0, v8

    .line 20
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 21
    long-to-int v2, v0

    aput v2, p2, v11

    .line 22
    ushr-long/2addr v0, v8

    .line 23
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 24
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 25
    ushr-long/2addr v0, v8

    .line 26
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 27
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 28
    ushr-long/2addr v0, v8

    .line 29
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 30
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 31
    ushr-long/2addr v0, v8

    .line 32
    long-to-int v0, v0

    return v0
.end method

.method public static a(I[II[II[II)J
    .locals 12

    .prologue
    .line 467
    const-wide/16 v0, 0x0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 468
    add-int/lit8 v4, p2, 0x0

    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 469
    mul-long v6, v2, v4

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 470
    add-int/lit8 v6, p6, 0x0

    long-to-int v7, v0

    aput v7, p5, v6

    .line 471
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 472
    add-int/lit8 v6, p2, 0x1

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 473
    mul-long v8, v2, v6

    add-long/2addr v4, v8

    add-int/lit8 v8, p4, 0x1

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 474
    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v0

    aput v5, p5, v4

    .line 475
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 476
    add-int/lit8 v4, p2, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    .line 477
    mul-long v8, v2, v4

    add-long/2addr v6, v8

    add-int/lit8 v8, p4, 0x2

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 478
    add-int/lit8 v6, p6, 0x2

    long-to-int v7, v0

    aput v7, p5, v6

    .line 479
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 480
    add-int/lit8 v6, p2, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 481
    mul-long v8, v2, v6

    add-long/2addr v4, v8

    add-int/lit8 v8, p4, 0x3

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 482
    add-int/lit8 v4, p6, 0x3

    long-to-int v5, v0

    aput v5, p5, v4

    .line 483
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 484
    add-int/lit8 v4, p2, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    .line 485
    mul-long v8, v2, v4

    add-long/2addr v6, v8

    add-int/lit8 v8, p4, 0x4

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 486
    add-int/lit8 v6, p6, 0x4

    long-to-int v7, v0

    aput v7, p5, v6

    .line 487
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 488
    add-int/lit8 v6, p2, 0x5

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 489
    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p4, 0x5

    aget v4, p3, v4

    int-to-long v4, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 490
    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v0

    aput v3, p5, v2

    .line 491
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 492
    add-long/2addr v0, v6

    .line 493
    return-wide v0
.end method

.method public static a([I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 245
    aget v2, p0, v0

    if-eq v2, v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    .line 249
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 251
    aget v3, p0, v2

    if-nez v3, :cond_0

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method public static a([II[II[II)Z
    .locals 7

    .prologue
    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat192;->b([II[II)Z

    move-result v6

    .line 160
    if-eqz v6, :cond_0

    .line 162
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat192;->c([II[II[II)I

    .line 168
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 166
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat192;->c([II[II[II)I

    goto :goto_0
.end method

.method public static a([I[I)Z
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x5

    :goto_0
    if-ltz v0, :cond_1

    .line 175
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 180
    :goto_1
    return v0

    .line 173
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static a(Ljava/math/BigInteger;)[I
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->a()[I

    move-result-object v2

    .line 191
    const/4 v0, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 195
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    goto :goto_0

    .line 197
    :cond_2
    return-object v2
.end method

.method public static b([I[I[I)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 37
    const-wide/16 v0, 0x0

    .line 38
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 39
    long-to-int v2, v0

    aput v2, p2, v9

    .line 40
    ushr-long/2addr v0, v8

    .line 41
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 42
    long-to-int v2, v0

    aput v2, p2, v10

    .line 43
    ushr-long/2addr v0, v8

    .line 44
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 45
    long-to-int v2, v0

    aput v2, p2, v11

    .line 46
    ushr-long/2addr v0, v8

    .line 47
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 48
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 49
    ushr-long/2addr v0, v8

    .line 50
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 51
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 52
    ushr-long/2addr v0, v8

    .line 53
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 54
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 55
    ushr-long/2addr v0, v8

    .line 56
    long-to-int v0, v0

    return v0
.end method

.method public static b([II[II[II)V
    .locals 26

    .prologue
    .line 330
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    .line 331
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    .line 332
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    .line 333
    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v2

    .line 334
    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v2

    .line 335
    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v2

    .line 338
    const-wide/16 v2, 0x0

    add-int/lit8 v16, p1, 0x0

    aget v16, p0, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    .line 339
    mul-long v18, v16, v4

    add-long v2, v2, v18

    .line 340
    add-int/lit8 v18, p5, 0x0

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p4, v18

    .line 341
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 342
    mul-long v18, v16, v6

    add-long v2, v2, v18

    .line 343
    add-int/lit8 v18, p5, 0x1

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p4, v18

    .line 344
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 345
    mul-long v18, v16, v8

    add-long v2, v2, v18

    .line 346
    add-int/lit8 v18, p5, 0x2

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p4, v18

    .line 347
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 348
    mul-long v18, v16, v10

    add-long v2, v2, v18

    .line 349
    add-int/lit8 v18, p5, 0x3

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p4, v18

    .line 350
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 351
    mul-long v18, v16, v12

    add-long v2, v2, v18

    .line 352
    add-int/lit8 v18, p5, 0x4

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p4, v18

    .line 353
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 354
    mul-long v16, v16, v14

    add-long v2, v2, v16

    .line 355
    add-int/lit8 v16, p5, 0x5

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p4, v16

    .line 356
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 357
    add-int/lit8 v16, p5, 0x6

    long-to-int v2, v2

    aput v2, p4, v16

    .line 360
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 362
    add-int/lit8 p5, p5, 0x1

    .line 363
    const-wide/16 v16, 0x0

    add-int v3, p1, v2

    aget v3, p0, v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 364
    mul-long v20, v18, v4

    add-int/lit8 v3, p5, 0x0

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 365
    add-int/lit8 v3, p5, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p4, v3

    .line 366
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 367
    mul-long v20, v18, v6

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 368
    add-int/lit8 v3, p5, 0x1

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p4, v3

    .line 369
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 370
    mul-long v20, v18, v8

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 371
    add-int/lit8 v3, p5, 0x2

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p4, v3

    .line 372
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 373
    mul-long v20, v18, v10

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 374
    add-int/lit8 v3, p5, 0x3

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p4, v3

    .line 375
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 376
    mul-long v20, v18, v12

    add-int/lit8 v3, p5, 0x4

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 377
    add-int/lit8 v3, p5, 0x4

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p4, v3

    .line 378
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 379
    mul-long v18, v18, v14

    add-int/lit8 v3, p5, 0x5

    aget v3, p4, v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v16, v16, v18

    .line 380
    add-int/lit8 v3, p5, 0x5

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, p4, v3

    .line 381
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 382
    add-int/lit8 v3, p5, 0x6

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, p4, v3

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public static b([I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 263
    aget v2, p0, v1

    if-eqz v2, :cond_0

    .line 268
    :goto_1
    return v0

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static b([II[II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    .line 231
    const/4 v1, 0x5

    :goto_0
    if-ltz v1, :cond_0

    .line 233
    add-int v2, p1, v1

    aget v2, p0, v2

    xor-int/2addr v2, v4

    .line 234
    add-int v3, p3, v1

    aget v3, p2, v3

    xor-int/2addr v3, v4

    .line 235
    if-ge v2, v3, :cond_1

    .line 236
    const/4 v0, 0x0

    .line 240
    :cond_0
    return v0

    .line 237
    :cond_1
    if-gt v2, v3, :cond_0

    .line 231
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static b([I[I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    .line 217
    const/4 v1, 0x5

    :goto_0
    if-ltz v1, :cond_0

    .line 219
    aget v2, p0, v1

    xor-int/2addr v2, v4

    .line 220
    aget v3, p1, v1

    xor-int/2addr v3, v4

    .line 221
    if-ge v2, v3, :cond_1

    .line 222
    const/4 v0, 0x0

    .line 226
    :cond_0
    return v0

    .line 223
    :cond_1
    if-gt v2, v3, :cond_0

    .line 217
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static b()[I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static c([II[II[II)I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 851
    const-wide/16 v0, 0x0

    .line 852
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 853
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 854
    shr-long/2addr v0, v8

    .line 855
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 856
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 857
    shr-long/2addr v0, v8

    .line 858
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 859
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 860
    shr-long/2addr v0, v8

    .line 861
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 862
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 863
    shr-long/2addr v0, v8

    .line 864
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 865
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 866
    shr-long/2addr v0, v8

    .line 867
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 868
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 869
    shr-long/2addr v0, v8

    .line 870
    long-to-int v0, v0

    return v0
.end method

.method public static c([I)Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 947
    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 948
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 950
    aget v2, p0, v0

    .line 951
    if-eqz v2, :cond_0

    .line 953
    rsub-int/lit8 v3, v0, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v1, v3}, Lorg/spongycastle/util/Pack;->a(I[BI)V

    .line 948
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static c([II[II)V
    .locals 30

    .prologue
    .line 711
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    .line 714
    const/4 v4, 0x0

    .line 716
    const/4 v3, 0x5

    const/16 v2, 0xc

    move v5, v4

    .line 719
    :goto_0
    add-int/lit8 v4, v3, -0x1

    add-int v3, v3, p1

    aget v3, p0, v3

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 720
    mul-long/2addr v8, v8

    .line 721
    add-int/lit8 v2, v2, -0x1

    add-int v3, p3, v2

    shl-int/lit8 v5, v5, 0x1f

    const/16 v10, 0x21

    ushr-long v10, v8, v10

    long-to-int v10, v10

    or-int/2addr v5, v10

    aput v5, p2, v3

    .line 722
    add-int/lit8 v2, v2, -0x1

    add-int v3, p3, v2

    const/4 v5, 0x1

    ushr-long v10, v8, v5

    long-to-int v5, v10

    aput v5, p2, v3

    .line 723
    long-to-int v3, v8

    .line 725
    if-gtz v4, :cond_0

    .line 728
    mul-long v4, v6, v6

    .line 729
    shl-int/lit8 v2, v3, 0x1f

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    const/16 v8, 0x21

    ushr-long v8, v4, v8

    or-long/2addr v2, v8

    .line 730
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v4

    aput v9, p2, v8

    .line 731
    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1

    .line 735
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 736
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 739
    mul-long v12, v8, v6

    add-long/2addr v2, v12

    .line 740
    long-to-int v5, v2

    .line 741
    add-int/lit8 v12, p3, 0x1

    shl-int/lit8 v13, v5, 0x1

    or-int/2addr v4, v13

    aput v4, p2, v12

    .line 742
    ushr-int/lit8 v4, v5, 0x1f

    .line 743
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    add-long/2addr v2, v10

    .line 746
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 747
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    .line 748
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 750
    mul-long v16, v10, v6

    add-long v2, v2, v16

    .line 751
    long-to-int v5, v2

    .line 752
    add-int/lit8 v16, p3, 0x2

    shl-int/lit8 v17, v5, 0x1

    or-int v4, v4, v17

    aput v4, p2, v16

    .line 753
    ushr-int/lit8 v4, v5, 0x1f

    .line 754
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v16, v10, v8

    add-long v2, v2, v16

    add-long/2addr v2, v12

    .line 755
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    add-long/2addr v12, v14

    .line 756
    const-wide v14, 0xffffffffL

    and-long/2addr v2, v14

    .line 759
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 760
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    .line 761
    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 763
    mul-long v20, v14, v6

    add-long v2, v2, v20

    .line 764
    long-to-int v5, v2

    .line 765
    add-int/lit8 v20, p3, 0x3

    shl-int/lit8 v21, v5, 0x1

    or-int v4, v4, v21

    aput v4, p2, v20

    .line 766
    ushr-int/lit8 v4, v5, 0x1f

    .line 767
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v20, v14, v8

    add-long v2, v2, v20

    add-long/2addr v2, v12

    .line 768
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    mul-long v20, v14, v10

    add-long v12, v12, v20

    add-long v12, v12, v16

    .line 769
    const-wide v16, 0xffffffffL

    and-long v2, v2, v16

    .line 770
    const/16 v5, 0x20

    ushr-long v16, v12, v5

    add-long v16, v16, v18

    .line 771
    const-wide v18, 0xffffffffL

    and-long v12, v12, v18

    .line 774
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 775
    add-int/lit8 v5, p3, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    .line 776
    add-int/lit8 v5, p3, 0x8

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    .line 778
    mul-long v24, v18, v6

    add-long v2, v2, v24

    .line 779
    long-to-int v5, v2

    .line 780
    add-int/lit8 v24, p3, 0x4

    shl-int/lit8 v25, v5, 0x1

    or-int v4, v4, v25

    aput v4, p2, v24

    .line 781
    ushr-int/lit8 v4, v5, 0x1f

    .line 782
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v24, v18, v8

    add-long v2, v2, v24

    add-long/2addr v2, v12

    .line 783
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    mul-long v24, v18, v10

    add-long v12, v12, v24

    add-long v12, v12, v16

    .line 784
    const-wide v16, 0xffffffffL

    and-long v2, v2, v16

    .line 785
    const/16 v5, 0x20

    ushr-long v16, v12, v5

    mul-long v24, v18, v14

    add-long v16, v16, v24

    add-long v16, v16, v20

    .line 786
    const-wide v20, 0xffffffffL

    and-long v12, v12, v20

    .line 787
    const/16 v5, 0x20

    ushr-long v20, v16, v5

    add-long v20, v20, v22

    .line 788
    const-wide v22, 0xffffffffL

    and-long v16, v16, v22

    .line 791
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    .line 792
    add-int/lit8 v5, p3, 0x9

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    .line 793
    add-int/lit8 v5, p3, 0xa

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    .line 795
    mul-long v6, v6, v22

    add-long/2addr v2, v6

    .line 796
    long-to-int v5, v2

    .line 797
    add-int/lit8 v6, p3, 0x5

    shl-int/lit8 v7, v5, 0x1

    or-int/2addr v4, v7

    aput v4, p2, v6

    .line 798
    ushr-int/lit8 v4, v5, 0x1f

    .line 799
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v6, v22, v8

    add-long/2addr v2, v6

    add-long/2addr v2, v12

    .line 800
    const/16 v5, 0x20

    ushr-long v6, v2, v5

    mul-long v8, v22, v10

    add-long/2addr v6, v8

    add-long v6, v6, v16

    .line 801
    const/16 v5, 0x20

    ushr-long v8, v6, v5

    mul-long v10, v22, v14

    add-long/2addr v8, v10

    add-long v8, v8, v20

    .line 802
    const/16 v5, 0x20

    ushr-long v10, v8, v5

    mul-long v12, v22, v18

    add-long/2addr v10, v12

    add-long v10, v10, v24

    .line 803
    const/16 v5, 0x20

    ushr-long v12, v10, v5

    add-long v12, v12, v26

    .line 806
    long-to-int v2, v2

    .line 807
    add-int/lit8 v3, p3, 0x6

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v4, v5

    aput v4, p2, v3

    .line 808
    ushr-int/lit8 v2, v2, 0x1f

    .line 809
    long-to-int v3, v6

    .line 810
    add-int/lit8 v4, p3, 0x7

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p2, v4

    .line 811
    ushr-int/lit8 v2, v3, 0x1f

    .line 812
    long-to-int v3, v8

    .line 813
    add-int/lit8 v4, p3, 0x8

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p2, v4

    .line 814
    ushr-int/lit8 v2, v3, 0x1f

    .line 815
    long-to-int v3, v10

    .line 816
    add-int/lit8 v4, p3, 0x9

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p2, v4

    .line 817
    ushr-int/lit8 v2, v3, 0x1f

    .line 818
    long-to-int v3, v12

    .line 819
    add-int/lit8 v4, p3, 0xa

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p2, v4

    .line 820
    ushr-int/lit8 v2, v3, 0x1f

    .line 821
    add-int/lit8 v3, p3, 0xb

    aget v3, p2, v3

    const/16 v4, 0x20

    shr-long v4, v12, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 822
    add-int/lit8 v4, p3, 0xb

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    aput v2, p2, v4

    .line 823
    return-void

    :cond_0
    move v5, v3

    move v3, v4

    goto/16 :goto_0
.end method

.method public static c([I[I)V
    .locals 30

    .prologue
    .line 595
    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    .line 598
    const/4 v4, 0x0

    .line 600
    const/4 v3, 0x5

    const/16 v2, 0xc

    move v5, v4

    .line 603
    :goto_0
    add-int/lit8 v4, v3, -0x1

    aget v3, p0, v3

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 604
    mul-long/2addr v8, v8

    .line 605
    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v3, v5, 0x1f

    const/16 v5, 0x21

    ushr-long v10, v8, v5

    long-to-int v5, v10

    or-int/2addr v3, v5

    aput v3, p1, v2

    .line 606
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    ushr-long v10, v8, v3

    long-to-int v3, v10

    aput v3, p1, v2

    .line 607
    long-to-int v3, v8

    .line 609
    if-gtz v4, :cond_0

    .line 612
    mul-long v4, v6, v6

    .line 613
    shl-int/lit8 v2, v3, 0x1f

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    const/16 v8, 0x21

    ushr-long v8, v4, v8

    or-long/2addr v2, v8

    .line 614
    const/4 v8, 0x0

    long-to-int v9, v4

    aput v9, p1, v8

    .line 615
    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1

    .line 619
    const/4 v5, 0x1

    aget v5, p0, v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 620
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 623
    mul-long v12, v8, v6

    add-long/2addr v2, v12

    .line 624
    long-to-int v5, v2

    .line 625
    const/4 v12, 0x1

    shl-int/lit8 v13, v5, 0x1

    or-int/2addr v4, v13

    aput v4, p1, v12

    .line 626
    ushr-int/lit8 v4, v5, 0x1f

    .line 627
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    add-long/2addr v2, v10

    .line 630
    const/4 v5, 0x2

    aget v5, p0, v5

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 631
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v12, v5

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    .line 632
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 634
    mul-long v16, v10, v6

    add-long v2, v2, v16

    .line 635
    long-to-int v5, v2

    .line 636
    const/16 v16, 0x2

    shl-int/lit8 v17, v5, 0x1

    or-int v4, v4, v17

    aput v4, p1, v16

    .line 637
    ushr-int/lit8 v4, v5, 0x1f

    .line 638
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v16, v10, v8

    add-long v2, v2, v16

    add-long/2addr v2, v12

    .line 639
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    add-long/2addr v12, v14

    .line 640
    const-wide v14, 0xffffffffL

    and-long/2addr v2, v14

    .line 643
    const/4 v5, 0x3

    aget v5, p0, v5

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 644
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    .line 645
    const/4 v5, 0x6

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 647
    mul-long v20, v14, v6

    add-long v2, v2, v20

    .line 648
    long-to-int v5, v2

    .line 649
    const/16 v20, 0x3

    shl-int/lit8 v21, v5, 0x1

    or-int v4, v4, v21

    aput v4, p1, v20

    .line 650
    ushr-int/lit8 v4, v5, 0x1f

    .line 651
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v20, v14, v8

    add-long v2, v2, v20

    add-long/2addr v2, v12

    .line 652
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    mul-long v20, v14, v10

    add-long v12, v12, v20

    add-long v12, v12, v16

    .line 653
    const-wide v16, 0xffffffffL

    and-long v2, v2, v16

    .line 654
    const/16 v5, 0x20

    ushr-long v16, v12, v5

    add-long v16, v16, v18

    .line 655
    const-wide v18, 0xffffffffL

    and-long v12, v12, v18

    .line 658
    const/4 v5, 0x4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 659
    const/4 v5, 0x7

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    .line 660
    const/16 v5, 0x8

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    .line 662
    mul-long v24, v18, v6

    add-long v2, v2, v24

    .line 663
    long-to-int v5, v2

    .line 664
    const/16 v24, 0x4

    shl-int/lit8 v25, v5, 0x1

    or-int v4, v4, v25

    aput v4, p1, v24

    .line 665
    ushr-int/lit8 v4, v5, 0x1f

    .line 666
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v24, v18, v8

    add-long v2, v2, v24

    add-long/2addr v2, v12

    .line 667
    const/16 v5, 0x20

    ushr-long v12, v2, v5

    mul-long v24, v18, v10

    add-long v12, v12, v24

    add-long v12, v12, v16

    .line 668
    const-wide v16, 0xffffffffL

    and-long v2, v2, v16

    .line 669
    const/16 v5, 0x20

    ushr-long v16, v12, v5

    mul-long v24, v18, v14

    add-long v16, v16, v24

    add-long v16, v16, v20

    .line 670
    const-wide v20, 0xffffffffL

    and-long v12, v12, v20

    .line 671
    const/16 v5, 0x20

    ushr-long v20, v16, v5

    add-long v20, v20, v22

    .line 672
    const-wide v22, 0xffffffffL

    and-long v16, v16, v22

    .line 675
    const/4 v5, 0x5

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    .line 676
    const/16 v5, 0x9

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    .line 677
    const/16 v5, 0xa

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    .line 679
    mul-long v6, v6, v22

    add-long/2addr v2, v6

    .line 680
    long-to-int v5, v2

    .line 681
    const/4 v6, 0x5

    shl-int/lit8 v7, v5, 0x1

    or-int/2addr v4, v7

    aput v4, p1, v6

    .line 682
    ushr-int/lit8 v4, v5, 0x1f

    .line 683
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    mul-long v6, v22, v8

    add-long/2addr v2, v6

    add-long/2addr v2, v12

    .line 684
    const/16 v5, 0x20

    ushr-long v6, v2, v5

    mul-long v8, v22, v10

    add-long/2addr v6, v8

    add-long v6, v6, v16

    .line 685
    const/16 v5, 0x20

    ushr-long v8, v6, v5

    mul-long v10, v22, v14

    add-long/2addr v8, v10

    add-long v8, v8, v20

    .line 686
    const/16 v5, 0x20

    ushr-long v10, v8, v5

    mul-long v12, v22, v18

    add-long/2addr v10, v12

    add-long v10, v10, v24

    .line 687
    const/16 v5, 0x20

    ushr-long v12, v10, v5

    add-long v12, v12, v26

    .line 690
    long-to-int v2, v2

    .line 691
    const/4 v3, 0x6

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v3

    .line 692
    ushr-int/lit8 v2, v2, 0x1f

    .line 693
    long-to-int v3, v6

    .line 694
    const/4 v4, 0x7

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p1, v4

    .line 695
    ushr-int/lit8 v2, v3, 0x1f

    .line 696
    long-to-int v3, v8

    .line 697
    const/16 v4, 0x8

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p1, v4

    .line 698
    ushr-int/lit8 v2, v3, 0x1f

    .line 699
    long-to-int v3, v10

    .line 700
    const/16 v4, 0x9

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p1, v4

    .line 701
    ushr-int/lit8 v2, v3, 0x1f

    .line 702
    long-to-int v3, v12

    .line 703
    const/16 v4, 0xa

    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v2, v5

    aput v2, p1, v4

    .line 704
    ushr-int/lit8 v2, v3, 0x1f

    .line 705
    const/16 v3, 0xb

    aget v3, p1, v3

    const/16 v4, 0x20

    shr-long v4, v12, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 706
    const/16 v4, 0xb

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    aput v2, p1, v4

    .line 707
    return-void

    :cond_0
    move v5, v3

    move v3, v4

    goto/16 :goto_0
.end method

.method public static c([I[I[I)V
    .locals 26

    .prologue
    .line 273
    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    .line 274
    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    .line 275
    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    .line 276
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v2

    .line 277
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v2

    .line 278
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v2

    .line 281
    const-wide/16 v2, 0x0

    const/16 v16, 0x0

    aget v16, p0, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    .line 282
    mul-long v18, v16, v4

    add-long v2, v2, v18

    .line 283
    const/16 v18, 0x0

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p2, v18

    .line 284
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 285
    mul-long v18, v16, v6

    add-long v2, v2, v18

    .line 286
    const/16 v18, 0x1

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p2, v18

    .line 287
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 288
    mul-long v18, v16, v8

    add-long v2, v2, v18

    .line 289
    const/16 v18, 0x2

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p2, v18

    .line 290
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 291
    mul-long v18, v16, v10

    add-long v2, v2, v18

    .line 292
    const/16 v18, 0x3

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p2, v18

    .line 293
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 294
    mul-long v18, v16, v12

    add-long v2, v2, v18

    .line 295
    const/16 v18, 0x4

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p2, v18

    .line 296
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 297
    mul-long v16, v16, v14

    add-long v2, v2, v16

    .line 298
    const/16 v16, 0x5

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p2, v16

    .line 299
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 300
    const/16 v16, 0x6

    long-to-int v2, v2

    aput v2, p2, v16

    .line 303
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 305
    const-wide/16 v16, 0x0

    aget v3, p0, v2

    int-to-long v0, v3

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 306
    mul-long v20, v18, v4

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 307
    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 308
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 309
    mul-long v20, v18, v6

    add-int/lit8 v3, v2, 0x1

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 310
    add-int/lit8 v3, v2, 0x1

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 311
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 312
    mul-long v20, v18, v8

    add-int/lit8 v3, v2, 0x2

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 313
    add-int/lit8 v3, v2, 0x2

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 314
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 315
    mul-long v20, v18, v10

    add-int/lit8 v3, v2, 0x3

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 316
    add-int/lit8 v3, v2, 0x3

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 317
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 318
    mul-long v20, v18, v12

    add-int/lit8 v3, v2, 0x4

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v16, v16, v20

    .line 319
    add-int/lit8 v3, v2, 0x4

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 320
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 321
    mul-long v18, v18, v14

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v16, v16, v18

    .line 322
    add-int/lit8 v3, v2, 0x5

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, p2, v3

    .line 323
    const/16 v3, 0x20

    ushr-long v16, v16, v3

    .line 324
    add-int/lit8 v3, v2, 0x6

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, p2, v3

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method public static d([I[I)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 899
    const-wide/16 v0, 0x0

    .line 900
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 901
    long-to-int v2, v0

    aput v2, p1, v9

    .line 902
    shr-long/2addr v0, v8

    .line 903
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 904
    long-to-int v2, v0

    aput v2, p1, v10

    .line 905
    shr-long/2addr v0, v8

    .line 906
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 907
    long-to-int v2, v0

    aput v2, p1, v11

    .line 908
    shr-long/2addr v0, v8

    .line 909
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 910
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 911
    shr-long/2addr v0, v8

    .line 912
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 913
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 914
    shr-long/2addr v0, v8

    .line 915
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 916
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 917
    shr-long/2addr v0, v8

    .line 918
    long-to-int v0, v0

    return v0
.end method

.method public static d([I[I[I)I
    .locals 28

    .prologue
    .line 388
    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    .line 389
    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v8, v2, v4

    .line 390
    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v10, v2, v4

    .line 391
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v12, v2, v4

    .line 392
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v14, v2, v4

    .line 393
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v16, v2, v4

    .line 395
    const-wide/16 v4, 0x0

    .line 396
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 398
    const-wide/16 v18, 0x0

    aget v3, p0, v2

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    .line 399
    mul-long v22, v20, v6

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v18, v18, v22

    .line 400
    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, p2, v3

    .line 401
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 402
    mul-long v22, v20, v8

    add-int/lit8 v3, v2, 0x1

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v18, v18, v22

    .line 403
    add-int/lit8 v3, v2, 0x1

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, p2, v3

    .line 404
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 405
    mul-long v22, v20, v10

    add-int/lit8 v3, v2, 0x2

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v18, v18, v22

    .line 406
    add-int/lit8 v3, v2, 0x2

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, p2, v3

    .line 407
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 408
    mul-long v22, v20, v12

    add-int/lit8 v3, v2, 0x3

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v18, v18, v22

    .line 409
    add-int/lit8 v3, v2, 0x3

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, p2, v3

    .line 410
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 411
    mul-long v22, v20, v14

    add-int/lit8 v3, v2, 0x4

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v18, v18, v22

    .line 412
    add-int/lit8 v3, v2, 0x4

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, p2, v3

    .line 413
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 414
    mul-long v20, v20, v16

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v18, v18, v20

    .line 415
    add-int/lit8 v3, v2, 0x5

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, p2, v3

    .line 416
    const/16 v3, 0x20

    ushr-long v18, v18, v3

    .line 417
    add-int/lit8 v3, v2, 0x6

    aget v3, p2, v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v4, v4, v20

    add-long v4, v4, v18

    .line 418
    add-int/lit8 v3, v2, 0x6

    long-to-int v0, v4

    move/from16 v18, v0

    aput v18, p2, v3

    .line 419
    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 421
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static d([I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 961
    aput v1, p0, v1

    .line 962
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 963
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 964
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 965
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 966
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 967
    return-void
.end method

.method public static e([I[I[I)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 827
    const-wide/16 v0, 0x0

    .line 828
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 829
    long-to-int v2, v0

    aput v2, p2, v9

    .line 830
    shr-long/2addr v0, v8

    .line 831
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 832
    long-to-int v2, v0

    aput v2, p2, v10

    .line 833
    shr-long/2addr v0, v8

    .line 834
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 835
    long-to-int v2, v0

    aput v2, p2, v11

    .line 836
    shr-long/2addr v0, v8

    .line 837
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 838
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 839
    shr-long/2addr v0, v8

    .line 840
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 841
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 842
    shr-long/2addr v0, v8

    .line 843
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 844
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 845
    shr-long/2addr v0, v8

    .line 846
    long-to-int v0, v0

    return v0
.end method
