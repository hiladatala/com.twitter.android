.class public Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field protected static final o:[Ljava/lang/String;

.field private static final p:Lorg/spongycastle/jce/provider/PKIXCRLUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->p:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 380
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->q:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    .line 382
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->r:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->b:Ljava/lang/String;

    .line 384
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->w:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->c:Ljava/lang/String;

    .line 386
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->m:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    .line 388
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->v:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->e:Ljava/lang/String;

    .line 390
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->f:Ljava/lang/String;

    .line 392
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->t:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->g:Ljava/lang/String;

    .line 394
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->g:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->h:Ljava/lang/String;

    .line 396
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->p:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->i:Ljava/lang/String;

    .line 398
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->e:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->j:Ljava/lang/String;

    .line 400
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->o:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->k:Ljava/lang/String;

    .line 402
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->s:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->l:Ljava/lang/String;

    .line 404
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->m:Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/spongycastle/asn1/x509/X509Extensions;->h:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->n:Ljava/lang/String;

    .line 2280
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(ILjava/security/cert/X509Certificate;)I
    .locals 1

    .prologue
    .line 2301
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2303
    add-int/lit8 p0, p0, -0x1

    .line 2305
    :cond_0
    return p0
.end method

.method protected static a(Ljava/security/cert/CertPath;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1540
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1547
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1558
    if-eqz v0, :cond_1

    .line 1560
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 1562
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1568
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a()I

    move-result v2

    if-nez v2, :cond_0

    .line 1570
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/ASN1Integer;->a(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1571
    if-ge v0, p2, :cond_1

    move p2, v0

    .line 1585
    :cond_1
    return p2

    .line 1550
    :catch_0
    move-exception v0

    .line 1552
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1578
    :catch_1
    move-exception v0

    .line 1580
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static a(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    .line 580
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return-object v0

    .line 588
    :cond_0
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 596
    .line 598
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 603
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_1
    return-object v0

    .line 612
    :cond_0
    if-eqz v0, :cond_1

    .line 614
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v0, v1

    .line 616
    goto :goto_1

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 448
    new-instance v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 451
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :try_start_1
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    .line 465
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 477
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 480
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 488
    invoke-virtual {v0, p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 456
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :catch_1
    move-exception v0

    .line 470
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 496
    :cond_0
    :try_start_2
    const-string/jumbo v1, "PKIX"

    const-string/jumbo v6, "SC"

    invoke-static {v1, v6}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v6

    .line 497
    new-instance v7, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v7}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 498
    invoke-virtual {v7, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 499
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 500
    invoke-virtual {v1, v7}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 501
    invoke-static {v1}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->b(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 512
    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 514
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 520
    :goto_1
    invoke-virtual {v6, v1}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 521
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 524
    :catch_2
    move-exception v0

    .line 526
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Internal error."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 518
    :cond_1
    const/4 v7, 0x1

    :try_start_3
    invoke-virtual {v1, v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 528
    :catch_3
    move-exception v0

    .line 530
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 532
    :catch_4
    move-exception v0

    .line 534
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 540
    const/4 v1, 0x0

    .line 541
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 543
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 544
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 546
    if-eqz v0, :cond_4

    array-length v6, v0

    const/4 v7, 0x7

    if-lt v6, v7, :cond_3

    const/4 v6, 0x6

    aget-boolean v0, v0, v6

    if-nez v0, :cond_4

    .line 548
    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 541
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 553
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    .line 557
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 559
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Cannot find a valid issuer certificate."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 563
    throw v1

    .line 566
    :cond_7
    return-object v3
.end method

.method protected static a(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1259
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 1260
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1262
    sub-int v3, v1, p1

    .line 1270
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    invoke-static {v9, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1278
    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    .line 1283
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v4

    .line 1284
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1286
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1288
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v6

    .line 1289
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 1291
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1293
    const-string/jumbo v8, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1298
    :try_start_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/PolicyInformation;->b()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1306
    move-object/from16 v0, p4

    invoke-static {v3, v0, v7, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v8

    .line 1308
    if-nez v8, :cond_0

    .line 1310
    move-object/from16 v0, p4

    invoke-static {v3, v0, v7, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1275
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v3, "Could not read certificate policies extension from certificate."

    invoke-direct {v2, v3, v1, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1300
    :catch_1
    move-exception v1

    .line 1302
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v3, "Policy qualifier info set could not be build."

    invoke-direct {v2, v3, v1, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1315
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "2.5.29.32.0"

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1317
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1318
    invoke-interface {p2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1341
    :goto_1
    if-gtz p5, :cond_3

    if-ge v3, v1, :cond_c

    invoke-static {v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1343
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 1345
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1347
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    .line 1349
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1351
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->b()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v6

    .line 1352
    add-int/lit8 v1, v3, -0x1

    aget-object v11, p4, v1

    .line 1354
    const/4 v1, 0x0

    move v10, v1

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_c

    .line 1356
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1358
    invoke-virtual {v5}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1359
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1361
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1364
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1366
    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    .line 1377
    :goto_4
    const/4 v1, 0x0

    .line 1378
    invoke-virtual {v5}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 1380
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1382
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1384
    invoke-virtual {v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1386
    const/4 v1, 0x1

    :goto_6
    move v2, v1

    .line 1388
    goto :goto_5

    .line 1322
    :cond_6
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1323
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1325
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1327
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1329
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1331
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1334
    :cond_8
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1335
    invoke-interface {p2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1368
    :cond_9
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_5

    .line 1370
    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 1390
    :cond_a
    if-nez v2, :cond_5

    .line 1392
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1393
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1395
    new-instance v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1397
    invoke-virtual {v5, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1398
    aget-object v2, p4, v3

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1354
    :cond_b
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_2

    .line 1411
    :cond_c
    add-int/lit8 v1, v3, -0x1

    move v5, v1

    move-object/from16 v2, p3

    :goto_8
    if-ltz v5, :cond_f

    .line 1413
    aget-object v6, p4, v5

    .line 1415
    const/4 v1, 0x0

    move-object v4, v2

    move v2, v1

    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    .line 1417
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1418
    invoke-virtual {v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1420
    move-object/from16 v0, p4

    invoke-static {v4, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    .line 1422
    if-nez v4, :cond_e

    .line 1411
    :cond_d
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move-object v2, v4

    goto :goto_8

    .line 1415
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    .line 1433
    :cond_f
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 1435
    if-eqz v1, :cond_11

    .line 1437
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1439
    aget-object v5, p4, v3

    .line 1440
    const/4 v1, 0x0

    move v3, v1

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_11

    .line 1442
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1443
    invoke-virtual {v1, v4}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a(Z)V

    .line 1440
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    .line 1448
    :cond_10
    const/4 v2, 0x0

    :cond_11
    return-object v2

    :cond_12
    move v1, v2

    goto/16 :goto_6
.end method

.method protected static a(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1129
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1136
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1144
    if-nez v0, :cond_0

    .line 1146
    const/4 p2, 0x0

    .line 1148
    :cond_0
    return-object p2

    .line 1139
    :catch_0
    move-exception v0

    .line 1141
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Could not read certificate policies extension from certificate."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static a(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 869
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 870
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 872
    sub-int v2, v0, p1

    .line 878
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->b:Ljava/lang/String;

    invoke-static {v8, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 887
    if-eqz v4, :cond_c

    .line 890
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 891
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 893
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->h()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 895
    invoke-virtual {v4, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 896
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v1

    .line 897
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v6

    .line 900
    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 903
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 883
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy mappings extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 909
    :cond_0
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 910
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 914
    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 915
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 917
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 922
    if-lez p4, :cond_8

    .line 924
    const/4 v1, 0x0

    .line 925
    aget-object v0, p2, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 926
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 928
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 929
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 931
    const/4 v3, 0x1

    .line 932
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->c:Ljava/util/Set;

    move v0, v3

    .line 937
    :goto_3
    if-nez v0, :cond_2

    .line 939
    aget-object v0, p2, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 940
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 943
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 945
    const/4 v5, 0x0

    .line 949
    :try_start_1
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    invoke-static {v8, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 957
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 958
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 963
    :try_start_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 970
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/PolicyInformation;->a()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 974
    :try_start_3
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/PolicyInformation;->b()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .line 987
    :cond_6
    const/4 v7, 0x0

    .line 988
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 990
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 994
    :cond_7
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 995
    const-string/jumbo v0, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 999
    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1000
    aget-object v1, p2, v2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 952
    :catch_1
    move-exception v0

    .line 954
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Certificate policies extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 965
    :catch_2
    move-exception v0

    .line 967
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Policy information could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 977
    :catch_3
    move-exception v0

    .line 980
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy qualifier info set could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1011
    :cond_8
    if-gtz p4, :cond_2

    .line 1013
    aget-object v0, p2, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1014
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1017
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1019
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1020
    invoke-virtual {v1, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->b(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1021
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1022
    add-int/lit8 v0, v2, -0x1

    move v4, v0

    move-object v1, p3

    :goto_5
    if-ltz v4, :cond_d

    .line 1024
    aget-object v7, p2, v4

    .line 1025
    const/4 v0, 0x0

    move-object v3, v1

    move v1, v0

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1027
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1028
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1030
    invoke-static {v3, p2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 1032
    if-nez v3, :cond_b

    .line 1022
    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move-object v1, v3

    goto :goto_5

    .line 1025
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1044
    :cond_c
    return-object p3

    :cond_d
    move-object p3, v1

    goto :goto_4

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method protected static a(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2402
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2411
    if-nez p5, :cond_2

    .line 2413
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2418
    :cond_0
    const/4 p5, 0x0

    .line 2566
    :cond_1
    :goto_0
    return-object p5

    .line 2420
    :cond_2
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2423
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2425
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2427
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2432
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2434
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p4

    if-ge v1, v0, :cond_6

    .line 2436
    aget-object v5, p4, v1

    .line 2438
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 2440
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2442
    const-string/jumbo v6, "2.5.29.32.0"

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2444
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 2445
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2438
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2434
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2453
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2454
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2457
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    .line 2459
    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 2466
    :cond_8
    if-eqz p5, :cond_1

    .line 2468
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, p5

    :goto_5
    if-ltz v3, :cond_16

    .line 2470
    aget-object v4, p4, v3

    .line 2472
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2474
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2475
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2477
    invoke-static {v2, p4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 2472
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2468
    :cond_a
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, v2

    goto :goto_5

    .line 2503
    :cond_b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2505
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, p4

    if-ge v1, v0, :cond_f

    .line 2507
    aget-object v5, p4, v1

    .line 2509
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 2511
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2513
    const-string/jumbo v6, "2.5.29.32.0"

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2515
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2516
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2518
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2519
    const-string/jumbo v7, "2.5.29.32.0"

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2521
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2509
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 2505
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 2531
    :cond_f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2532
    :cond_10
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2535
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    .line 2537
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2539
    invoke-static {p5, p4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    .line 2546
    :cond_11
    if-eqz p5, :cond_14

    .line 2548
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, p5

    :goto_b
    if-ltz v3, :cond_15

    .line 2550
    aget-object v4, p4, v3

    .line 2552
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 2554
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2555
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->a()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2557
    invoke-static {v2, p4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 2552
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 2548
    :cond_13
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, v2

    goto :goto_b

    :cond_14
    move-object v1, p5

    :cond_15
    move-object p5, v1

    .line 2564
    goto/16 :goto_0

    :cond_16
    move-object p5, v1

    goto/16 :goto_0
.end method

.method protected static a(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 351
    .line 354
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 362
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->i()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->b()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->b()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    new-instance v1, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->i()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->b(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Issuing distribution point extension could not be decoded."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->i()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->b()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    .line 369
    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->a:Lorg/spongycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->b()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->a:Lorg/spongycastle/jce/provider/ReasonsMask;

    move-object v1, v0

    :goto_1
    if-nez v2, :cond_4

    sget-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->a:Lorg/spongycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;->b(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->b()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->i()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    goto :goto_2
.end method

.method protected static a(Ljava/security/cert/CertPath;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1052
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1053
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1061
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1069
    if-eqz v2, :cond_2

    move v0, v1

    .line 1073
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->h()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1079
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 1081
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 1082
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->a(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1090
    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v0, v1, v5, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1066
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy mappings extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1084
    :catch_1
    move-exception v0

    .line 1086
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy mappings extension contents could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1096
    :cond_0
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1099
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v0, v1, v5, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1073
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_2
    return-void
.end method

.method protected static a(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2368
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2369
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2372
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2376
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v0

    .line 2380
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Additional certificate path checker failed."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 2385
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2387
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate has unsupported critical extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2390
    :cond_1
    return-void
.end method

.method protected static a(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2185
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2186
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2192
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2193
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v0

    .line 2201
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 2204
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate has unsupported critical extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2209
    :cond_1
    return-void
.end method

.method protected static a(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1158
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1161
    sub-int v2, v1, p1

    .line 1165
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lt v2, v1, :cond_2

    .line 1167
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1168
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1173
    :try_start_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->d()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1183
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->a(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1184
    invoke-virtual {p2, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->b(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1195
    :try_start_2
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 1203
    new-instance v0, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    sget-object v1, Lorg/spongycastle/asn1/x509/X509Name;->D:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/X509Name;->a(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1207
    new-instance v3, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1210
    :try_start_3
    invoke-virtual {p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->a(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1211
    invoke-virtual {p2, v3}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->b(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1215
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Subtree check for certificate subject alternative email failed."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1175
    :catch_1
    move-exception v0

    .line 1177
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Exception extracting subject name when checking subtrees."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1186
    :catch_2
    move-exception v0

    .line 1188
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Subtree check for certificate subject failed."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1198
    :catch_3
    move-exception v0

    .line 1200
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Subject alternative name extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1219
    :cond_1
    if-eqz v2, :cond_2

    .line 1224
    :try_start_4
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 1231
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1236
    :try_start_5
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->a(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1237
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->b(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1226
    :catch_4
    move-exception v0

    .line 1228
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Subject alternative name contents could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1239
    :catch_5
    move-exception v0

    .line 1241
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Subtree check for certificate subject alternative name failed."

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1247
    :cond_2
    return-void
.end method

.method protected static a(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1115
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 1117
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1120
    :cond_0
    return-void
.end method

.method protected static a(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1462
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1466
    if-nez p4, :cond_0

    .line 1472
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1504
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    :try_start_2
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1525
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1527
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") does not match SubjectName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") of signing certificate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1475
    :catch_0
    move-exception v0

    .line 1477
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1488
    :catch_1
    move-exception v0

    .line 1490
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1492
    :catch_2
    move-exception v0

    .line 1494
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1496
    :catch_3
    move-exception v0

    .line 1498
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1511
    :catch_4
    move-exception v1

    .line 1514
    invoke-virtual {v1}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1516
    invoke-virtual {v1}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1518
    :goto_0
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v1}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1531
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected static a(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 733
    if-nez p0, :cond_1

    .line 831
    :cond_0
    return-void

    .line 740
    :cond_1
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 748
    invoke-virtual {p2}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 753
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :catch_0
    move-exception v0

    .line 745
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Issuing distribution point extension could not be decoded."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 760
    :cond_2
    :try_start_1
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 769
    const/4 v1, 0x0

    .line 770
    if-nez v2, :cond_4

    .line 772
    if-nez v3, :cond_5

    .line 784
    :cond_3
    :goto_0
    if-nez v0, :cond_6

    .line 786
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :catch_1
    move-exception v0

    .line 765
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 779
    :cond_4
    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    move v0, v1

    goto :goto_0

    .line 794
    :cond_6
    :try_start_2
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 806
    :try_start_3
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->l:Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 815
    if-nez v0, :cond_7

    .line 817
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "CRL authority key identifier is null."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :catch_2
    move-exception v0

    .line 799
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 809
    :catch_3
    move-exception v0

    .line 811
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 820
    :cond_7
    if-nez v1, :cond_8

    .line 822
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Delta CRL authority key identifier is null."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_8
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-virtual {p3}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 856
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 858
    :cond_0
    return-void
.end method

.method protected static a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p4}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 843
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 845
    :cond_0
    return-void
.end method

.method protected static a(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 103
    .line 106
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    invoke-static {p2, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 115
    if-eqz v6, :cond_12

    .line 117
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->h()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 120
    invoke-static {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->h()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    move v1, v2

    .line 126
    :goto_0
    array-length v8, v4

    if-ge v1, v8, :cond_0

    .line 128
    aget-object v8, v4, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 111
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->a()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 133
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 136
    :try_start_1
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->b([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v8

    .line 139
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v1

    .line 146
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Could not read CRL issuer."

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 148
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/X509Name;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->a()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 156
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->a()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v8

    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/DistributionPointName;->a()I

    move-result v3

    if-nez v3, :cond_3

    .line 160
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/DistributionPointName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 162
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/DistributionPointName;->a()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    move-object v3, v1

    :goto_2
    move v4, v2

    .line 182
    :goto_3
    array-length v1, v3

    if-ge v4, v1, :cond_7

    .line 184
    aget-object v1, v3, v4

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->d()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v9

    .line 185
    new-instance v10, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 186
    :goto_4
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v10, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 170
    :cond_4
    new-array v3, v5, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 173
    const/4 v4, 0x0

    :try_start_2
    new-instance v9, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v10, Lorg/spongycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->b([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v10, v1}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v9, v10}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    aput-object v9, v3, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 177
    :catch_2
    move-exception v1

    .line 179
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Could not read certificate issuer."

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    :cond_5
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/DistributionPointName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->a(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v9, Lorg/spongycastle/asn1/x509/X509Name;

    new-instance v11, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v11, v10}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v9, v11}, Lorg/spongycastle/asn1/x509/X509Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    aput-object v1, v3, v4

    .line 182
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    move-object v3, v1

    .line 194
    :cond_7
    if-eqz v3, :cond_8

    move v1, v2

    .line 196
    :goto_5
    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 198
    aget-object v4, v3, v1

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v5

    .line 205
    :cond_8
    if-nez v2, :cond_e

    .line 207
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 216
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    if-nez v1, :cond_b

    .line 218
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_b
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v1, v2

    .line 222
    :goto_6
    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 224
    aget-object v4, v3, v1

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v5

    .line 230
    :cond_c
    if-nez v2, :cond_e

    .line 232
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 240
    :cond_e
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v1, v0

    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 248
    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_11

    .line 251
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 253
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "CA Cert CRL only contains user certificates."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_3
    move-exception v1

    .line 245
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Basic constraints extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 257
    :cond_f
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a()Z

    move-result v1

    if-nez v1, :cond_11

    .line 259
    :cond_10
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "End CRL only contains CA certificates."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_11
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->e()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 266
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_12
    return-void
.end method

.method private static a(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1738
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1741
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Validation time is in future."

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1752
    :cond_0
    invoke-static {p0, p2, v10, p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v4

    .line 1753
    const/4 v3, 0x0

    .line 1754
    const/4 v2, 0x0

    .line 1755
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v8, v2

    move v9, v3

    .line 1757
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    invoke-virtual/range {p7 .. p7}, Lorg/spongycastle/jce/provider/ReasonsMask;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1761
    :try_start_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1764
    invoke-static {v2, p0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v12

    .line 1772
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;->c(Lorg/spongycastle/jce/provider/ReasonsMask;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p1

    move-object/from16 v7, p8

    .line 1778
    invoke-static/range {v2 .. v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 1781
    invoke-static {v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v4

    .line 1783
    const/4 v3, 0x0

    .line 1785
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1788
    invoke-static {v10, p1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/util/Date;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    .line 1791
    invoke-static {v3, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v3

    .line 1807
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->d()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1814
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1816
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "No valid CRL for current time found."

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1873
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 1876
    goto :goto_0

    .line 1820
    :cond_3
    invoke-static {p0, p2, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->b(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1823
    invoke-static {p0, p2, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1826
    invoke-static {v3, v2, p1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1829
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v0, v3, p2, v1, p1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V

    .line 1832
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v0, v2, p2, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 1835
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 1837
    const/16 v4, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/spongycastle/jce/provider/CertStatus;->a(I)V

    .line 1841
    :cond_4
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Lorg/spongycastle/jce/provider/ReasonsMask;->a(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 1843
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 1844
    if-eqz v2, :cond_5

    .line 1846
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1847
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->m:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1848
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1852
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "CRL contains unsupported critical extensions."

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1856
    :cond_5
    if-eqz v3, :cond_6

    .line 1858
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 1859
    if-eqz v2, :cond_6

    .line 1861
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1862
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->m:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1863
    sget-object v2, Lorg/spongycastle/asn1/x509/X509Extensions;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1864
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1866
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "Delta CRL contains unsupported critical extension."

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :cond_6
    const/4 v2, 0x1

    move v9, v2

    .line 1876
    goto/16 :goto_0

    .line 1878
    :cond_7
    if-nez v9, :cond_8

    .line 1880
    throw v8

    .line 1882
    :cond_8
    return-void
.end method

.method protected static a(Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1906
    const/4 v10, 0x0

    .line 1910
    :try_start_0
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1919
    :try_start_1
    invoke-static {v0, p0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Lorg/spongycastle/asn1/x509/CRLDistPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1926
    new-instance v6, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 1927
    new-instance v7, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1929
    const/4 v9, 0x0

    .line 1931
    if-eqz v0, :cond_0

    .line 1936
    :try_start_2
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->a()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 1942
    if-eqz v12, :cond_0

    .line 1944
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    array-length v0, v12

    if-ge v11, v0, :cond_0

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 1949
    :try_start_3
    aget-object v0, v12, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1950
    const/4 v0, 0x1

    move-object v1, v10

    .line 1944
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v9, v0

    move-object v10, v1

    goto :goto_0

    .line 1913
    :catch_0
    move-exception v0

    .line 1915
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1921
    :catch_1
    move-exception v0

    .line 1923
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1938
    :catch_2
    move-exception v0

    .line 1940
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1952
    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v9

    .line 1954
    goto :goto_1

    .line 1966
    :cond_0
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1978
    :try_start_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->d()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 1985
    :try_start_5
    new-instance v0, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v3, 0x0

    new-instance v4, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 1987
    invoke-virtual {p0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 1988
    invoke-static/range {v0 .. v8}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->a(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1990
    const/4 v9, 0x1

    .line 1998
    :cond_1
    :goto_2
    if-nez v9, :cond_3

    .line 2000
    instance-of v0, v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_2

    .line 2002
    throw v10

    .line 1981
    :catch_4
    move-exception v0

    .line 1983
    :try_start_6
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1992
    :catch_5
    move-exception v0

    move-object v10, v0

    .line 1994
    goto :goto_2

    .line 2005
    :cond_2
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "No valid CRL found."

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2007
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    .line 2009
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2010
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate revocation after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->a()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->o:[Ljava/lang/String;

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2015
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 2017
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Lorg/spongycastle/jce/provider/CertStatus;->a(I)V

    .line 2019
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->b()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 2021
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Certificate status could not be determined."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_6
    return-void
.end method

.method protected static b(Ljava/security/cert/CertPath;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1595
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1602
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1613
    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 1617
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1621
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1622
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1624
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/ASN1Integer;->a(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1625
    if-ge v0, p2, :cond_1

    move p2, v0

    .line 1639
    :cond_1
    return p2

    .line 1605
    :catch_0
    move-exception v0

    .line 1607
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1632
    :catch_1
    move-exception v0

    .line 1634
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static b(Ljava/security/cert/CertPath;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2065
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2066
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2073
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2081
    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2085
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2076
    :catch_0
    move-exception v0

    .line 2078
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 2090
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_1
    return-void
.end method

.method protected static b(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1648
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1649
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1653
    const/4 v1, 0x0

    .line 1656
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1658
    if-eqz v0, :cond_2

    .line 1660
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1668
    :goto_0
    if-eqz v0, :cond_1

    .line 1674
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->a()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    .line 1675
    if-eqz v1, :cond_0

    .line 1679
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->a([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1691
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->b()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    .line 1692
    if-eqz v1, :cond_1

    .line 1694
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    .line 1697
    :try_start_2
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->a(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1663
    :catch_0
    move-exception v0

    .line 1665
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Name constraints extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1681
    :catch_1
    move-exception v0

    .line 1683
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1699
    :catch_2
    move-exception v0

    .line 1701
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1706
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected static b(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    sget-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_7

    .line 294
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 299
    :goto_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->c()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->a()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v5

    move v3, v2

    .line 305
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 307
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/GeneralName;->a()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 311
    :try_start_0
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/GeneralName;->b()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lorg/spongycastle/asn1/ASN1Encodable;->d()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Primitive;->f()[B

    move-result-object v6

    invoke-static {v6, v4}, Lorg/spongycastle/util/Arrays;->a([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v3, v1

    .line 305
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :cond_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    if-nez v3, :cond_4

    .line 329
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_3
    invoke-static {p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    .line 340
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 342
    new-instance v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string/jumbo v1, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_5
    return-void

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method protected static c(Ljava/security/cert/CertPath;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2031
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2032
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2039
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2048
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2052
    if-ge v0, p2, :cond_0

    move p2, v0

    .line 2057
    :cond_0
    return p2

    .line 2042
    :catch_0
    move-exception v0

    .line 2044
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static c(Ljava/security/cert/CertPath;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2163
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2168
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2170
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 2172
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2176
    :cond_0
    return-void
.end method

.method protected static d(Ljava/security/cert/CertPath;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2100
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2101
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2105
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2107
    if-gtz p2, :cond_0

    .line 2109
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v1, "Max path length not greater than zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 2112
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2114
    :cond_1
    return p2
.end method

.method protected static e(Ljava/security/cert/CertPath;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2123
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2124
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2132
    :try_start_0
    sget-object v1, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2140
    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->b()Ljava/math/BigInteger;

    move-result-object v0

    .line 2144
    if-eqz v0, :cond_0

    .line 2146
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2148
    if-ge v0, p2, :cond_0

    move p2, v0

    .line 2154
    :cond_0
    return p2

    .line 2135
    :catch_0
    move-exception v0

    .line 2137
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static f(Ljava/security/cert/CertPath;II)I
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2217
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2221
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    if-eqz p2, :cond_0

    .line 2228
    add-int/lit8 p2, p2, -0x1

    .line 2231
    :cond_0
    return p2
.end method

.method protected static g(Ljava/security/cert/CertPath;II)I
    .locals 1

    .prologue
    .line 2239
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2240
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2244
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    if-eqz p2, :cond_0

    .line 2251
    add-int/lit8 p2, p2, -0x1

    .line 2254
    :cond_0
    return p2
.end method

.method protected static h(Ljava/security/cert/CertPath;II)I
    .locals 1

    .prologue
    .line 2262
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2263
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2267
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2272
    if-eqz p2, :cond_0

    .line 2274
    add-int/lit8 p2, p2, -0x1

    .line 2277
    :cond_0
    return p2
.end method

.method protected static i(Ljava/security/cert/CertPath;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2314
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2315
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2323
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->a(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERSequence;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2330
    if-eqz v0, :cond_1

    .line 2332
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 2334
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 2337
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2342
    :pswitch_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Lorg/spongycastle/asn1/ASN1Integer;->a(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 2350
    if-nez v0, :cond_0

    move p2, v1

    .line 2358
    :cond_1
    return p2

    .line 2326
    :catch_0
    move-exception v0

    .line 2328
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 2344
    :catch_1
    move-exception v0

    .line 2346
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string/jumbo v2, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 2337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
