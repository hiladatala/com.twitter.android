.class Lokhttp3/internal/framed/o;
.super Ldbr;
.source "Twttr"

# interfaces
.implements Lokhttp3/internal/framed/b;


# instance fields
.field final a:Lokhttp3/internal/framed/a;

.field final synthetic c:Lokhttp3/internal/framed/d;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/a;)V
    .locals 4

    .prologue
    .line 600
    iput-object p1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    .line 601
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ldbr;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iput-object p2, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/e;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/o;-><init>(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/a;)V

    return-void
.end method

.method private a(Lokhttp3/internal/framed/ao;)V
    .locals 6

    .prologue
    .line 755
    invoke-static {}, Lokhttp3/internal/framed/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/r;

    const-string/jumbo v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v5}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/r;-><init>(Lokhttp3/internal/framed/o;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/ao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    .prologue
    .line 820
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p2, p3}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;ILjava/util/List;)V

    .line 825
    return-void
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    .line 802
    if-nez p1, :cond_1

    .line 803
    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-wide v2, v0, Lokhttp3/internal/framed/d;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lokhttp3/internal/framed/d;->d:J

    .line 805
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 808
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/d;->a(I)Lokhttp3/internal/framed/s;

    move-result-object v1

    .line 809
    if-eqz v1, :cond_0

    .line 810
    monitor-enter v1

    .line 811
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/framed/s;->a(J)V

    .line 812
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p1}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p1, p2}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;ILokhttp3/internal/framed/ErrorCode;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/d;->b(I)Lokhttp3/internal/framed/s;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/s;->c(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 5

    .prologue
    .line 782
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 787
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v2}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/s;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/s;

    .line 789
    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/d;Z)Z

    .line 790
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 794
    invoke-virtual {v3}, Lokhttp3/internal/framed/s;->a()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3}, Lokhttp3/internal/framed/s;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/s;->c(Lokhttp3/internal/framed/ErrorCode;)V

    .line 796
    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v3}, Lokhttp3/internal/framed/s;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lokhttp3/internal/framed/d;->b(I)Lokhttp3/internal/framed/s;

    .line 793
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 799
    :cond_2
    return-void
.end method

.method public a(ZII)V
    .locals 3

    .prologue
    .line 770
    if-eqz p1, :cond_1

    .line 771
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/d;->c(Lokhttp3/internal/framed/d;I)Lokhttp3/internal/framed/al;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lokhttp3/internal/framed/al;->b()V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/d;ZIILokhttp3/internal/framed/al;)V

    goto :goto_0
.end method

.method public a(ZILokio/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p2, p3, p4, p1}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;ILokio/j;IZ)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/d;->a(I)Lokhttp3/internal/framed/s;

    move-result-object v0

    .line 635
    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/framed/d;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 637
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/j;->g(J)V

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/s;->a(Lokio/j;I)V

    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {v0}, Lokhttp3/internal/framed/s;->i()V

    goto :goto_0
.end method

.method public a(ZLokhttp3/internal/framed/ao;)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 719
    .line 720
    const/4 v0, 0x0

    .line 721
    iget-object v8, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    monitor-enter v8

    .line 722
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-object v2, v2, Lokhttp3/internal/framed/d;->f:Lokhttp3/internal/framed/ao;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lokhttp3/internal/framed/ao;->f(I)I

    move-result v2

    .line 723
    if-eqz p1, :cond_0

    iget-object v3, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-object v3, v3, Lokhttp3/internal/framed/d;->f:Lokhttp3/internal/framed/ao;

    invoke-virtual {v3}, Lokhttp3/internal/framed/ao;->a()V

    .line 724
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-object v3, v3, Lokhttp3/internal/framed/d;->f:Lokhttp3/internal/framed/ao;

    invoke-virtual {v3, p2}, Lokhttp3/internal/framed/ao;->a(Lokhttp3/internal/framed/ao;)V

    .line 725
    iget-object v3, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v3}, Lokhttp3/internal/framed/d;->a()Lokhttp3/Protocol;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1

    .line 726
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/o;->a(Lokhttp3/internal/framed/ao;)V

    .line 728
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-object v3, v3, Lokhttp3/internal/framed/d;->f:Lokhttp3/internal/framed/ao;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/ao;->f(I)I

    move-result v3

    .line 729
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_5

    .line 730
    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 731
    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v4}, Lokhttp3/internal/framed/d;->g(Lokhttp3/internal/framed/d;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 732
    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v4, v2, v3}, Lokhttp3/internal/framed/d;->a(J)V

    .line 733
    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;Z)Z

    .line 735
    :cond_2
    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v4}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 736
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v4}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/s;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/s;

    move-wide v4, v2

    move-object v2, v0

    .line 739
    :goto_0
    invoke-static {}, Lokhttp3/internal/framed/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lokhttp3/internal/framed/q;

    const-string/jumbo v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v12}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lokhttp3/internal/framed/q;-><init>(Lokhttp3/internal/framed/o;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 744
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    if-eqz v2, :cond_3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 746
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v1, v2, v0

    .line 747
    monitor-enter v1

    .line 748
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/framed/s;->a(J)V

    .line 749
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 749
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 752
    :cond_3
    return-void

    :cond_4
    move-wide v4, v2

    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v2, v0

    move-wide v4, v6

    goto :goto_0
.end method

.method public a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0, p3, p5, p2}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;ILjava/util/List;Z)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v6, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    monitor-enter v6

    .line 655
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 657
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/d;->a(I)Lokhttp3/internal/framed/s;

    move-result-object v0

    .line 659
    if-nez v0, :cond_6

    .line 661
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lokhttp3/internal/framed/d;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 663
    monitor-exit v6

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v0}, Lokhttp3/internal/framed/d;->c(Lokhttp3/internal/framed/d;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 670
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v1}, Lokhttp3/internal/framed/d;->d(Lokhttp3/internal/framed/d;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 674
    :cond_5
    new-instance v0, Lokhttp3/internal/framed/s;

    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/s;-><init>(ILokhttp3/internal/framed/d;ZZLjava/util/List;)V

    .line 676
    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v1, p3}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/d;I)I

    .line 677
    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v1}, Lokhttp3/internal/framed/d;->e(Lokhttp3/internal/framed/d;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {}, Lokhttp3/internal/framed/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/framed/p;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v7}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/framed/p;-><init>(Lokhttp3/internal/framed/o;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/s;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 691
    monitor-exit v6

    goto :goto_0

    .line 693
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 697
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/s;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 698
    iget-object v0, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/d;->b(I)Lokhttp3/internal/framed/s;

    goto/16 :goto_0

    .line 703
    :cond_7
    invoke-virtual {v0, p5, p6}, Lokhttp3/internal/framed/s;->a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 704
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/framed/s;->i()V

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 606
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->g:Lokhttp3/internal/framed/ErrorCode;

    .line 607
    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->g:Lokhttp3/internal/framed/ErrorCode;

    .line 609
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-boolean v1, v1, Lokhttp3/internal/framed/d;->b:Z

    if-nez v1, :cond_0

    .line 610
    iget-object v1, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    invoke-interface {v1}, Lokhttp3/internal/framed/a;->a()V

    .line 612
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    invoke-interface {v1, p0}, Lokhttp3/internal/framed/a;->a(Lokhttp3/internal/framed/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->a:Lokhttp3/internal/framed/ErrorCode;

    .line 615
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 624
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    invoke-static {v0}, Ldbw;->a(Ljava/io/Closeable;)V

    .line 626
    :goto_1
    return-void

    .line 616
    :catch_0
    move-exception v1

    .line 617
    :try_start_2
    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    :try_start_3
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 621
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v2, v1, v0}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 624
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    invoke-static {v0}, Ldbw;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 620
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 621
    :goto_3
    :try_start_5
    iget-object v3, p0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    invoke-static {v3, v1, v2}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 624
    :goto_4
    iget-object v1, p0, Lokhttp3/internal/framed/o;->a:Lokhttp3/internal/framed/a;

    invoke-static {v1}, Ldbw;->a(Ljava/io/Closeable;)V

    throw v0

    .line 622
    :catch_1
    move-exception v1

    goto :goto_4

    .line 620
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 622
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
