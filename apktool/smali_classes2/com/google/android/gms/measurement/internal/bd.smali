.class Lcom/google/android/gms/measurement/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/bc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/bc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bd;->b:Lcom/google/android/gms/measurement/internal/bc;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/bd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->b:Lcom/google/android/gms/measurement/internal/bc;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bc;->n:Lcom/google/android/gms/measurement/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->e()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bd;->b:Lcom/google/android/gms/measurement/internal/bc;

    const/4 v1, 0x6

    const-string/jumbo v2, "Persisted config not initialized . Not logging error/warn."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/bc;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bn;->b:Lcom/google/android/gms/measurement/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/br;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
