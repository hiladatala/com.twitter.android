.class public final Lcom/google/android/gms/internal/sf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/sf;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/sf;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/sf;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ar;->e()Lcom/google/android/gms/internal/qw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/sf;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qw;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ar;->e()Lcom/google/android/gms/internal/qw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/sf;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qw;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->b:Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/sf;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ar;->g()Lcom/google/android/gms/internal/qz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/sf;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qz;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ar;->e()Lcom/google/android/gms/internal/qw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/sf;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qw;->b(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->b:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sf;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sf;->e()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sf;->a:Landroid/app/Activity;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/sf;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->c:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sf;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sf;->e()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sf;->c:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/sf;->f()V

    return-void
.end method
