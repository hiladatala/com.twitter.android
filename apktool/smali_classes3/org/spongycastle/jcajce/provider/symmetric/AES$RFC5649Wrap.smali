.class public Lorg/spongycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v1, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/spongycastle/crypto/Wrapper;)V

    .line 163
    return-void
.end method
