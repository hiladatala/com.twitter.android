.class final Lcom/google/android/gms/internal/uu;
.super Lcom/google/android/gms/internal/us;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/us",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/uu;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/us;->e()Lcom/google/android/gms/internal/ux;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/uu;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/uu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ux;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
