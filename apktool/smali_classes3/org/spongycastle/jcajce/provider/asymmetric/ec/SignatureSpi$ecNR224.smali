.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecNR224;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/signers/ECNRSigner;

    invoke-direct {v1}, Lorg/spongycastle/crypto/signers/ECNRSigner;-><init>()V

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/SignatureSpi;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    .line 191
    return-void
.end method
