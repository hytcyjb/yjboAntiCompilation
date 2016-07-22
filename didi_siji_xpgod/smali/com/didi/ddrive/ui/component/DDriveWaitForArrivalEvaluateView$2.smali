.class Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalEvaluateView.java"

# interfaces
.implements Lcom/didi/common/ui/component/StarView$StarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarTxtListener(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 355
    return-void
.end method

.method public onTouchDownListener()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->access$000(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v0

    iget v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->evaluateMark:I

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "DDriveWaitForArrivalEvaluateView"

    const-string v1, "evaluated"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    .line 331
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

    .line 336
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->updateCommentItems()V

    .line 338
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->access$100(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return v3

    .line 342
    :cond_0
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
