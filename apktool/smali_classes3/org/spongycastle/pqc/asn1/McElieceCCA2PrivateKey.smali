.class public Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Twttr"


# instance fields
.field private a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private b:I

.field private c:I

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:[[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    iput p2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->b:I

    .line 37
    iput p3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->c:I

    .line 38
    invoke-virtual {p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->b()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->d:[B

    .line 39
    invoke-virtual {p5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->e:[B

    .line 40
    invoke-virtual {p6}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->f:[B

    .line 41
    invoke-virtual {p7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->g:[B

    .line 42
    array-length v0, p8

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->h:[[B

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v1, p8

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->h:[[B

    aget-object v2, p8, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->c()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public d()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 127
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->a:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->b:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->c:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->d:[B

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->e:[B

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->f:[B

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->g:[B

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->h:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 152
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PrivateKey;->h:[[B

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
