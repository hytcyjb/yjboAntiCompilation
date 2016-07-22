.class public Lcom/avos/avoscloud/UrlDirectlyUploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "UrlDirectlyUploader.java"


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 13
    return-void
.end method

.method private getFileRequestParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "url"

    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 18
    new-array v0, v5, [Lcom/avos/avoscloud/AVException;

    .line 19
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-static {v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/UrlDirectlyUploader;->getFileRequestParameters()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/UrlDirectlyUploader$1;

    invoke-direct {v4, p0, v0}, Lcom/avos/avoscloud/UrlDirectlyUploader$1;-><init>(Lcom/avos/avoscloud/UrlDirectlyUploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 44
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
