.class public Lorg/spongycastle/jce/spec/IEKeySpec;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/spongycastle/jce/interfaces/IESKey;


# instance fields
.field private privKey:Ljava/security/PrivateKey;

.field private pubKey:Ljava/security/PublicKey;


# virtual methods
.method public a()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public b()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "IES"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
