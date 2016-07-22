.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;
.super Ljava/lang/Object;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsOrderCheck;->is_show_detail:Z

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method
