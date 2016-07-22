.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doEvaluateSubmit(Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2785
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 2786
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2787
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onEvaluateSubmitSucceed()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2788
    new-instance v0, Lcom/didi/common/queue/Task;

    invoke-direct {v0}, Lcom/didi/common/queue/Task;-><init>()V

    .line 2789
    .local v0, task:Lcom/didi/common/queue/Task;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/queue/Task;->setOid(Ljava/lang/String;)V

    .line 2790
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLevel:I
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/queue/Task;->setLevle(I)V

    .line 2791
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/queue/Task;->setContent(Ljava/lang/String;)V

    .line 2792
    invoke-static {v0}, Lcom/didi/common/queue/TaskQueue;->addQueue(Lcom/didi/common/queue/Task;)V

    .line 2793
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2778
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onEvaluateSubmitSucceed()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2781
    :cond_0
    return-void
.end method
