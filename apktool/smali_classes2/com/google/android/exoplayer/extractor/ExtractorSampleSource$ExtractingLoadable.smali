.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private volatile loadCanceled:Z

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

.field private final requestedBufferSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V
    .locals 2

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 798
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 799
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .line 800
    invoke-static {p4}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocator;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 801
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    .line 802
    new-instance v0, Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    iput-wide p6, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 805
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    .line 810
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 819
    move v9, v7

    .line 820
    :goto_0
    if-nez v9, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v0, :cond_7

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    iget-wide v2, v0, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 824
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    .line 825
    cmp-long v0, v4, v12

    if-eqz v0, :cond_0

    .line 826
    add-long/2addr v4, v2

    .line 828
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/Extractor;

    move-result-object v2

    .line 830
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_1

    .line 831
    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/Extractor;->seek()V

    .line 832
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move v1, v9

    .line 834
    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_2

    .line 835
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocator;->blockWhileTotalBytesAllocatedExceeds(I)V

    .line 836
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    move v1, v9

    goto :goto_1

    .line 840
    :cond_2
    if-ne v1, v11, :cond_3

    move v0, v7

    .line 845
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    move v9, v0

    .line 847
    goto :goto_0

    .line 842
    :cond_3
    if-eqz v0, :cond_4

    .line 843
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    :cond_4
    move v0, v1

    goto :goto_2

    .line 840
    :catchall_0
    move-exception v0

    move-object v1, v8

    move v2, v9

    :goto_3
    if-ne v2, v11, :cond_6

    .line 845
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v0

    .line 842
    :cond_6
    if-eqz v1, :cond_5

    .line 843
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer/extractor/PositionHolder;

    invoke-interface {v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    goto :goto_4

    .line 848
    :cond_7
    return-void

    .line 840
    :catchall_1
    move-exception v1

    move v2, v9

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v14, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_3
.end method
