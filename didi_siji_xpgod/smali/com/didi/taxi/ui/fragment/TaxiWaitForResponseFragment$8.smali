.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doChangeTip(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

.field final synthetic val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iput-object p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 293
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    .line 285
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V

    .line 286
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isShowSubmitBtn:Z
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z

    .line 287
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 289
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 290
    :cond_0
    return-void
.end method
