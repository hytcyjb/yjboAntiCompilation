.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->onQueryOrderDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarHistoryOrder;",
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
    .line 860
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 5
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    .line 862
    invoke-virtual {p1}, Lcom/didi/car/model/CarHistoryOrder;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget v1, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    .line 867
    .local v1, status:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3100(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpredirect"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v2, v4}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$200(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)V

    .line 872
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->clearYuying()V
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3200(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    .line 875
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->isPlayed:Z
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 876
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 877
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 881
    :goto_1
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->isPlayed:Z
    invoke-static {v2, v4}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3302(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Z)Z

    .line 883
    :cond_2
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/business/CarOrderLooper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 884
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-object v2, p1, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v2, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 885
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iput v1, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 886
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 887
    const/4 v2, 0x0

    sput v2, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    .line 888
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRequest4Trace(Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->redictArrivelFragment()V
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3400(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    goto :goto_0

    .line 879
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    :cond_3
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 860
    check-cast p1, Lcom/didi/car/model/CarHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$19;->onFinish(Lcom/didi/car/model/CarHistoryOrder;)V

    return-void
.end method
