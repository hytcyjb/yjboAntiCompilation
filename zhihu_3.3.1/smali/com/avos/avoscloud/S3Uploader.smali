.class public Lcom/avos/avoscloud/S3Uploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "S3Uploader.java"


# static fields
.field private static final S3BasePath:Ljava/lang/String; = "https://s3.amazonaws.com/avos-cloud"

.field private static final bucket:Ljava/lang/String; = "avos-cloud"


# instance fields
.field private access:Ljava/lang/String;

.field private volatile call:Lcom/avos/avoscloud/okhttp/Call;

.field private objectId:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 40
    return-void
.end method

.method private RFC822FormatStringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 227
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 229
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 230
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/S3Uploader;->handleGetKeyResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/S3Uploader;->handlePostResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method private authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->access:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/S3Uploader;->signature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getParametersForUrulu()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 176
    const-string v1, "key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "url"

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getS3Link(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://s3.amazonaws.com/avos-cloud/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleGetKeyResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .parameter

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/avos/avoscloud/signature/AES;

    invoke-direct {v1}, Lcom/avos/avoscloud/signature/AES;-><init>()V

    .line 152
    const-string v2, "access_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->access:Ljava/lang/String;

    .line 153
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->secret:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 156
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handlePostResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 2
    .parameter

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 168
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private md5WithHmac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 199
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->secret:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 201
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA1"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 202
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 205
    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0
.end method

.method private signature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    const-string v0, "/avos-cloud/"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/S3Uploader;->md5WithHmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 47
    if-lez v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/S3Uploader;->getOKHttpClient()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v7

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v8

    .line 58
    const/4 v0, 0x1

    new-array v9, v0, [Lcom/avos/avoscloud/AVException;

    .line 59
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "s3"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/S3Uploader$1;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/S3Uploader$1;-><init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 70
    const/4 v0, 0x0

    aget-object v0, v9, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v9, v0

    .line 140
    :goto_0
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/S3Uploader;->getS3Link(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const-string v2, "files"

    invoke-direct {p0}, Lcom/avos/avoscloud/S3Uploader;->getParametersForUrulu()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/avos/avoscloud/S3Uploader$2;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/S3Uploader$2;-><init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 90
    const/4 v1, 0x0

    aget-object v1, v9, v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, v9, v0

    goto :goto_0

    .line 93
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 94
    const-string v2, "http://avos-cloud.s3.amazonaws.com/"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 100
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/avos/avoscloud/okhttp/MultipartBuilder;

    invoke-direct {v3}, Lcom/avos/avoscloud/okhttp/MultipartBuilder;-><init>()V

    const-string v4, "acl"

    const/4 v5, 0x0

    const-string v9, "text/plain"

    invoke-static {v9}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v9

    const-string v10, "public-read"

    invoke-virtual {v10, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[B)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v9

    invoke-virtual {v3, v4, v5, v9}, Lcom/avos/avoscloud/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/MultipartBuilder;

    move-result-object v3

    const-string v4, "key"

    const/4 v5, 0x0

    const-string v9, "text/plain"

    invoke-static {v9}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v9, v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[B)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/avos/avoscloud/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/MultipartBuilder;

    move-result-object v0

    const-string v2, "file"

    iget-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->uuid:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[B)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/avos/avoscloud/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/MultipartBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/MultipartBuilder;->build()Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->contentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/S3Uploader;->totalSize:J

    .line 115
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 117
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->contentType()Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/S3Uploader;->RFC822FormatStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v3, "Authorization"

    const-string v4, "POST"

    invoke-direct {p0, v4, v0, v2}, Lcom/avos/avoscloud/S3Uploader;->authorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 120
    const-string v3, "Date"

    invoke-virtual {v1, v3, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 121
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 124
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->call:Lcom/avos/avoscloud/okhttp/Call;

    .line 126
    invoke-virtual {p0}, Lcom/avos/avoscloud/S3Uploader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->call:Lcom/avos/avoscloud/okhttp/Call;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    .line 130
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 132
    const/4 v0, -0x1

    const-string v1, "upload file failure"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    iget-object v1, p0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/S3Uploader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v6

    .line 140
    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 138
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public interruptImmediately()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/avos/avoscloud/HttpClientUploader;->interruptImmediately()V

    .line 236
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->call:Lcom/avos/avoscloud/okhttp/Call;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader;->call:Lcom/avos/avoscloud/okhttp/Call;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->cancel()V

    .line 239
    :cond_0
    return-void
.end method
