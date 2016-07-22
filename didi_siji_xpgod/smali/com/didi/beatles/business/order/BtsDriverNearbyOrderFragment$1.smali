.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->bindUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$100(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    const/4 v1, 0x3

    #calls: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 126
    return-void
.end method
