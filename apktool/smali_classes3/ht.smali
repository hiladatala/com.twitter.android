.class public final Lht;
.super Lcom/google/android/gms/internal/xs;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xs;-><init>()V

    invoke-virtual {p0}, Lht;->a()Lht;

    return-void
.end method


# virtual methods
.method public a()Lht;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lht;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lht;->S:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/xm;)Lht;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xm;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xv;->a(Lcom/google/android/gms/internal/xm;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xm;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lht;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lht;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lht;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->a(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xs;->a(Lcom/google/android/gms/internal/zzsn;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xs;->b()I

    move-result v0

    iget-object v1, p0, Lht;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lht;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lht;->a(Lcom/google/android/gms/internal/xm;)Lht;

    move-result-object v0

    return-object v0
.end method
