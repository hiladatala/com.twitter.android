.class public Lorg/spongycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/util/encoders/Encoder;


# instance fields
.field protected final a:[B

.field protected b:B

.field protected final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    .line 28
    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    .line 50
    invoke-virtual {p0}, Lorg/spongycastle/util/encoders/Base64Encoder;->a()V

    .line 51
    return-void

    .line 12
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private a(Ljava/io/OutputStream;CCCC)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    if-ne p4, v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 276
    iget-object v1, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 278
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    if-ne p5, v0, :cond_3

    .line 289
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 290
    iget-object v1, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 291
    iget-object v2, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v2, v2, p4

    .line 293
    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-gez v3, :cond_2

    .line 295
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 299
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 301
    const/4 v0, 0x2

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 306
    iget-object v1, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 307
    iget-object v2, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v2, v2, p4

    .line 308
    iget-object v3, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    aget-byte v3, v3, p5

    .line 310
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_4

    .line 312
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_4
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 316
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 317
    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 319
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 325
    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return p2
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    .line 218
    :goto_0
    if-lez v5, :cond_0

    .line 220
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    add-int/lit8 v2, v5, -0x4

    .line 231
    invoke-direct {p0, p1, v1, v2}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v0

    move v6, v1

    .line 233
    :goto_1
    if-ge v0, v2, :cond_3

    .line 235
    iget-object v1, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v1, v0

    .line 237
    invoke-direct {p0, p1, v3, v2}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v1

    .line 239
    iget-object v3, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    .line 241
    invoke-direct {p0, p1, v4, v2}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v3

    .line 243
    iget-object v4, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 245
    invoke-direct {p0, p1, v7, v2}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v4

    .line 247
    iget-object v7, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    .line 249
    or-int v7, v0, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v4

    if-gez v7, :cond_2

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    .line 254
    :cond_2
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 255
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 256
    shl-int/lit8 v0, v3, 0x6

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 258
    add-int/lit8 v1, v6, 0x3

    .line 260
    invoke-direct {p0, p1, v8, v2}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v0

    move v6, v1

    goto :goto_1

    .line 263
    :cond_3
    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v5, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/util/encoders/Base64Encoder;->a(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v0, v6

    .line 265
    return v0
.end method

.method public a([BIILjava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    rem-int/lit8 v1, p3, 0x3

    .line 66
    sub-int v2, p3, v1

    move v0, p2

    .line 69
    :goto_0
    add-int v3, p2, v2

    if-ge v0, v3, :cond_0

    .line 71
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 72
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 73
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 75
    iget-object v6, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 76
    iget-object v6, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 77
    iget-object v3, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v6, v5, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v3, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 69
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 87
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_1
    :pswitch_0
    div-int/lit8 v0, v2, 0x3

    mul-int/lit8 v2, v0, 0x4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v2

    return v0

    .line 92
    :pswitch_1
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 93
    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 94
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 96
    iget-object v4, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v3, v4, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v3, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v0, v3, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 98
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 102
    :pswitch_2
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 103
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 105
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 106
    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x3f

    .line 107
    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 109
    iget-object v5, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 110
    iget-object v4, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v0, v4, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v0, v0, v3

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 116
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 39
    iget-object v2, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->c:[B

    iget-object v2, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->a:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method
