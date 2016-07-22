.class Lcom/avos/avoscloud/QiniuUploader$1;
.super Ljava/lang/Object;
.source "QiniuUploader.java"

# interfaces
.implements Lcom/avos/avoscloud/QiniuUploader$FileUploadProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->uploadWithBlocks()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/QiniuUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/QiniuUploader;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$1;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$1;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 124
    return-void
.end method
