.class public Ldac;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:Lczy;

.field private final c:Ldab;


# direct methods
.method public constructor <init>(ILczy;Ldab;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Ldac;->a:I

    .line 31
    iput-object p2, p0, Ldac;->b:Lczy;

    .line 32
    iput-object p3, p0, Ldac;->c:Ldab;

    .line 33
    return-void
.end method

.method public constructor <init>(Lczy;Ldab;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ldac;-><init>(ILczy;Ldab;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Ldac;->b:Lczy;

    iget v1, p0, Ldac;->a:I

    invoke-interface {v0, v1}, Lczy;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ldac;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ldac;

    iget v1, p0, Ldac;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ldac;->b:Lczy;

    iget-object v3, p0, Ldac;->c:Ldab;

    invoke-direct {v0, v1, v2, v3}, Ldac;-><init>(ILczy;Ldab;)V

    return-object v0
.end method

.method public c()Ldac;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ldac;

    iget-object v1, p0, Ldac;->b:Lczy;

    iget-object v2, p0, Ldac;->c:Ldab;

    invoke-direct {v0, v1, v2}, Ldac;-><init>(Lczy;Ldab;)V

    return-object v0
.end method
