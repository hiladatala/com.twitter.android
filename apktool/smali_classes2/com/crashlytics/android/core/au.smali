.class Lcom/crashlytics/android/core/au;
.super Lio/fabric/sdk/android/services/common/a;
.source "Twttr"

# interfaces
.implements Lcom/crashlytics/android/core/at;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/p;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/j;)V
    .locals 6

    .prologue
    .line 37
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->b:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/p;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/j;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 38
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/network/HttpRequest;Lcom/crashlytics/android/core/as;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lcom/crashlytics/android/core/as;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/core/f;->e()Lcom/crashlytics/android/core/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 79
    iget-object v1, p2, Lcom/crashlytics/android/core/as;->b:Lcom/crashlytics/android/core/bx;

    invoke-interface {v1}, Lcom/crashlytics/android/core/bx;->e()Ljava/util/Map;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    move-object v1, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method

.method private b(Lio/fabric/sdk/android/services/network/HttpRequest;Lcom/crashlytics/android/core/as;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 5

    .prologue
    .line 88
    iget-object v0, p2, Lcom/crashlytics/android/core/as;->b:Lcom/crashlytics/android/core/bx;

    .line 90
    const-string/jumbo v1, "report[file]"

    invoke-interface {v0}, Lcom/crashlytics/android/core/bx;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/octet-stream"

    invoke-interface {v0}, Lcom/crashlytics/android/core/bx;->d()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    const-string/jumbo v2, "report[identifier]"

    invoke-interface {v0}, Lcom/crashlytics/android/core/bx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/core/as;)Z
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/crashlytics/android/core/au;->b()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/au;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Lcom/crashlytics/android/core/as;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/au;->b(Lio/fabric/sdk/android/services/network/HttpRequest;Lcom/crashlytics/android/core/as;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 62
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending report to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/au;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->b()I

    move-result v1

    .line 66
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create report request ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v0, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Result was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/ad;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
