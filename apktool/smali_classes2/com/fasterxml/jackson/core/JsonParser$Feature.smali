.class public final enum Lcom/fasterxml/jackson/core/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field private static final synthetic k:[Lcom/fasterxml/jackson/core/JsonParser$Feature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_YAML_COMMENTS"

    invoke-direct {v0, v1, v5, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 100
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v6, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 113
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v7, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 126
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 137
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 149
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 169
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 187
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string/jumbo v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->d:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->f:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->g:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->h:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->i:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->j:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->k:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_mask:I

    .line 214
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    .line 215
    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 205
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c()I

    move-result v4

    or-int/2addr v0, v4

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->k:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_mask:I

    return v0
.end method
