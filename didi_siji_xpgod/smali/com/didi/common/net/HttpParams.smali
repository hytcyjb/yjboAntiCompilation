.class public Lcom/didi/common/net/HttpParams;
.super Lnet/tsz/afinal/http/AjaxParams;
.source "HttpParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/net/HttpParams$KVPairComparator;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "didiwuxiankejiyouxian2013"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/http/AjaxParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/http/AjaxParams;-><init>(Ljava/util/Map;)V

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "keysAndValues"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/tsz/afinal/http/AjaxParams;-><init>([Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static newInstance()Lcom/didi/common/net/HttpParams;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/didi/common/net/HttpParams;

    invoke-direct {v0}, Lcom/didi/common/net/HttpParams;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getParamList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/didi/common/net/HttpParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lcom/didi/common/net/HttpParams$KVPairComparator;

    invoke-direct {v1, p0}, Lcom/didi/common/net/HttpParams$KVPairComparator;-><init>(Lcom/didi/common/net/HttpParams;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    return-object v0
.end method

.method public getSortedParamsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/didi/common/net/HttpParams;->getParamList()Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "didiwuxiankejiyouxian2013"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 54
    .local v0, basicNameValuePair:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__x_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    .end local v0           #basicNameValuePair:Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getSortedUrlParamsString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/didi/common/net/HttpParams;->getParamList()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 66
    .local v2, key:Ljava/lang/String;
    const-string v5, ""

    .line 67
    .local v5, value:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 68
    .local v0, basicNameValuePair:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "__x_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 75
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    .end local v0           #basicNameValuePair:Lorg/apache/http/message/BasicNameValuePair;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "key"
    .parameter "file"

    .prologue
    .line 92
    :try_start_0
    invoke-super {p0, p1, p2}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    goto :goto_0
.end method
