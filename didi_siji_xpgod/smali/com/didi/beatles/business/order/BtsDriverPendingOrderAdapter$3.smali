.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;
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

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverPending;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 203
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$3;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
