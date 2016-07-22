.class Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;
.super Ljava/lang/Object;
.source "CarWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V
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
    .line 534
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->access$200(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/common/ui/component/FlipperView;

    move-result-object v0

    const v1, 0x7f08025a

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 539
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->access$300(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onCostDetailViewShown()V

    .line 540
    return-void
.end method
