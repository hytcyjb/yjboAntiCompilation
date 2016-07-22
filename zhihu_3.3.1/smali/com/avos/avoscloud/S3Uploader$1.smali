.class Lcom/avos/avoscloud/S3Uploader$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "S3Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/S3Uploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/S3Uploader;

.field final synthetic val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/S3Uploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avos/avoscloud/S3Uploader$1;->this$0:Lcom/avos/avoscloud/S3Uploader;

    iput-object p2, p0, Lcom/avos/avoscloud/S3Uploader$1;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader$1;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/S3Uploader$1;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/S3Uploader$1;->this$0:Lcom/avos/avoscloud/S3Uploader;

    #calls: Lcom/avos/avoscloud/S3Uploader;->handleGetKeyResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    invoke-static {v2, p1}, Lcom/avos/avoscloud/S3Uploader;->access$000(Lcom/avos/avoscloud/S3Uploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    return-void
.end method
