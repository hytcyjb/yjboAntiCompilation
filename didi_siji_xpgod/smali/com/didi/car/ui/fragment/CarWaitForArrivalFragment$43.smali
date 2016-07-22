.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public firstClick()V
    .locals 2

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3139
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsShowShare(Z)V

    .line 3140
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showShareView(Lcom/didi/car/model/CarPayShare;)V

    .line 3141
    return-void
.end method

.method public secondClick()V
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3146
    return-void
.end method

.method public thirdClick()V
    .locals 2

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3151
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsShowShare(Z)V

    .line 3152
    return-void
.end method
