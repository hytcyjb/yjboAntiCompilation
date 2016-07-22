.class public Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;
.super Lorg/springframework/web/servlet/view/AbstractView;
.source "FastJsonJsonView.java"


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private disableCaching:Z

.field private renderedAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field private updateContentLength:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lorg/springframework/web/servlet/view/AbstractView;-><init>()V

    .line 29
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    .line 31
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 37
    iput-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 40
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setContentType(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setExposePathVariables(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method protected filterModel(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    invoke-static {v0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    move-object v2, v0

    .line 128
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    return-object v3

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/springframework/validation/BindingResult;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method

.method protected prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "Cache-Control"

    const-string v1, "no-cache, no-store, max-age=0"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "Expires"

    const-wide/16 v2, 0x1

    invoke-interface {p2, v0, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 94
    :cond_0
    return-void
.end method

.method protected renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filterModel(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->createTemporaryOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 78
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    iget-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->writeToResponse(Ljavax/servlet/http/HttpServletResponse;Ljava/io/ByteArrayOutputStream;)V

    .line 83
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    .line 59
    return-void
.end method

.method public setDisableCaching(Z)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 103
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 67
    return-void
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public varargs setSerializerFeature([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 51
    return-void
.end method

.method public setUpdateContentLength(Z)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 113
    return-void
.end method
