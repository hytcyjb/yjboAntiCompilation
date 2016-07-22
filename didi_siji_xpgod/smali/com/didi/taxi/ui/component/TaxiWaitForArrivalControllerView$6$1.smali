.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->onScrollEnd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideEditView()V

    .line 592
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-boolean v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayEvaluateFlag:Z

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    const v1, 0x7f0902ab

    invoke-static {v0, v1}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-boolean v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayEvaluateFlag:Z

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    const v1, 0x7f090298

    invoke-static {v0, v1}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 598
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayIcon()V

    .line 599
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v1, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 602
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method
