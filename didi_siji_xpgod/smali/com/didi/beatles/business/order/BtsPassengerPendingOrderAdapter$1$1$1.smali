.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerPendingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 154
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v1, v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v1, v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    const-string v0, "pbp1wfr02_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    const v0, 0x7f0b0087

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 160
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    const-string v1, "5"

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->status:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v1, v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v1, v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$button:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;->this$2:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->refreshButtonState(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$200(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V

    .line 166
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
