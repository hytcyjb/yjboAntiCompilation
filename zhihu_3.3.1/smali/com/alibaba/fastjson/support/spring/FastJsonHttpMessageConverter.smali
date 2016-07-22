.class public Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "FastJsonHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/springframework/http/MediaType;

    new-instance v1, Lorg/springframework/http/MediaType;

    const-string v2, "application"

    const-string v3, "json"

    sget-object v4, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Lorg/springframework/http/MediaType;

    const-string v3, "application"

    const-string v4, "*+json"

    sget-object v5, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v5}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>([Lorg/springframework/http/MediaType;)V

    .line 23
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    .line 25
    new-array v0, v6, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 29
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v2

    .line 60
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 63
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 73
    array-length v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    new-array v5, v1, [Lcom/alibaba/fastjson/parser/Feature;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    if-lez v4, :cond_0

    .line 68
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    .line 42
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 50
    return-void
.end method

.method protected supports(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 84
    return-void
.end method
