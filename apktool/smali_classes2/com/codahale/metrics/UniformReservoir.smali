.class public Lcom/codahale/metrics/UniformReservoir;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/codahale/metrics/Reservoir;


# static fields
.field private static final BITS_PER_LONG:I = 0x3f

.field private static final DEFAULT_SIZE:I = 0x404


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final values:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x404

    invoke-direct {p0, v0}, Lcom/codahale/metrics/UniformReservoir;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 35
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 39
    return-void
.end method

.method private static nextLong(J)J
    .locals 6

    .prologue
    .line 73
    :cond_0
    invoke-static {}, Lcom/codahale/metrics/ThreadLocalRandom;->current()Lcom/codahale/metrics/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 74
    rem-long v2, v0, p0

    .line 75
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 76
    return-wide v2
.end method


# virtual methods
.method public getSnapshot()Lcom/codahale/metrics/Snapshot;
    .locals 6

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/codahale/metrics/UniformReservoir;->size()I

    move-result v1

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    iget-object v3, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lcom/codahale/metrics/UniformSnapshot;

    invoke-direct {v0, v2}, Lcom/codahale/metrics/UniformSnapshot;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public update(J)V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/codahale/metrics/UniformReservoir;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 53
    iget-object v2, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {v0, v1}, Lcom/codahale/metrics/UniformReservoir;->nextLong(J)J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/codahale/metrics/UniformReservoir;->values:Ljava/util/concurrent/atomic/AtomicLongArray;

    long-to-int v0, v0

    invoke-virtual {v2, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    goto :goto_0
.end method
