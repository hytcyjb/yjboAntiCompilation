.class Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;
.super Ljava/lang/Object;
.source "CarWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onEvaluatingBackClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SimpleScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 488
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->access$100(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 489
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOpHomeTips()V

    goto :goto_0
.end method
