.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;
.super Ljava/lang/Object;
.source "BtsDriverPendingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

.field final synthetic val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 293
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-boolean v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isPhoneCanUse:Z

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "pbpphone_ck"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[passengerid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][im_session_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->phone_num:Ljava/lang/String;

    #calls: Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->actionCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->access$100(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Ljava/lang/String;)V

    .line 299
    const-string v0, "12"

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5, v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$5;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->call_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
