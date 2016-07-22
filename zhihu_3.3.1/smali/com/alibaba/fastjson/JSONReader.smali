.class public Lcom/alibaba/fastjson/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    .line 29
    return-void
.end method

.method private endStructure()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 94
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getParent()Lcom/alibaba/fastjson/JSONStreamContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    .line 102
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 116
    :goto_1
    if-eq v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONStreamContext;->setState(I)V

    goto :goto_0

    .line 104
    :pswitch_0
    const/16 v0, 0x3eb

    .line 105
    goto :goto_1

    .line 107
    :pswitch_1
    const/16 v0, 0x3ed

    .line 108
    goto :goto_1

    .line 111
    :pswitch_2
    const/16 v0, 0x3ea

    .line 112
    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readAfter()V
    .locals 4

    .prologue
    const/16 v0, 0x3ea

    const/4 v1, -0x1

    .line 276
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v2

    .line 278
    packed-switch v2, :pswitch_data_0

    .line 294
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "illegal state : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    const/16 v0, 0x3eb

    .line 296
    :goto_0
    :pswitch_1
    if-eq v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONStreamContext;->setState(I)V

    .line 299
    :cond_0
    return-void

    :pswitch_2
    move v0, v1

    .line 289
    goto :goto_0

    .line 291
    :pswitch_3
    const/16 v0, 0x3ed

    .line 292
    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readBefore()V
    .locals 4

    .prologue
    const/16 v2, 0x10

    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    .line 256
    packed-switch v0, :pswitch_data_0

    .line 271
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 273
    :goto_0
    :pswitch_1
    return-void

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private startStructure()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 91
    :goto_0
    :pswitch_1
    return-void

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 142
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 41
    return-void
.end method

.method public endArray()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 72
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    .line 73
    return-void
.end method

.method public endObject()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    .line 57
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v2, :cond_0

    .line 123
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v3

    .line 128
    packed-switch v3, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_1
    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    .line 134
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :pswitch_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public readInteger()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 151
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readLong()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 167
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 164
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 237
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readObject(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 180
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 176
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 177
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    goto :goto_0
.end method

.method public startArray()V
    .locals 3

    .prologue
    const/16 v2, 0x3ec

    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 68
    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 65
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_0
.end method

.method public startObject()V
    .locals 3

    .prologue
    const/16 v2, 0x3e9

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xc

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    .line 52
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 48
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_0
.end method
