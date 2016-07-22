.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;
.super Ljava/lang/Object;
.source "BtsPassengerPendingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->commentOrderEventHandler(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 285
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "pbpxwhorder04_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$5;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    const/16 v2, 0x65

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method
