.class final Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final ENABLE_PUSH:I = 0x2

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0xa

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    .line 82
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    return-void
.end method

.method flags(I)I
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 123
    :cond_1
    return v0
.end method

.method get(I)I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getClientCertificateVectorSize(I)I
    .locals 2

    .prologue
    .line 187
    const/16 v0, 0x100

    .line 188
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/16 v1, 0x8

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getCurrentCwnd(I)I
    .locals 2

    .prologue
    .line 170
    const/16 v0, 0x20

    .line 171
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getDownloadBandwidth(I)I
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x4

    .line 146
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x2

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getDownloadRetransRate(I)I
    .locals 2

    .prologue
    .line 176
    const/16 v0, 0x40

    .line 177
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getEnablePush(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 152
    const/4 v2, 0x4

    .line 153
    iget v3, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    :goto_0
    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_0
    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method getHeaderTableSize()I
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x2

    .line 140
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getInitialWindowSize(I)I
    .locals 2

    .prologue
    .line 181
    const/16 v0, 0x80

    .line 182
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getMaxConcurrentStreams(I)I
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0x10

    .line 165
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getRoundTripTime(I)I
    .locals 2

    .prologue
    .line 158
    const/16 v0, 0x8

    .line 159
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x3

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method getUploadBandwidth(I)I
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x2

    .line 134
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/4 v1, 0x1

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method isFlowControlDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    const/16 v1, 0x400

    .line 194
    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    .line 195
    :goto_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 194
    goto :goto_0
.end method

.method isPersisted(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 209
    shl-int v1, v0, p1

    .line 210
    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSet(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 109
    shl-int v1, v0, p1

    .line 110
    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method merge(Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;)V
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 219
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;

    goto :goto_1

    .line 222
    :cond_1
    return-void
.end method

.method persistValue(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    shl-int v1, v0, p1

    .line 204
    iget v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method set(III)Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 104
    :goto_0
    return-object p0

    .line 90
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 91
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    .line 92
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    .line 97
    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 98
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->values:[I

    aput p3, v0, p1

    goto :goto_0

    .line 95
    :cond_1
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persistValue:I

    goto :goto_1

    .line 100
    :cond_2
    iget v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->persisted:I

    goto :goto_2
.end method

.method size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/spdy/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
