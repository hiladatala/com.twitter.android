.class public Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Twttr"


# instance fields
.field private a:Lorg/spongycastle/asn1/x500/DirectoryString;


# virtual methods
.method public d()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->a:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/DirectoryString;->d()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
