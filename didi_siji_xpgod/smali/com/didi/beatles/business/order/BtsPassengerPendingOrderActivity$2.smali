.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;
.super Ljava/lang/Object;
.source "BtsPassengerPendingOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 155
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->access$000(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->access$200(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;I)V

    .line 162
    :cond_0
    return-void
.end method
