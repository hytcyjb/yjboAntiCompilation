.class public Lcom/alibaba/fastjson/serializer/ColorCodec;
.super Ljava/lang/Object;
.source "ColorCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ColorCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/fastjson/serializer/ColorCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ColorCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ColorCodec;->instance:Lcom/alibaba/fastjson/serializer/ColorCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v5

    .line 48
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 49
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move v1, v0

    move v2, v0

    move v3, v0

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 56
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 93
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v4

    .line 61
    :cond_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 62
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 69
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 70
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 71
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 76
    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    .line 88
    :goto_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v10, :cond_1

    .line 89
    invoke-interface {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5
    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v2, v4

    .line 80
    goto :goto_1

    :cond_6
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v1, v4

    .line 82
    goto :goto_1

    :cond_7
    const-string v0, "alpha"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0xc

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x7b

    const/16 v1, 0x2c

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v2

    .line 20
    check-cast p2, Ljava/awt/Color;

    .line 21
    if-nez p2, :cond_0

    .line 22
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 42
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 29
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 30
    const-class v0, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 34
    :cond_1
    const-string v3, "r"

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 35
    const-string v0, "g"

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 36
    const-string v0, "b"

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 37
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    .line 38
    const-string v0, "alpha"

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 41
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method
