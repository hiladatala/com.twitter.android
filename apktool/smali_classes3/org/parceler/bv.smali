.class final Lorg/parceler/bv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/parceler/bw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/parceler/bv;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/parceler/bv;->a(Ljava/lang/ClassLoader;)V

    .line 154
    return-void
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Parcelable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lorg/parceler/bw;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lorg/parceler/bv;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/parceler/bw;

    .line 158
    if-nez v0, :cond_2

    .line 159
    invoke-virtual {p0, p1}, Lorg/parceler/bv;->b(Ljava/lang/Class;)Lorg/parceler/bw;

    move-result-object v1

    .line 161
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lorg/parceler/ba;

    invoke-direct {v1}, Lorg/parceler/ba;-><init>()V

    .line 165
    :cond_0
    if-nez v1, :cond_1

    .line 166
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to find generated Parcelable class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", verify that your class is configured properly and that the Parcelable class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-static {p1}, Lorg/parceler/bv;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is generated by Parceler."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/parceler/bv;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/parceler/bw;

    .line 173
    if-nez v0, :cond_2

    move-object v0, v1

    .line 178
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    const-string/jumbo v0, "org.parceler.Parceler$$Parcels"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/parceler/by;

    invoke-virtual {p0, v0}, Lorg/parceler/bv;->a(Lorg/parceler/by;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lorg/parceler/ParcelerRuntimeException;

    const-string/jumbo v2, "Unable to instantiate generated Repository"

    invoke-direct {v1, v2, v0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 213
    :catch_1
    move-exception v0

    .line 214
    new-instance v1, Lorg/parceler/ParcelerRuntimeException;

    const-string/jumbo v2, "Unable to access generated Repository"

    invoke-direct {v1, v2, v0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 209
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/parceler/by;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/parceler/by",
            "<",
            "Lorg/parceler/bw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/parceler/bv;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/parceler/by;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 220
    return-void
.end method

.method public b(Ljava/lang/Class;)Lorg/parceler/bw;
    .locals 2

    .prologue
    .line 188
    :try_start_0
    invoke-static {p1}, Lorg/parceler/bv;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 189
    new-instance v0, Lorg/parceler/bx;

    invoke-direct {v0, p1, v1}, Lorg/parceler/bx;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method