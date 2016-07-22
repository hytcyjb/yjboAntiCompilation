.class Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;
.super Ljava/lang/Object;
.source "DDriverWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onEvaluatingBackClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->access$000(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SimpleScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->access$000(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 431
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->access$100(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 432
    const-string v0, "morning"

    const-string v1, "onEvaluateSubmitSuccessed showOpHomeTips is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showOpHomeTips()V

    goto :goto_0
.end method
