.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQV;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 340
    const-string/jumbo v0, "ECMQV"

    new-instance v1, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V

    .line 341
    return-void
.end method
