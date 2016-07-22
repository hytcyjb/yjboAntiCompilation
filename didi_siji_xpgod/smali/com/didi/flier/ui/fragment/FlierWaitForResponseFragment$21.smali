.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doChangeTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1060
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 1051
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 1052
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V

    .line 1053
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isShowSubmitBtn:Z
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3902(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z

    .line 1054
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 1056
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 1057
    :cond_0
    return-void
.end method
