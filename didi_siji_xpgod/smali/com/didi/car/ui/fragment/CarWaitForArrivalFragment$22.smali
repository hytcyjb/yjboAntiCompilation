.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onFooterQuestionClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarQuestionNaire;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarQuestionNaire;)V
    .locals 1
    .parameter "carQuestionNaire"

    .prologue
    .line 1722
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 1723
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1724
    iget-object v0, p1, Lcom/didi/car/model/CarQuestionNaire;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1725
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1707
    check-cast p1, Lcom/didi/car/model/CarQuestionNaire;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->onError(Lcom/didi/car/model/CarQuestionNaire;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarQuestionNaire;)V
    .locals 1
    .parameter "carQuestionNaire"

    .prologue
    .line 1729
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 1730
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1731
    const v0, 0x7f0b0417

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1707
    check-cast p1, Lcom/didi/car/model/CarQuestionNaire;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->onFail(Lcom/didi/car/model/CarQuestionNaire;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarQuestionNaire;)V
    .locals 4
    .parameter "carQuestionNaire"

    .prologue
    .line 1710
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 1711
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1712
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1713
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1714
    iget-object v2, p1, Lcom/didi/car/model/CarQuestionNaire;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1715
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1716
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1717
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1718
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1707
    check-cast p1, Lcom/didi/car/model/CarQuestionNaire;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;->onSuccess(Lcom/didi/car/model/CarQuestionNaire;)V

    return-void
.end method
