.class Lcom/avos/avoscloud/QiniuUploader$2;
.super Lcom/avos/avoscloud/DeleteCallback;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V
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
    .line 322
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$2;->this$0:Lcom/avos/avoscloud/QiniuUploader;

    invoke-direct {p0}, Lcom/avos/avoscloud/DeleteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method
