.class public Lorg/spongycastle/asn1/cms/CCMParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Twttr"


# instance fields
.field private a:[B

.field private b:I


# virtual methods
.method public d()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->a:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget v1, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->b:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 97
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/spongycastle/asn1/cms/CCMParameters;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
