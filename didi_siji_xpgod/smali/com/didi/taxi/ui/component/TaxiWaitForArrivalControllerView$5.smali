.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaulateStarClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 421
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showEditLayoutView()V

    .line 422
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEvaulateStarClicked()V

    goto :goto_0
.end method
