.class public Lorg/spongycastle/asn1/x509/NameConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Twttr"


# instance fields
.field private a:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

.field private b:[Lorg/spongycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->a(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/NameConstraints;->a(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->a:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->a(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/NameConstraints;->a(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->b:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 48
    :cond_0
    return-void

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    .locals 2

    .prologue
    .line 20
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    .line 29
    :goto_0
    return-object p0

    .line 24
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/NameConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->h()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->a:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method

.method public b()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->b:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method

.method public d()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->a:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->a:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->b:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->b:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
