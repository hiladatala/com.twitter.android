.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "Twttr"


# instance fields
.field final transient e:[[B

.field final transient f:[I


# direct methods
.method constructor <init>(Lokio/f;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 57
    iget-wide v0, p1, Lokio/f;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lokio/ae;->a(JJJ)V

    .line 62
    iget-object v0, p1, Lokio/f;->a:Lokio/y;

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v2, p2, :cond_1

    .line 63
    iget v3, v0, Lokio/y;->c:I

    iget v4, v0, Lokio/y;->b:I

    if-ne v3, v4, :cond_0

    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_0
    iget v3, v0, Lokio/y;->c:I

    iget v4, v0, Lokio/y;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 62
    iget-object v0, v0, Lokio/y;->f:Lokio/y;

    goto :goto_0

    .line 71
    :cond_1
    new-array v0, v1, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->e:[[B

    .line 72
    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->f:[I

    .line 75
    iget-object v0, p1, Lokio/f;->a:Lokio/y;

    move-object v1, v0

    move v2, v6

    :goto_1
    if-ge v6, p2, :cond_3

    .line 76
    iget-object v0, p0, Lokio/SegmentedByteString;->e:[[B

    iget-object v3, v1, Lokio/y;->a:[B

    aput-object v3, v0, v2

    .line 77
    iget v0, v1, Lokio/y;->c:I

    iget v3, v1, Lokio/y;->b:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    .line 78
    if-le v0, p2, :cond_2

    move v0, p2

    .line 81
    :cond_2
    iget-object v3, p0, Lokio/SegmentedByteString;->f:[I

    aput v0, v3, v2

    .line 82
    iget-object v3, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v4, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v4, v4

    add-int/2addr v4, v2

    iget v5, v1, Lokio/y;->b:I

    aput v5, v3, v4

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, v1, Lokio/y;->d:Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 75
    iget-object v1, v1, Lokio/y;->f:Lokio/y;

    move v6, v0

    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 140
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private g()Lokio/ByteString;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)B
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lokio/ae;->a(JJJ)V

    .line 130
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->b(I)I

    move-result v1

    .line 131
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 133
    iget-object v3, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lokio/ByteString;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->a(II)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method a(Lokio/f;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 176
    .line 177
    iget-object v1, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 178
    iget-object v2, p0, Lokio/SegmentedByteString;->f:[I

    add-int v4, v3, v0

    aget v4, v2, v4

    .line 179
    iget-object v2, p0, Lokio/SegmentedByteString;->f:[I

    aget v2, v2, v0

    .line 180
    new-instance v5, Lokio/y;

    iget-object v6, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v6, v6, v0

    add-int v7, v4, v2

    sub-int v1, v7, v1

    invoke-direct {v5, v6, v4, v1}, Lokio/y;-><init>([BII)V

    .line 182
    iget-object v1, p1, Lokio/f;->a:Lokio/y;

    if-nez v1, :cond_0

    .line 183
    iput-object v5, v5, Lokio/y;->g:Lokio/y;

    iput-object v5, v5, Lokio/y;->f:Lokio/y;

    iput-object v5, p1, Lokio/f;->a:Lokio/y;

    .line 177
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p1, Lokio/f;->a:Lokio/y;

    iget-object v1, v1, Lokio/y;->g:Lokio/y;

    invoke-virtual {v1, v5}, Lokio/y;->a(Lokio/y;)Lokio/y;

    goto :goto_1

    .line 189
    :cond_1
    iget-wide v2, p1, Lokio/f;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/f;->b:J

    .line 190
    return-void
.end method

.method public a(ILokio/ByteString;II)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 194
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->b(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    .line 197
    if-nez v2, :cond_2

    move v0, v1

    .line 198
    :goto_2
    iget-object v3, p0, Lokio/SegmentedByteString;->f:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    .line 199
    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 200
    iget-object v4, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 201
    sub-int v0, p1, v0

    add-int/2addr v0, v4

    .line 202
    iget-object v4, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v4, v4, v2

    invoke-virtual {p2, p3, v4, v0, v3}, Lokio/ByteString;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    add-int/2addr p1, v3

    .line 204
    add-int/2addr p3, v3

    .line 205
    sub-int/2addr p4, v3

    .line 196
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    .line 207
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a(I[BII)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 211
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->b(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    .line 217
    if-nez v2, :cond_2

    move v0, v1

    .line 218
    :goto_2
    iget-object v3, p0, Lokio/SegmentedByteString;->f:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    .line 219
    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 220
    iget-object v4, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 221
    sub-int v0, p1, v0

    add-int/2addr v0, v4

    .line 222
    iget-object v4, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0, p2, p3, v3}, Lokio/ae;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    add-int/2addr p1, v3

    .line 224
    add-int/2addr p3, v3

    .line 225
    sub-int/2addr p4, v3

    .line 216
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    .line 227
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lokio/ByteString;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->d()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-ne p1, p0, :cond_0

    .line 251
    :goto_0
    return v1

    .line 249
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    .line 250
    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lokio/ByteString;

    .line 251
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lokio/SegmentedByteString;->a(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public f()[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lokio/SegmentedByteString;->f:[I

    iget-object v2, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    new-array v3, v1, [B

    .line 150
    iget-object v1, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v4, v1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 151
    iget-object v2, p0, Lokio/SegmentedByteString;->f:[I

    add-int v5, v4, v0

    aget v5, v2, v5

    .line 152
    iget-object v2, p0, Lokio/SegmentedByteString;->f:[I

    aget v2, v2, v0

    .line 153
    iget-object v6, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v6, v6, v0

    sub-int v7, v2, v1

    invoke-static {v6, v5, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 157
    :cond_0
    return-object v3
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 255
    iget v0, p0, Lokio/SegmentedByteString;->c:I

    .line 256
    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    .line 261
    iget-object v2, p0, Lokio/SegmentedByteString;->e:[[B

    array-length v5, v2

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_2

    .line 262
    iget-object v1, p0, Lokio/SegmentedByteString;->e:[[B

    aget-object v6, v1, v2

    .line 263
    iget-object v1, p0, Lokio/SegmentedByteString;->f:[I

    add-int v4, v5, v2

    aget v1, v1, v4

    .line 264
    iget-object v4, p0, Lokio/SegmentedByteString;->f:[I

    aget v4, v4, v2

    .line 265
    sub-int v3, v4, v3

    .line 266
    add-int/2addr v3, v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_2
    if-ge v0, v3, :cond_1

    .line 267
    mul-int/lit8 v1, v1, 0x1f

    aget-byte v7, v6, v0

    add-int/2addr v1, v7

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_1

    .line 271
    :cond_2
    iput v0, p0, Lokio/SegmentedByteString;->c:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lokio/SegmentedByteString;->g()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
