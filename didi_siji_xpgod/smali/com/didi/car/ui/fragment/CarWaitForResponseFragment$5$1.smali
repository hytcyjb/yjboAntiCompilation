.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;

.field final synthetic val$carOrder:Lcom/didi/car/model/CarOrder;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;->this$1:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 224
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 218
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;->this$1:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;

    iget-object v1, v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 221
    :cond_0
    return-void
.end method
