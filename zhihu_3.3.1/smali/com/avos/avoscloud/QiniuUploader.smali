.class Lcom/avos/avoscloud/QiniuUploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;,
        Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;,
        Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;,
        Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;,
        Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400000

.field private static final DEFAULT_RETRY_TIMES:I = 0x6

.field private static final NONWIFI_CHUNK_SIZE:I = 0x10000

.field private static final PROGRESS_COMPLETE:I = 0x64

.field static final PROGRESS_GET_TOKEN:I = 0xa

.field static final PROGRESS_UPLOAD_FILE:I = 0x5a

.field private static final QINIU_BRICK_UPLOAD_EP:Ljava/lang/String; = "http://upload.qiniu.com/bput/%s/%d"

.field private static final QINIU_CREATE_BLOCK_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkblk/%d"

.field private static final QINIU_HOST:Ljava/lang/String; = "http://upload.qiniu.com"

.field private static final QINIU_MKFILE_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkfile/%d/key/%s"

.field private static final WIFI_CHUNK_SIZE:I = 0x40000

.field static final fileUploadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private blockCount:I

.field private bucket:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private volatile mergeFileRequestCall:Lcom/avos/avoscloud/okhttp/Call;

.field private objectId:Ljava/lang/String;

.field private progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

.field private volatile tasks:[Ljava/util/concurrent/Future;

.field private token:Ljava/lang/String;

.field uploadChunkSize:I

.field private uploadFileCtx:[Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/QiniuUploader;->fileUploadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 60
    const/high16 v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/QiniuUploader;Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;->handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/QiniuUploader;Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/QiniuUploader;->addAuthHeader(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addAuthHeader(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;
    .locals 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 101
    :cond_0
    return-object p1
.end method

.method private destroyFileObject()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :try_start_0
    const-string v0, "_File"

    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/avos/avoscloud/QiniuUploader$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/QiniuUploader$2;-><init>(Lcom/avos/avoscloud/QiniuUploader;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getGetBucketParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 359
    const-string v1, "key"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 368
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 340
    if-eqz p2, :cond_0

    .line 354
    :goto_0
    return-object p2

    .line 342
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v1, "bucket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->bucket:Ljava/lang/String;

    .line 344
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    .line 345
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/4 v0, -0x1

    const-string v1, "No token return for qiniu upload"

    invoke-direct {p2, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    new-instance p2, Lcom/avos/avoscloud/AVException;

    invoke-direct {p2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :cond_1
    :try_start_1
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    :try_start_0
    const-string v0, "http://upload.qiniu.com/mkfile/%d/key/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 182
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 183
    const-string v2, ","

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 185
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 187
    const-string v0, "text"

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 188
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/QiniuUploader;->addAuthHeader(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/avos/avoscloud/QiniuUploader;->getOKHttpClient()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->mergeFileRequestCall:Lcom/avos/avoscloud/okhttp/Call;

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->mergeFileRequestCall:Lcom/avos/avoscloud/okhttp/Call;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    .line 193
    invoke-direct {p0, p1, p2, v1}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_0
    const-string v1, "Exception during file upload"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseFileKey()V
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    :cond_0
    if-lez v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 95
    :cond_1
    return-void
.end method

.method private static parseQiniuResponse(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/avos/avoscloud/okhttp/Response;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v2, "X-Log"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    const/16 v3, 0x191

    if-ne v0, v3, :cond_0

    .line 209
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unauthorized to create Qiniu Block"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/ResponseBody;->bytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 213
    :try_start_0
    div-int/lit8 v4, v0, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 214
    invoke-static {v3, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    return-object v0

    .line 217
    :catch_0
    move-exception v4

    .line 219
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 220
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_2
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->fetchUploadBucket()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 114
    array-length v0, v1

    const/high16 v3, 0x40

    div-int v3, v0, v3

    array-length v0, v1

    const/high16 v4, 0x40

    rem-int/2addr v0, v4

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    iput v0, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    .line 115
    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    .line 119
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    new-instance v0, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$1;

    invoke-direct {v4, p0}, Lcom/avos/avoscloud/QiniuUploader$1;-><init>(Lcom/avos/avoscloud/QiniuUploader;)V

    invoke-direct {v0, v2, v4}, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;-><init>(ILcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;)V

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    .line 126
    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    new-array v0, v0, [Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    .line 127
    iget-object v9, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v8

    .line 128
    :goto_2
    :try_start_1
    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    if-ge v2, v0, :cond_2

    .line 129
    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    sget-object v11, Lcom/avos/avoscloud/QiniuUploader;->fileUploadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;

    iget v4, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    iget-object v5, p0, Lcom/avos/avoscloud/QiniuUploader;->progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    iget-object v6, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;-><init>([BILjava/util/concurrent/CountDownLatch;ILcom/avos/avoscloud/QiniuUploader$ProgressCalculator;[Ljava/lang/String;Lcom/avos/avoscloud/QiniuUploader;)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v8

    .line 114
    goto :goto_1

    .line 133
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 135
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v2, v1

    move v0, v8

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 137
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 133
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 157
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 160
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 142
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 145
    :cond_5
    array-length v0, v1

    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 149
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 150
    :cond_6
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 151
    const/4 v0, -0x1

    const-string v1, "upload file failure"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 162
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->parseFileKey()V

    .line 67
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 70
    const/high16 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    .line 72
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploading with chunk size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    .line 78
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected fetchUploadBucket()Lcom/avos/avoscloud/AVException;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 377
    new-array v0, v6, [Lcom/avos/avoscloud/AVException;

    .line 378
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->getUploadPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->getGetBucketParameters()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$3;

    invoke-direct {v4, p0, v0}, Lcom/avos/avoscloud/QiniuUploader$3;-><init>(Lcom/avos/avoscloud/QiniuUploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 391
    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 393
    aget-object v0, v0, v5

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUploadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "qiniu"

    return-object v0
.end method

.method public interruptImmediately()V
    .locals 4

    .prologue
    .line 571
    invoke-super {p0}, Lcom/avos/avoscloud/HttpClientUploader;->interruptImmediately()V

    .line 573
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 574
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v1

    .line 575
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    aget-object v2, v2, v0

    .line 577
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 578
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 575
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->mergeFileRequestCall:Lcom/avos/avoscloud/okhttp/Call;

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->mergeFileRequestCall:Lcom/avos/avoscloud/okhttp/Call;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->cancel()V

    .line 587
    :cond_3
    return-void

    .line 581
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
