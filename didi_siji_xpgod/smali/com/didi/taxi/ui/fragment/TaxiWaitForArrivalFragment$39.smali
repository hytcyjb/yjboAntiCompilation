.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public firstClick()V
    .locals 2

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3279
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsShowShare(Z)V

    .line 3280
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showShareView(Lcom/didi/taxi/model/TaxiPayShare;)V

    .line 3281
    return-void
.end method

.method public secondClick()V
    .locals 1

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3286
    return-void
.end method

.method public thirdClick()V
    .locals 2

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3291
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsShowShare(Z)V

    .line 3292
    return-void
.end method
