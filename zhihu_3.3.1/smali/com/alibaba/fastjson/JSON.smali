.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;
.implements Lcom/alibaba/fastjson/JSONStreamAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.37"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "@type"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v0

    or-int/2addr v0, v2

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 75
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 78
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/2addr v0, v2

    .line 84
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 86
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 89
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 705
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveTaskListDirect()Ljava/util/List;

    move-result-object v3

    .line 255
    if-nez v3, :cond_1

    .line 281
    :cond_0
    return-void

    .line 258
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 259
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 260
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 261
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 263
    if-nez v5, :cond_2

    .line 259
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 269
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 272
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getReferenceValue()Ljava/lang/String;

    move-result-object v6

    .line 274
    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    :goto_2
    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 277
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 93
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 102
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 151
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 152
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 156
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    aget-object v3, p1, v0

    .line 153
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 131
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 132
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getChars(I)[C

    move-result-object v0

    .line 134
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 135
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 136
    invoke-static {p3, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 138
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 140
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 141
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 147
    return-object v0
.end method

.method public static final varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 120
    :cond_1
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 121
    array-length v2, p4

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 125
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    aget-object v3, p4, v0

    .line 122
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    if-nez p0, :cond_0

    .line 354
    :goto_0
    return-object v0

    .line 335
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 339
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 340
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 341
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 352
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 343
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    .line 346
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 347
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 349
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 358
    if-nez p0, :cond_0

    .line 378
    :goto_0
    return-object v0

    .line 364
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 365
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 366
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 367
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 376
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 370
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 373
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 382
    if-nez p0, :cond_0

    .line 400
    :goto_0
    return-object v0

    .line 388
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 389
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v2

    .line 390
    if-nez v2, :cond_1

    .line 396
    :goto_1
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 204
    :cond_0
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 208
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 209
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 204
    :cond_1
    aget-object v2, p3, v0

    .line 205
    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    .line 230
    :cond_0
    array-length v1, p5

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_3

    .line 234
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 236
    instance-of v0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object v2

    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_1
    instance-of v0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object v0

    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 230
    :cond_3
    aget-object v2, p5, v0

    .line 231
    const/4 v3, 0x1

    invoke-static {p4, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 293
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 294
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getChars(I)[C

    move-result-object v0

    .line 296
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 298
    invoke-static {p3, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 300
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 302
    invoke-static {v0, v1, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 285
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    .line 311
    :cond_1
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 312
    array-length v2, p3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 316
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 317
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 312
    :cond_2
    aget-object v3, p3, v0

    .line 313
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 618
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 623
    if-nez p0, :cond_1

    move-object p0, v0

    .line 695
    :cond_0
    :goto_0
    return-object p0

    .line 627
    :cond_1
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_2

    .line 628
    check-cast p0, Lcom/alibaba/fastjson/JSON;

    goto :goto_0

    .line 631
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 632
    check-cast p0, Ljava/util/Map;

    .line 634
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 636
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object p0, v1

    .line 643
    goto :goto_0

    .line 636
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 638
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 646
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 647
    check-cast p0, Ljava/util/Collection;

    .line 649
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 651
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    move-object p0, v0

    .line 656
    goto :goto_0

    .line 651
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 652
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 653
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 659
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 662
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 665
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 666
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 668
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 670
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v2, :cond_8

    move-object p0, v0

    .line 676
    goto/16 :goto_0

    .line 671
    :cond_8
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 672
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 673
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 679
    :cond_9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 686
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 688
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    move-object p0, v1

    .line 695
    goto/16 :goto_0

    .line 688
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 689
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 690
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 692
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 696
    :catch_0
    move-exception v0

    .line 697
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 550
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 551
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 555
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 557
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 559
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 557
    return-object v0

    .line 551
    :cond_0
    :try_start_1
    aget-object v4, p2, v0

    .line 552
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    .line 559
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 560
    throw v0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 499
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 502
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 503
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 507
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 509
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 511
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 509
    return-object v0

    .line 503
    :cond_0
    :try_start_1
    aget-object v4, p1, v0

    .line 504
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    .line 511
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 512
    throw v0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 519
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 520
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 524
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 526
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 528
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 526
    return-object v0

    .line 520
    :cond_0
    :try_start_1
    aget-object v4, p2, v0

    .line 521
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    .line 528
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 529
    throw v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 457
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 458
    array-length v4, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_6

    .line 462
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 464
    if-eqz p1, :cond_5

    .line 465
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFilters()Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v1, :cond_2

    .line 474
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFilters()Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_2
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v1, :cond_3

    .line 478
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFilters()Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v1, :cond_4

    .line 482
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFilters()Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_4
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v1, :cond_5

    .line 486
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFilters()Ljava/util/List;

    move-result-object v1

    check-cast p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_5
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 494
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 492
    return-object v1

    .line 458
    :cond_6
    :try_start_1
    aget-object v5, p2, v1

    .line 459
    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v1

    .line 494
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 495
    throw v1
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 413
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 414
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 418
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 422
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 420
    return-object v0

    .line 414
    :cond_0
    :try_start_1
    aget-object v4, p1, v0

    .line 415
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 423
    throw v0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 434
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 435
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 439
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 449
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 447
    return-object v0

    .line 435
    :cond_1
    :try_start_1
    aget-object v4, p2, v0

    .line 436
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    .line 449
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 450
    throw v0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 536
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 538
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 542
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 540
    return-object v0

    .line 541
    :catchall_0
    move-exception v0

    .line 542
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 543
    throw v0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 575
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 576
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 580
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 584
    return-void

    .line 576
    :cond_0
    :try_start_1
    aget-object v4, p2, v0

    .line 577
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    .line 582
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 583
    throw v0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 596
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 597
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 599
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 597
    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 600
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4
    .parameter

    .prologue
    .line 604
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 606
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 613
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :catchall_0
    move-exception v0

    .line 611
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 612
    throw v0
.end method
