.class Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;
.super Ljava/lang/Object;
.source "DDriverWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCostDetailView(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/model/OrderState;)V
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
    .line 480
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->access$200(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/common/ui/component/FlipperView;

    move-result-object v0

    const v1, 0x7f08032a

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 485
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->access$300(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onCostDetailViewShown()V

    .line 486
    return-void
.end method
