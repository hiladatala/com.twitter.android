.class public Lorg/spongycastle/jcajce/provider/symmetric/RC2$CBCMAC;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lorg/spongycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 82
    return-void
.end method
