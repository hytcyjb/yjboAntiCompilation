.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;
.super Landroid/os/Handler;
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
    .line 815
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 819
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 865
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 821
    :sswitch_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doSNSCarConfigGet()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    goto :goto_0

    .line 825
    :sswitch_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initCountDownAlarm()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    goto :goto_0

    .line 829
    :sswitch_3
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPositionSend()V

    goto :goto_0

    .line 833
    :sswitch_4
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPositionSendForCheat()V

    goto :goto_0

    .line 844
    :sswitch_5
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iget-object v0, v0, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iget-object v1, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showCarShareTicketDialog(Lcom/didi/car/model/CarShareCouponInfo;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarShareCouponInfo;)V

    goto :goto_0

    .line 849
    :sswitch_6
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayResultGet()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    goto :goto_0

    .line 856
    :sswitch_7
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initTimeConsultAlarm()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    goto :goto_0

    .line 859
    :sswitch_8
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/common/net/ResponseListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/car/net/CarRequest;->queryOrderStatus(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 862
    :sswitch_9
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onQueryOrderDetail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    goto :goto_0

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_6
        0xf -> :sswitch_0
        0x11 -> :sswitch_7
        0x15 -> :sswitch_5
        0x1e -> :sswitch_8
        0x1f -> :sswitch_9
        0x3e9 -> :sswitch_4
    .end sparse-switch
.end method
