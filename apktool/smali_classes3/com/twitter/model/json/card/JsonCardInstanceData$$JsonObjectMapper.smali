.class public final Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/card/JsonCardInstanceData;",
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

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/card/JsonCardInstanceData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/json/card/JsonCardInstanceData;

    invoke-direct {v0}, Lcom/twitter/model/json/card/JsonCardInstanceData;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/card/JsonCardInstanceData;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/card/JsonCardInstanceData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->e:Ljava/util/Map;

    .line 92
    if-eqz v0, :cond_4

    .line 93
    const-string/jumbo v1, "binding_values"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->e()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    const-class v1, Lchr;

    invoke-static {v1}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "lslocalbinding_valuesElement"

    invoke-interface {v1, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->d:Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform;

    if-eqz v0, :cond_5

    .line 108
    const-string/jumbo v0, "card_platform"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->d:Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 111
    :cond_5
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->c:Ljava/util/Map;

    .line 114
    if-eqz v0, :cond_9

    .line 115
    const-string/jumbo v1, "users"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 120
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->e()V

    goto :goto_1

    .line 122
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 123
    const-class v1, Lcom/twitter/model/core/TwitterUser;

    invoke-static {v1}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "lslocalusersElement"

    invoke-interface {v1, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 127
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 129
    :cond_9
    if-eqz p2, :cond_a

    .line 130
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 132
    :cond_a
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/card/JsonCardInstanceData;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string/jumbo v0, "binding_values"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_0

    .line 48
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    const-class v2, Lchr;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    iput-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->e:Ljava/util/Map;

    .line 80
    :cond_2
    :goto_1
    return-void

    .line 55
    :cond_3
    iput-object v4, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->e:Ljava/util/Map;

    goto :goto_1

    .line 57
    :cond_4
    const-string/jumbo v0, "card_platform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-static {p2}, Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->d:Lcom/twitter/model/json/card/JsonCardInstanceData$JsonCardPlatform;

    goto :goto_1

    .line 59
    :cond_5
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->a:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_6
    const-string/jumbo v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->b:Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_7
    const-string/jumbo v0, "users"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_a

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    :goto_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_9

    .line 67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_8

    .line 70
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_8
    const-class v2, Lcom/twitter/model/core/TwitterUser;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_9
    iput-object v0, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->c:Ljava/util/Map;

    goto :goto_1

    .line 77
    :cond_a
    iput-object v4, p0, Lcom/twitter/model/json/card/JsonCardInstanceData;->c:Ljava/util/Map;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/card/JsonCardInstanceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/card/JsonCardInstanceData;

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
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/card/JsonCardInstanceData;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/card/JsonCardInstanceData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/card/JsonCardInstanceData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 85
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
    check-cast p1, Lcom/twitter/model/json/card/JsonCardInstanceData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/card/JsonCardInstanceData$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/card/JsonCardInstanceData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
