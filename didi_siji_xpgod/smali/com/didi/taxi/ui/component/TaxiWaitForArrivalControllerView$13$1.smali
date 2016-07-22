.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->onScrollEnd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;

    iget-object v1, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$800(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 785
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showHomeTip()V

    .line 786
    return-void
.end method
