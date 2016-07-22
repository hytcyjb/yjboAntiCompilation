.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;->onScrollEnd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    const v1, 0x7f0902a6

    invoke-static {v0, v1}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 305
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showEditView()V

    .line 306
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    iget-object v1, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->invisible(Landroid/view/View;)V

    .line 307
    return-void
.end method
