.class Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;
.super Ljava/lang/Object;
.source "CarWaitForArrivalEvaluateView.java"

# interfaces
.implements Lcom/didi/common/ui/component/StarView$StarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarTxtListener(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 371
    return-void
.end method

.method public onTouchDownListener()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget v0, v0, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchUpListener()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->updateCommentItems()V

    .line 354
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->access$100(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return v3

    .line 358
    :cond_0
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
