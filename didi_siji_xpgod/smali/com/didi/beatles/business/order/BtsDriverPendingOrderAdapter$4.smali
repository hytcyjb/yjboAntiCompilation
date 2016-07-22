.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;
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
    .line 272
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-boolean v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->isImCanUse:Z

    if-eqz v0, :cond_2

    .line 279
    const-string v0, "pbdim_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[passengerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 281
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$4;->val$holder:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->im_disable_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
