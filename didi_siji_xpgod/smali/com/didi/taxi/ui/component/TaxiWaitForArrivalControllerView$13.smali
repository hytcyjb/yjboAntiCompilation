.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaluateSucceed(Lcom/didi/taxi/model/TaxiOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

.field final synthetic val$order:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 768
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    sget-object v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    if-ne v0, v1, :cond_1

    .line 769
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    const v1, 0x7f090298

    invoke-static {v0, v1}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 772
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayOrCloseIcon()V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    const v1, 0x7f0b0574

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$500(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;I)V

    .line 776
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    const v1, 0x7f0b0565

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$1000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;I)V

    .line 778
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$800(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->disableMainTips()V

    .line 780
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
