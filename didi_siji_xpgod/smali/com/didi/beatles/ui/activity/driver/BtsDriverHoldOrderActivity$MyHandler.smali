.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;
.super Landroid/os/Handler;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x1e

    .line 2521
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2522
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2540
    :goto_0
    return-void

    .line 2524
    :pswitch_0
    sget v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    .line 2525
    sget v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    if-eq v0, v4, :cond_0

    sget v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 2528
    :cond_1
    sget v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    if-ge v0, v4, :cond_3

    .line 2529
    sget v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    if-gez v0, :cond_2

    .line 2530
    const/4 v0, 0x0

    sput v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    .line 2532
    :cond_2
    invoke-static {}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmManager;->stopDriverAlarm()V

    .line 2533
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    const-string v1, "1"

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 2534
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v0

    const-string v1, "1"

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 2536
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshHoldOrderStateBtn()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$4500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_WHAT_COUNT_DOWN_FOR_GOING="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
