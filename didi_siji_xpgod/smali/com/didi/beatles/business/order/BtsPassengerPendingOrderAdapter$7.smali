.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;
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
    .line 414
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-boolean v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    if-eqz v0, :cond_2

    .line 421
    const-string v0, "pbpxwhorder07_ck"

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    const-string v0, "pbpim_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[driverid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->driver_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 424
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$7;->val$holder:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
