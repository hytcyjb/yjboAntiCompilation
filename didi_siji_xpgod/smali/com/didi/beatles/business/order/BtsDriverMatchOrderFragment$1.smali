.class Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;
.super Ljava/lang/Object;
.source "BtsDriverMatchOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 117
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$000(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$100(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;I)V

    .line 125
    :cond_0
    return-void
.end method
