.class public Lorg/spongycastle/asn1/x509/PolicyQualifierId;
.super Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.source "Twttr"


# static fields
.field public static final b:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

.field public static final c:Lorg/spongycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    const-string/jumbo v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->b:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    const-string/jumbo v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->c:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
