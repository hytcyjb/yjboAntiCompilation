.class Lcom/avos/avoscloud/UrlDirectlyUploader$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "UrlDirectlyUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/UrlDirectlyUploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

.field final synthetic val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/UrlDirectlyUploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iput-object p2, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 24
    if-nez p2, :cond_0

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iget-object v1, v1, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    const-string v2, "objectId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/UrlDirectlyUploader;

    iget-object v3, v3, Lcom/avos/avoscloud/UrlDirectlyUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v1, v4

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method
