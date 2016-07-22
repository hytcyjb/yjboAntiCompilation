.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;
.super Ljava/lang/Object;
.source "BtsPassengerPendingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

.field final synthetic val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 437
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-boolean v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    if-eqz v0, :cond_2

    .line 441
    const-string v0, "pbpphone_ck"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[driverid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->driver_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][im_session_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->phone_num:Ljava/lang/String;

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->actionCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$300(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Ljava/lang/String;)V

    .line 443
    const-string v0, "12"

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5, v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$8;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
