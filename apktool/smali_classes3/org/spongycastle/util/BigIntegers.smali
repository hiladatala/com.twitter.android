.class public final Lorg/spongycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/BigIntegers;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 78
    if-ltz v0, :cond_0

    .line 80
    if-lez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'min\' may not be greater than \'max\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 90
    sget-object v0, Lorg/spongycastle/util/BigIntegers;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 103
    :cond_1
    :goto_0
    return-object p0

    .line 93
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0x3e8

    if-ge v1, v0, :cond_4

    .line 95
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-direct {v0, v2, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_3

    move-object p0, v0

    .line 98
    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 103
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method public static a([BII)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 113
    .line 114
    if-nez p1, :cond_0

    array-length v0, p0

    if-eq p2, v0, :cond_1

    .line 116
    :cond_0
    new-array v0, p2, [B

    .line 117
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 119
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static a(ILjava/math/BigInteger;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 46
    array-length v2, v1

    if-ne v2, p0, :cond_0

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    .line 51
    :cond_0
    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 52
    :cond_1
    array-length v2, v1

    sub-int v3, v2, v0

    .line 54
    if-le v3, p0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "standard length exceeded for value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    new-array v2, p0, [B

    .line 60
    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 61
    goto :goto_0
.end method

.method public static a(Ljava/math/BigInteger;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 25
    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    .line 27
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 29
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
