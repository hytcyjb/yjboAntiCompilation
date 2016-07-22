.class Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1$1;
.super Ljava/lang/Object;
.source "CarWaitForArrivalEvaluateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->onTouchUpListener()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1$1;->this$1:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1$1;->this$1:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;

    iget-object v0, v0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->access$200(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateStarClicked()V

    .line 363
    return-void
.end method
