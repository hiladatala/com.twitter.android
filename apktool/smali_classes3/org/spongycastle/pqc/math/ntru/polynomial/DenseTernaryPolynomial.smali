.class public Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;
.super Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->a:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    .line 36
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->n()V

    .line 47
    return-void
.end method

.method public static a(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;
    .locals 2

    .prologue
    .line 71
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/math/ntru/util/Util;->a(IIILjava/security/SecureRandom;)[I

    move-result-object v0

    .line 72
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object v1
.end method

.method private n()V
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    aget v1, v1, v0

    .line 54
    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", must be one of {-1, 0, 1}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    .prologue
    const/16 v1, 0x800

    .line 93
    if-ne p2, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 96
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->g(I)V

    .line 97
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 98
    invoke-virtual {v1, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->a(Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->a()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->a(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    goto :goto_0
.end method

.method public a()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    array-length v3, v1

    .line 109
    new-array v4, v3, [I

    move v2, v0

    move v1, v0

    .line 111
    :goto_0
    if-ge v2, v3, :cond_0

    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    aget v0, v0, v2

    .line 114
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 116
    add-int/lit8 v0, v1, 0x1

    aput v2, v4, v1

    .line 111
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v4, v1}, Lorg/spongycastle/util/Arrays;->b([II)[I

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    array-length v3, v1

    .line 125
    new-array v4, v3, [I

    move v2, v0

    move v1, v0

    .line 127
    :goto_0
    if-ge v2, v3, :cond_0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    aget v0, v0, v2

    .line 130
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 132
    add-int/lit8 v0, v1, 0x1

    aput v2, v4, v1

    .line 127
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v4, v1}, Lorg/spongycastle/util/Arrays;->b([II)[I

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->a:[I

    array-length v0, v0

    return v0
.end method
