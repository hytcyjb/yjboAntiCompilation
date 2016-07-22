.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimelyRemindReceived(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 6
    .parameter "carServiceMessage"

    .prologue
    const/4 v5, 0x1

    .line 970
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3502(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    if-nez p1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [order_id_t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgType=null] [msgValue=null]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1402(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgType:I
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3602(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;I)I

    .line 978
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3702(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [order_id_t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgType:I
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3700(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1402(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    const-string v1, "flier_pgxwfr02_dc"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 993
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-nez v1, :cond_3

    .line 994
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCarCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 995
    .local v0, priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, v0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0

    .line 999
    .end local v0           #priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-ne v1, v5, :cond_4

    .line 1002
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    const/4 v2, 0x0

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, v2, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$3800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0

    .line 1006
    :cond_4
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1007
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1008
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    if-le v1, v2, :cond_5

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    :cond_5
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0
.end method
