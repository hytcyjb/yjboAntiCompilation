.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->creatBtsOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

.field final synthetic val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->onError(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 1
    .parameter "btsOrderPassenger"

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 390
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 391
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->orderCreateFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 392
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->onFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 1
    .parameter "btsOrderPassenger"

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 382
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 383
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 384
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->onSuccess(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 5
    .parameter "btsOrderPassanger"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 366
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBtsOrderPassenger:Lcom/didi/beatles/model/order/BtsOrderPassenger;
    invoke-static {v0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 367
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 368
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mOrderId:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    iget v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->left_minutes:I

    add-int/lit8 v1, v1, -0x5

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mTimeOut:J

    .line 371
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    .line 372
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->val$model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    invoke-static {v0, v1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->insertOrUpdateItem(Landroid/content/Context;Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)V

    .line 373
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->finish()V

    .line 377
    :cond_0
    return-void
.end method
