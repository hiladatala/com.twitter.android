.class public final Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/JsonMapper;-><init>()V

    return-void
.end method

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;

    invoke-direct {v0}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 29
    const/4 v0, 0x0

    .line 37
    :cond_1
    return-object v0

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 34
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->a:Ljava/util/List;

    .line 70
    if-eqz v0, :cond_3

    .line 71
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/foundmedia/p;

    .line 74
    if-eqz v0, :cond_1

    .line 75
    const-class v2, Lcom/twitter/model/media/foundmedia/p;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocaldataElement"

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->b:Lcom/twitter/model/media/foundmedia/r;

    if-eqz v0, :cond_4

    .line 81
    const-class v0, Lcom/twitter/model/media/foundmedia/r;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->b:Lcom/twitter/model/media/foundmedia/r;

    const-string/jumbo v2, "pagination"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 83
    :cond_4
    if-eqz p2, :cond_5

    .line 84
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 86
    :cond_5
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 46
    const-class v0, Lcom/twitter/model/media/foundmedia/p;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/foundmedia/p;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    iput-object v1, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->a:Ljava/util/List;

    .line 58
    :cond_2
    :goto_1
    return-void

    .line 53
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->a:Ljava/util/List;

    goto :goto_1

    .line 55
    :cond_4
    const-string/jumbo v0, "pagination"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-class v0, Lcom/twitter/model/media/foundmedia/r;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/foundmedia/r;

    iput-object v0, p0, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;->b:Lcom/twitter/model/media/foundmedia/r;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 63
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/media/foundmedia/JsonGiphyImages;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
