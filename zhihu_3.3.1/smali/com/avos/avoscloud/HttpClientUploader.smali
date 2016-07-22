.class public abstract Lcom/avos/avoscloud/HttpClientUploader;
.super Lcom/avos/avoscloud/AVUploader;
.source "HttpClientUploader.java"


# static fields
.field static client:Lcom/avos/avoscloud/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/HttpClientUploader;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 14
    return-void
.end method

.method protected static declared-synchronized getOKHttpClient()Lcom/avos/avoscloud/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/avos/avoscloud/HttpClientUploader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/HttpClientUploader;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public bridge synthetic cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVUploader;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic execute()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->execute()V

    return-void
.end method

.method public bridge synthetic interruptImmediately()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->interruptImmediately()V

    return-void
.end method

.method public bridge synthetic isCancelled()Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/avos/avoscloud/AVUploader;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic publishProgress(I)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVUploader;->publishProgress(I)V

    return-void
.end method
