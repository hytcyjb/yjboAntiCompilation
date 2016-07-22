.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->doChangeTip()V
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
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1059
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1062
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 1050
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->order:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 1051
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$200(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)V

    .line 1052
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->isShowSubmitBtn:Z
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3902(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)Z

    .line 1053
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 1056
    :cond_0
    return-void
.end method
