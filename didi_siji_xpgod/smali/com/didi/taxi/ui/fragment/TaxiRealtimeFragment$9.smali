.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/realtime/RealtimeCallViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightBtnClick()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "rc_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTaxiBookingFragment()V

    .line 442
    return-void
.end method

.method public onTextEditClick()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "tc_call_input_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->jumpToSearch()V

    .line 436
    return-void
.end method

.method public onTopicClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 466
    return-void
.end method

.method public onUp()V
    .locals 6

    .prologue
    .line 446
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    .line 447
    .local v1, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    sget-object v2, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 448
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->getBreifDestination()Lcom/didi/frame/business/BreifDestination;

    move-result-object v0

    .line 449
    .local v0, destination:Lcom/didi/frame/business/BreifDestination;
    sget-object v2, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;->$SwitchMap$com$didi$frame$business$BreifDestination:[I

    invoke-virtual {v0}, Lcom/didi/frame/business/BreifDestination;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->getVoicePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->getCallTime()J

    move-result-wide v4

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onVoice(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V
    invoke-static {v2, v1, v3, v4, v5}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onHome(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v2, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onCompany(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v2, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$800(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
