.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;
.super Ljava/lang/Object;
.source "BtsDriverPendingOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 112
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->access$000(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->access$100(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;I)V

    .line 120
    :cond_0
    return-void
.end method
