.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsPassengerPendingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

.field final synthetic val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;Lcom/didi/common/helper/DialogHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 142
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v1, v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 146
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->this$1:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1$1;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getCancelOrderForPassenger(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 175
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 176
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 181
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;->val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 182
    return-void
.end method
