.class Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsHandlePicTransparentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRegisterResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Lcom/didi/beatles/model/role/BtsRegisterResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->onError(Lcom/didi/beatles/model/role/BtsRegisterResult;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/role/BtsRegisterResult;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 94
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    #calls: Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->access$100(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 97
    const v0, 0x7f0b0070

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 98
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Lcom/didi/beatles/model/role/BtsRegisterResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->onFail(Lcom/didi/beatles/model/role/BtsRegisterResult;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/role/BtsRegisterResult;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 105
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    #calls: Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->access$200(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 108
    const v0, 0x7f0b0070

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 109
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 110
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Lcom/didi/beatles/model/role/BtsRegisterResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->onSuccess(Lcom/didi/beatles/model/role/BtsRegisterResult;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/role/BtsRegisterResult;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 80
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    #calls: Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z
    invoke-static {v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->access$000(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, data:Landroid/content/Intent;
    const-string v1, "bundle_photo_url"

    iget-object v2, p1, Lcom/didi/beatles/model/role/BtsRegisterResult;->head_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;->this$0:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0
.end method
