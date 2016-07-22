.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPayClosed(Lcom/didi/taxi/model/TaxiOrder;)V
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
    .line 665
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 674
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayOrCloseIcon()V

    .line 675
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setCanTouch(Z)V

    .line 676
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->updateEvaluateHintText()V

    .line 677
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$800(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->disableMainTips()V

    .line 679
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    const v1, 0x7f090298

    invoke-static {v0, v1}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 681
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 682
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$800(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 683
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getShare()Lcom/didi/taxi/model/TaxiPayShare;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;->val$order:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips(Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$900(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V

    goto :goto_0
.end method
