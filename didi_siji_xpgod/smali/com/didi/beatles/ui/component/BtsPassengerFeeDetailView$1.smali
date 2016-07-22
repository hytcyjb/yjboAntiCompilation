.class Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;
.super Ljava/lang/Object;
.source "BtsPassengerFeeDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->setFeeData(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderPassenger;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;->this$0:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    iput-object p2, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 117
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, selectUrl:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const v1, 0x7f0b0030

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 119
    .end local v0           #selectUrl:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 124
    .restart local v0       #selectUrl:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;->this$0:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    #getter for: Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->access$000(Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v1, v0, v2, v3}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startConponSelectForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
