.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;
.implements Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;


# static fields
.field static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private transient a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 56
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 57
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 42
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->a()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->c()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v1

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->c()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 90
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 91
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid info structure in DSA public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;->c()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 63
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;->b()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->a()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;->b()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 49
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;->b()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->b()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 35
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->a()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->a()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->a()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 36
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 160
    new-instance v2, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 161
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 169
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 171
    return-void
.end method


# virtual methods
.method public b()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->a()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v5}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->b()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    const-string/jumbo v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->a()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->a:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
