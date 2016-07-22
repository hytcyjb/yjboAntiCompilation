.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimelyRemindReceived(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 6
    .parameter "carServiceMessage"

    .prologue
    const/4 v5, 0x1

    .line 969
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->order:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3502(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    if-nez p1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [order_id_t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgType=null] [msgValue=null]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1402(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->msgType:I
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3602(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;I)I

    .line 977
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3702(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 978
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [order_id_t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->oid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->msgType:I
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3600(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [msgValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->msgValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3700(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1402(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    const-string v1, "pgxwfr02_dc"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1400(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 992
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-nez v1, :cond_3

    .line 993
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCarCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 994
    .local v0, priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3800(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0

    .line 998
    .end local v0           #priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-ne v1, v5, :cond_4

    .line 1001
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    const/4 v2, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, v2, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$3800(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0

    .line 1005
    :cond_4
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1007
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

    .line 1012
    :cond_5
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$20;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v1, p1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V

    goto/16 :goto_0
.end method
