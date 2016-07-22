.class Lcom/avos/avoscloud/AVFileDownloader$2;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "AVFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFileDownloader;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$errors:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/File;[Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    iput-object p3, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p4}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v0, v1

    .line 68
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    #setter for: Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B
    invoke-static {v0, p3}, Lcom/avos/avoscloud/AVFileDownloader;->access$102(Lcom/avos/avoscloud/AVFileDownloader;[B)[B

    .line 58
    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v1

    #setter for: Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->access$102(Lcom/avos/avoscloud/AVFileDownloader;[B)[B

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile([BLjava/io/File;)Z

    goto :goto_0
.end method
