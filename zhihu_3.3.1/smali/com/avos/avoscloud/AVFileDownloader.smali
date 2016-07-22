.class Lcom/avos/avoscloud/AVFileDownloader;
.super Landroid/os/AsyncTask;
.source "AVFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/AVException;",
        ">;"
    }
.end annotation


# static fields
.field private static avFileCacheDir:Ljava/lang/String;

.field private static final client:Lcom/avos/avoscloud/PaasClient$AVHttpClient;


# instance fields
.field private final dataCallback:Lcom/avos/avoscloud/GetDataCallback;

.field private fileData:[B

.field private final progressCallback:Lcom/avos/avoscloud/ProgressCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVFileDownloader;->client:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVFileDownloader;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/AVFileDownloader;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    return-object p1
.end method

.method static getAVFileCachePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/avos/avoscloud/AVFileDownloader;->avFileCacheDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/avfile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVFileDownloader;->avFileCacheDir:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/avos/avoscloud/AVFileDownloader;->avFileCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVFileDownloader;->avFileCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVFileDownloader;->getAVFileCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMD5ForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    .line 37
    new-array v1, v8, [Lcom/avos/avoscloud/AVException;

    .line 39
    invoke-static {p1}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/avos/avoscloud/AVFileDownloader;->getMD5ForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 43
    invoke-virtual {v4, p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 44
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    const-string v5, "If-None-Match"

    invoke-virtual {v4, v5, v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 47
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVFileDownloader$1;

    invoke-direct {v3, p0}, Lcom/avos/avoscloud/AVFileDownloader$1;-><init>(Lcom/avos/avoscloud/AVFileDownloader;)V

    .line 53
    sget-object v5, Lcom/avos/avoscloud/AVFileDownloader;->client:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v4

    new-instance v6, Lcom/avos/avoscloud/AVFileDownloader$2;

    invoke-direct {v6, p0, v2, v1}, Lcom/avos/avoscloud/AVFileDownloader$2;-><init>(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/File;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v5, v4, v8, v3, v6}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/PaasClient$ProgressListener;Lcom/avos/avoscloud/AsyncHttpResponseHandler;)V

    .line 70
    new-array v2, v8, [Ljava/lang/Integer;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 71
    aget-object v2, v1, v7

    if-eqz v2, :cond_1

    aget-object v0, v1, v7

    :cond_1
    return-object v0
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/avos/avoscloud/AVException;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
