.class public Lorg/spongycastle/jcajce/provider/digest/Skein$SkeinMacKeyGenerator_512_384;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 625
    const-string/jumbo v0, "Skein-MAC-512-384"

    const/16 v1, 0x180

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 626
    return-void
.end method
