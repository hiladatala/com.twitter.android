.class public final Lpd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/gson/u;


# instance fields
.field private final a:Lcom/google/gson/internal/b;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/b;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lpd;->a:Lcom/google/gson/internal/b;

    .line 112
    iput-boolean p2, p0, Lpd;->b:Z

    .line 113
    return-void
.end method

.method private a(Lcom/google/gson/d;Ljava/lang/reflect/Type;)Lcom/google/gson/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/d;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/s",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lpr;->f:Lcom/google/gson/s;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lqz;->a(Ljava/lang/reflect/Type;)Lqz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->a(Lqz;)Lcom/google/gson/s;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lpd;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lpd;->b:Z

    return v0
.end method


# virtual methods
.method public create(Lcom/google/gson/d;Lqz;)Lcom/google/gson/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/d;",
            "Lqz",
            "<TT;>;)",
            "Lcom/google/gson/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lqz;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lqz;->a()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/gson/internal/$Gson$Types;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lpd;->a(Lcom/google/gson/d;Ljava/lang/reflect/Type;)Lcom/google/gson/s;

    move-result-object v4

    .line 126
    aget-object v0, v1, v5

    invoke-static {v0}, Lqz;->a(Ljava/lang/reflect/Type;)Lqz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->a(Lqz;)Lcom/google/gson/s;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lpd;->a:Lcom/google/gson/internal/b;

    invoke-virtual {v0, p2}, Lcom/google/gson/internal/b;->a(Lqz;)Lcom/google/gson/internal/y;

    move-result-object v7

    .line 131
    new-instance v0, Lpe;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lpe;-><init>(Lpd;Lcom/google/gson/d;Ljava/lang/reflect/Type;Lcom/google/gson/s;Ljava/lang/reflect/Type;Lcom/google/gson/s;Lcom/google/gson/internal/y;)V

    goto :goto_0
.end method