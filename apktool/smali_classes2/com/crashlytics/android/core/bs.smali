.class final Lcom/crashlytics/android/core/bs;
.super Lcom/crashlytics/android/core/bq;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lan;)V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/bq;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/bq;-><init>(I[Lcom/crashlytics/android/core/bq;)V

    .line 392
    iget-object v0, p1, Lan;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/bs;->a:Ljava/lang/String;

    .line 393
    iget-object v0, p1, Lan;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/bs;->b:Ljava/lang/String;

    .line 394
    iget-wide v0, p1, Lan;->c:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/bs;->c:J

    .line 395
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 399
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/bs;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v0

    .line 400
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/core/bs;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->b(ILcom/crashlytics/android/core/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/core/bs;->c:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    return v0
.end method

.method public a(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/bs;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 408
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/core/bs;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/b;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(ILcom/crashlytics/android/core/b;)V

    .line 409
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/core/bs;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(IJ)V

    .line 410
    return-void
.end method
