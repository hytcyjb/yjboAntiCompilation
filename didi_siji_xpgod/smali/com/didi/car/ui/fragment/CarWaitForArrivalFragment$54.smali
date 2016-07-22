.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doWxAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarPayParams;",
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
    .line 3672
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarPayParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 3676
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 3677
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 3678
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4702(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    .line 3680
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarPayHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarPayHelper;->checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z

    .line 3689
    :goto_0
    return-void

    .line 3681
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    const/16 v1, 0x2970

    if-ne v0, v1, :cond_1

    .line 3682
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    const v2, 0x7f0b059e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWxAgentOneButton(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3683
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    const/16 v1, 0x296b

    if-ne v0, v1, :cond_2

    .line 3684
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWxAgentFaild(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$5000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 3686
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const v1, 0x7f0b05a3

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWxAgentFaild(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$5000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3672
    check-cast p1, Lcom/didi/car/model/CarPayParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;->onFinish(Lcom/didi/car/model/CarPayParams;)V

    return-void
.end method
