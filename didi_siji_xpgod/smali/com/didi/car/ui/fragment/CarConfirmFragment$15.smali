.class Lcom/didi/car/ui/fragment/CarConfirmFragment$15;
.super Lcom/didi/common/net/ResponseListener;
.source "CarConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimateFare(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarEstimatePrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

.field final synthetic val$needRefreshDriver:Z

.field final synthetic val$sendable:Lcom/didi/frame/Sendable;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/frame/Sendable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$sendable:Lcom/didi/frame/Sendable;

    iput-boolean p3, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$needRefreshDriver:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fare="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/car/business/CarOrderLooper;

    if-nez v1, :cond_0

    .line 1003
    invoke-static {v3}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1004
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$sendable:Lcom/didi/frame/Sendable;

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 1007
    .local v0, car:Lcom/didi/car/model/CarOrder;
    if-eqz v0, :cond_1

    .line 1008
    iput-object v3, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    const/4 v2, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    .line 1013
    :cond_2
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 1014
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 893
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fare="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/car/business/CarOrderLooper;

    if-nez v1, :cond_0

    .line 985
    invoke-static {v3}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 986
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$sendable:Lcom/didi/frame/Sendable;

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 989
    .local v0, car:Lcom/didi/car/model/CarOrder;
    if-eqz v0, :cond_1

    .line 990
    iput-object v3, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    const/4 v2, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    .line 995
    :cond_2
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 996
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 893
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 14
    .parameter "t"

    .prologue
    .line 896
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 897
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fare="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 898
    if-eqz p1, :cond_7

    .line 899
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$sendable:Lcom/didi/frame/Sendable;

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 901
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v11, :cond_8

    .line 902
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 903
    .local v9, oldSize:I
    iget-object v11, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 904
    iget-object v11, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 905
    .local v8, newSize:I
    new-array v2, v8, [I

    .line 907
    .local v2, carListArray:[I
    const/4 v6, 0x0

    .local v6, index:I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 908
    const/4 v10, 0x0

    .local v10, sInt:I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 909
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/didi/car/model/CarModel;

    iget v12, v11, Lcom/didi/car/model/CarModel;->cLevel:I

    iget-object v11, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/didi/car/model/CarModel;

    iget v11, v11, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v12, v11, :cond_1

    .line 910
    const/4 v11, 0x1

    aput v11, v2, v6

    .line 907
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 908
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 915
    .end local v10           #sInt:I
    :cond_2
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 945
    .end local v2           #carListArray:[I
    .end local v6           #index:I
    .end local v8           #newSize:I
    .end local v9           #oldSize:I
    :cond_3
    :goto_2
    iput-object p1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 947
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v11

    sget-object v12, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v11, v12, :cond_4

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v11

    instance-of v11, v11, Lcom/didi/car/business/CarOrderLooper;

    if-nez v11, :cond_4

    .line 949
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-static {v11}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 950
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 951
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 955
    :cond_4
    iget-boolean v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->val$needRefreshDriver:Z

    if-eqz v11, :cond_5

    .line 956
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 959
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v11

    sget-object v12, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v11, v12, :cond_6

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v11

    instance-of v11, v11, Lcom/didi/car/business/CarOrderLooper;

    if-nez v11, :cond_6

    .line 961
    iget-object v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v12

    iget-object v12, v12, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v13, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v11, v12, v13}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$000(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 962
    iget-object v11, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v11, v11, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v11}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 968
    :cond_6
    iget-object v11, p1, Lcom/didi/car/model/CarEstimatePrice;->specailMessage:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 969
    new-instance v7, Lcom/didi/car/model/CarServiceMessage;

    invoke-direct {v7}, Lcom/didi/car/model/CarServiceMessage;-><init>()V

    .line 970
    .local v7, message:Lcom/didi/car/model/CarServiceMessage;
    iget-object v11, p1, Lcom/didi/car/model/CarEstimatePrice;->specailMessage:Ljava/lang/String;

    iput-object v11, v7, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    .line 971
    iget-object v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v11, v7}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1900(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarServiceMessage;)V

    .line 978
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    .end local v7           #message:Lcom/didi/car/model/CarServiceMessage;
    :cond_7
    :goto_3
    return-void

    .line 918
    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    :cond_8
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 919
    .local v1, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v1, :cond_3

    .line 920
    iget-object v11, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 923
    iget-object v5, v1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 924
    .local v5, carModelOldList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v3, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 925
    .local v3, carModelIndexArray:[I
    invoke-virtual {v1, v3}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v11

    if-lez v11, :cond_3

    .line 926
    iget-object v4, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 927
    .local v4, carModelNewList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v4, :cond_3

    .line 928
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 929
    .restart local v8       #newSize:I
    new-array v2, v8, [I

    .line 930
    .restart local v2       #carListArray:[I
    const/4 v6, 0x0

    .restart local v6       #index:I
    :goto_4
    if-ge v6, v8, :cond_b

    .line 931
    const/4 v10, 0x0

    .restart local v10       #sInt:I
    :goto_5
    array-length v11, v3

    if-ge v10, v11, :cond_a

    .line 932
    const/4 v11, 0x1

    aget v12, v3, v10

    if-ne v11, v12, :cond_9

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/didi/car/model/CarModel;

    iget v12, v11, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/didi/car/model/CarModel;

    iget v11, v11, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v12, v11, :cond_9

    .line 934
    const/4 v11, 0x1

    aput v11, v2, v6

    .line 931
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 930
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 938
    .end local v10           #sInt:I
    :cond_b
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    goto/16 :goto_2

    .line 973
    .end local v1           #carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    .end local v2           #carListArray:[I
    .end local v3           #carModelIndexArray:[I
    .end local v4           #carModelNewList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v5           #carModelOldList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v6           #index:I
    .end local v8           #newSize:I
    :cond_c
    iget-object v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v11}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v11}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 974
    iget-object v11, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    const/4 v12, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V
    invoke-static {v11, v12}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    goto :goto_3
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 893
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method
