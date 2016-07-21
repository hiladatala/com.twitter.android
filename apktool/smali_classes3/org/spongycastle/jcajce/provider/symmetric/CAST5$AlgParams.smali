.class public Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "Twttr"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    .line 100
    const/16 v0, 0x80

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->b:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 132
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    .line 134
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to CAST5 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 106
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->b:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;-><init>([BI)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->f()[B

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string/jumbo v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 144
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 171
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->d()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/misc/CAST5CBCParameters;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->b()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->b:I

    .line 175
    invoke-virtual {v0}, Lorg/spongycastle/asn1/misc/CAST5CBCParameters;->a()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->a:[B

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/CAST5$AlgParams;->engineInit([B)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unknown parameters format in IV parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "CAST5 Parameters"

    return-object v0
.end method
