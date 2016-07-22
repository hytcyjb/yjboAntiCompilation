.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimelyRemindReceived(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 9
    .parameter "taxiServiceMsg"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 382
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v3, v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v3, v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->isFriendBarShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/dialog/ImageDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/dialog/ImageDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/dialog/ImageDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1602(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaxiServiceMessage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " biz:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " priceOpen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " waitOpen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 393
    if-nez p1, :cond_3

    .line 394
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [order_id_t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [msgType=null] [msgValue=null]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1702(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    const-string v3, "ptxwfrremind01_err"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_3
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v4

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgType:I
    invoke-static {v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1802(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I

    .line 399
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1902(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [order_id_t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [msgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgType:I
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [msgValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1702(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_4

    .line 402
    const-string v3, "ptxwfrremind01_err"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    :cond_4
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 406
    :cond_5
    const-string v3, "ptxwfrremind01_dc"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_6
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 411
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/didi/frame/MainActivity;

    invoke-static {v3, v4, v5}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 415
    :cond_7
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 421
    :cond_8
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 424
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v3

    if-nez v3, :cond_9

    .line 425
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/database/CityListHelper;->getTaxiCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 426
    .local v0, priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    invoke-static {v3, v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto/16 :goto_0

    .line 427
    .end local v0           #priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v3

    if-ne v3, v6, :cond_b

    .line 428
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, remark:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const v3, 0x7f0b0580

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    :cond_a
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/database/CityListHelper;->getTaxiCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 432
    .local v2, timesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    invoke-static {v3, v2, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto/16 :goto_0

    .line 435
    .end local v1           #remark:Ljava/lang/String;
    .end local v2           #timesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 436
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 437
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x14

    if-le v3, v4, :cond_c

    .line 438
    const-string v3, "ptxwfrremind01_err"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_c
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    .line 442
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    invoke-static {v3, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto/16 :goto_0

    .line 444
    :cond_d
    const-string v3, "ptxwfrremind01_err"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_e
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    invoke-static {v3, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto/16 :goto_0

    .line 449
    :cond_f
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v3

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    invoke-static {v3, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto/16 :goto_0
.end method
