.class Lorg/spongycastle/crypto/tls/DigestInputBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lorg/spongycastle/crypto/Digest;)V
    .locals 3

    .prologue
    .line 11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->count:I

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->a([BII)V

    .line 12
    return-void
.end method
