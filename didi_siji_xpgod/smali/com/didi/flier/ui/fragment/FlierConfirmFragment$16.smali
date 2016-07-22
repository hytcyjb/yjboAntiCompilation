.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimatePriceCoupon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarExModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

.field final synthetic val$popWin:Z


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    iput-boolean p2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->val$popWin:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 1089
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1091
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 1092
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1039
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->onError(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1081
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 1082
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1039
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->onFail(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarExModel;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 1042
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 1043
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v2

    instance-of v2, v2, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v2, :cond_1

    .line 1045
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 1047
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-boolean v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->val$popWin:Z

    if-eqz v2, :cond_3

    .line 1048
    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    invoke-static {v2}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1055
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v2, :cond_1

    .line 1056
    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v3, p1, Lcom/didi/car/model/CarExModel;->dynamicTag:I

    iput v3, v2, Lcom/didi/car/model/CarEstimatePrice;->dynamicTag:I

    .line 1057
    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v3, p1, Lcom/didi/car/model/CarExModel;->confirmShow:I

    iput v3, v2, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    .line 1058
    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, p1, Lcom/didi/car/model/CarExModel;->confirmTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/car/model/CarEstimatePrice;->confirmTitle:Ljava/lang/String;

    .line 1059
    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, p1, Lcom/didi/car/model/CarExModel;->confirmDesc:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/car/model/CarEstimatePrice;->confirmDesc:Ljava/lang/String;

    .line 1060
    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, p1, Lcom/didi/car/model/CarExModel;->confirmPriceTip:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/car/model/CarEstimatePrice;->confirmPriceTip:Ljava/lang/String;

    .line 1063
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    :cond_1
    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->specailMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1064
    new-instance v1, Lcom/didi/car/model/CarServiceMessage;

    invoke-direct {v1}, Lcom/didi/car/model/CarServiceMessage;-><init>()V

    .line 1065
    .local v1, message:Lcom/didi/car/model/CarServiceMessage;
    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->specailMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    .line 1066
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v2, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1900(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarServiceMessage;)V

    .line 1072
    .end local v1           #message:Lcom/didi/car/model/CarServiceMessage;
    :cond_2
    :goto_1
    return-void

    .line 1050
    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v3, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v2, v3}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v2

    if-lez v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v4, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v2, v3, v4}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0

    .line 1068
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    :cond_4
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    const/4 v3, 0x1

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V
    invoke-static {v2, v3}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1039
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;->onSuccess(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method
