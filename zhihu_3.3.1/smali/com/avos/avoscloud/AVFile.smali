.class public Lcom/avos/avoscloud/AVFile;
.super Ljava/lang/Object;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVFile$2;
    }
.end annotation


# static fields
.field private static final ELDERMETADATAKEYFORIOSFIX:Ljava/lang/String; = "metadata"

.field static final FILE_NAME_KEY:Ljava/lang/String; = "_name"

.field private static final FILE_SUM_KEY:Ljava/lang/String; = "_checksum"

.field private static final THUMBNAIL_FMT:Ljava/lang/String; = "?imageView/%d/w/%d/h/%d/q/%d/format/%s"

.field private static defaultMimeType:Ljava/lang/String;


# instance fields
.field private acl:Lcom/avos/avoscloud/AVACL;

.field private bucket:Ljava/lang/String;

.field private dirty:Z

.field private transient downloader:Lcom/avos/avoscloud/AVFileDownloader;

.field private fileObject:Lcom/avos/avoscloud/AVObject;

.field private localPath:Ljava/lang/String;

.field private localTmpFilePath:Ljava/lang/String;

.field private final metaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private transient uploader:Lcom/avos/avoscloud/AVUploader;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "application/octet-stream"

    sput-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    .line 77
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 150
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 108
    if-eqz p3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "__source"

    const-string v2, "external"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 127
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVFileDownloader;->getAVFileCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile([BLjava/io/File;)Z

    .line 132
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_checksum"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "size"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "owner"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;[B)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method private cancelDownloadIfNeed()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->cancel(Z)Z

    .line 714
    :cond_0
    return-void
.end method

.method private cancelUploadIfNeed()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVUploader;->cancel(Z)Z

    .line 718
    :cond_0
    return-void
.end method

.method static className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    const-string v0, "File"

    return-object v0
.end method

.method private static createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 4
    .parameter

    .prologue
    .line 285
    new-instance v1, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "metadata"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 290
    :cond_0
    const-string v0, "metaData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "metaData"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    .line 294
    iput-object p0, v1, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 295
    const-string v0, "bucket"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->setBucket(Ljava/lang/String;)V

    .line 296
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    const-string v3, "name"

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    return-object v1
.end method

.method private getCacheData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLocalFileData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 483
    sget-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    .line 484
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    .line 486
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 487
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    if-nez v0, :cond_1

    .line 490
    sget-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    .line 492
    :cond_1
    return-object v0
.end method

.method private getTmpFileData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 853
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFileWithAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V

    .line 185
    return-void
.end method

.method public static withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 2
    .parameter

    .prologue
    .line 276
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 278
    return-object v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AVObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 358
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null file object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 362
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/AVFile;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 363
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVFile;->setLocalPath(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AVFile;->setName(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 367
    iput-object p0, v1, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 368
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 369
    if-eqz v0, :cond_3

    .line 370
    iget-object v2, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "_checksum"

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 376
    iget-object v2, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "owner"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-object v1

    .line 373
    :cond_3
    iget-object v0, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "size"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method public static withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 3
    .parameter

    .prologue
    .line 245
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_File"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 249
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find file object by id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_File"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/avos/avoscloud/AVFile$1;

    invoke-direct {v1, p1, p0}, Lcom/avos/avoscloud/AVFile$1;-><init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 217
    return-void
.end method


# virtual methods
.method public addMetaData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 705
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    .line 706
    return-void
.end method

.method public clearMetaData()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 454
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->delete()V

    .line 749
    return-void

    .line 747
    :cond_0
    const/16 v0, 0x99

    const-string v1, "File object is not exists."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually()V

    .line 757
    :cond_0
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 766
    :cond_0
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground()V

    .line 774
    :cond_0
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 788
    :goto_0
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x99

    const-string v2, "File object is not exists."

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getLocalFileData()[B

    move-result-object v0

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getTmpFileData()[B

    move-result-object v0

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 638
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 639
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getCacheData()[B

    move-result-object v0

    .line 640
    if-nez v0, :cond_0

    .line 644
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 645
    new-instance v0, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v0, v1, v1}, Lcom/avos/avoscloud/AVFileDownloader;-><init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 646
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_4

    .line 648
    throw v0

    .line 650
    :cond_4
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getCacheData()[B

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 652
    goto :goto_0
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 697
    return-void
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    if-eqz p1, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getLocalFileData()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 669
    if-eqz p1, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getTmpFileData()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 673
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 674
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getCacheData()[B

    move-result-object v0

    .line 675
    if-eqz v0, :cond_3

    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 682
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 683
    new-instance v0, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v0, p2, p1}, Lcom/avos/avoscloud/AVFileDownloader;-><init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 684
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 685
    :cond_4
    if-eqz p1, :cond_0

    .line 686
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7e

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method getFileObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "_File"

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMetaData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string v0, "owner"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 421
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getThumbnailUrl(ZII)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    const/16 v4, 0x64

    const-string v5, "png"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVFile;->getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 549
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v0

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    if-eq v0, v3, :cond_0

    .line 550
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "We only support this method for qiniu storage."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 553
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid width or height."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_2
    if-lt p4, v2, :cond_3

    const/16 v0, 0x64

    if-le p4, v0, :cond_4

    .line 556
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid quality,valid range is 0-100."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 559
    :cond_5
    const-string p5, "png"

    .line 561
    :cond_6
    if-eqz p1, :cond_7

    move v0, v1

    .line 562
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?imageView/%d/w/%d/h/%d/q/%d/format/%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    aput-object p5, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    return-object v0

    :cond_7
    move v0, v2

    .line 561
    goto :goto_0
.end method

.method public getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    new-instance v0, Lcom/avos/avoscloud/UrlDirectlyUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/UrlDirectlyUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 821
    :goto_0
    return-object v0

    .line 809
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7e

    const-string v2, "Invalid File URL"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 812
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVFile$2;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 818
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->e()V

    .line 821
    const/4 v0, 0x0

    goto :goto_0

    .line 814
    :pswitch_0
    new-instance v0, Lcom/avos/avoscloud/QiniuUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    goto :goto_0

    .line 816
    :pswitch_1
    new-instance v0, Lcom/avos/avoscloud/S3Uploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/S3Uploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 732
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    .line 733
    const-string v0, "_File"

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 734
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 735
    iput-object p3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    return v0
.end method

.method mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    .line 583
    invoke-virtual {p0, v0, v0}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    .line 585
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_0

    throw v0

    .line 587
    :cond_0
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 621
    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 614
    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUploader;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    .line 882
    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    .line 830
    return-void
.end method

.method setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    .line 573
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 569
    return-void
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 885
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 886
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v1

    .line 887
    const-string v2, "url"

    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    return-object v0
.end method
