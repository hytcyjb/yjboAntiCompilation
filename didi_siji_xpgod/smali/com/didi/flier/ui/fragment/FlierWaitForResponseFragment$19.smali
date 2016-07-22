.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onQueryOrderDetail(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 5
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    .line 863
    invoke-virtual {p1}, Lcom/didi/car/model/CarHistoryOrder;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget v1, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    .line 868
    .local v1, status:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpredirect"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v2, v4}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V

    .line 873
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clearYuying()V
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    .line 876
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 877
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 882
    :goto_1
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z
    invoke-static {v2, v4}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3302(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z

    .line 884
    :cond_2
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/business/FlierOrderLooper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 885
    .local v0, car:Lcom/didi/flier/model/FlierOrder;
    iget-object v2, p1, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v2, v0, Lcom/didi/flier/model/FlierOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 886
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iput v1, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 887
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 888
    const/4 v2, 0x0

    sput v2, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    .line 889
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/alarm/CommonAlarmManager;->setRequest4Trace(Ljava/lang/String;)V

    .line 890
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictArrivelFragment()V
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    goto :goto_0

    .line 880
    .end local v0           #car:Lcom/didi/flier/model/FlierOrder;
    :cond_3
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05001c

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, Lcom/didi/car/model/CarHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;->onFinish(Lcom/didi/car/model/CarHistoryOrder;)V

    return-void
.end method
