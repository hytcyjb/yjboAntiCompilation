.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalEvaluateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->onTouchUpListener()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaulateStarClicked()V

    .line 300
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->mDuplicated:Z

    .line 301
    return-void
.end method
