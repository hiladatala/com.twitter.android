.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/spongycastle/crypto/CipherParameters;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private McElieceCCA2Params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

.field private g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private n:I

.field private oid:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    .line 57
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    .line 58
    iput p3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    .line 59
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->d()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->e()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->b()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->McElieceCCA2Params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    .line 76
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    return v0
.end method

.method public c()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 140
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    .line 147
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v2, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    iget v2, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v2, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->McElieceCCA2Params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .prologue
    .line 200
    new-instance v0, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->oid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v3, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    .line 201
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->e()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->a:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 205
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 207
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->f()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "McEliecePublicKey:\n"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error correction capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " generator matrix           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->g:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method
