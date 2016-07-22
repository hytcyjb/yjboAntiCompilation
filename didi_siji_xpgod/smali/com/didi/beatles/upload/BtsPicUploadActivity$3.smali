.class Lcom/didi/beatles/upload/BtsPicUploadActivity$3;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsPicUpload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Lcom/didi/beatles/model/BtsPicUpload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->onError(Lcom/didi/beatles/model/BtsPicUpload;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/BtsPicUpload;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 225
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #calls: Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$300(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 228
    const v0, 0x7f0b0070

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 229
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->setResult(I)V

    .line 230
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #getter for: Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$000(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 231
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Lcom/didi/beatles/model/BtsPicUpload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->onFail(Lcom/didi/beatles/model/BtsPicUpload;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/BtsPicUpload;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 237
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #calls: Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$400(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 240
    const v0, 0x7f0b0070

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 241
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->setResult(I)V

    .line 242
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #getter for: Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$000(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 243
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Lcom/didi/beatles/model/BtsPicUpload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->onSuccess(Lcom/didi/beatles/model/BtsPicUpload;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/BtsPicUpload;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 212
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #calls: Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z
    invoke-static {v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$200(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, data:Landroid/content/Intent;
    const-string v1, "pic_msg_key"

    iget-object v2, p1, Lcom/didi/beatles/model/BtsPicUpload;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->setResult(ILandroid/content/Intent;)V

    .line 218
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #getter for: Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;
    invoke-static {v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$000(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 219
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0
.end method
