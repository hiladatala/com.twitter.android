.class public Lorg/spongycastle/jcajce/provider/digest/Skein$SkeinMac_256_256;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 463
    new-instance v0, Lorg/spongycastle/crypto/macs/SkeinMac;

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/macs/SkeinMac;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 464
    return-void
.end method
