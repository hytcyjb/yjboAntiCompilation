.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalEvaluateView.java"

# interfaces
.implements Lcom/didi/common/ui/component/StarView$StarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDuplicated:Z

.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarTxtListener(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method public onTouchDownListener()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 281
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

    .line 286
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v3

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->mDuplicated:Z

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;->mDuplicated:Z

    .line 295
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
