.class Lcom/didi/car/ui/activity/CarCancelTripActivity$2;
.super Ljava/lang/Object;
.source "CarCancelTripActivity.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCancelTripActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$002(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->onBackPressed()V

    .line 173
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$002(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getRemarkContent()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$102(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$000(Lcom/didi/car/ui/activity/CarCancelTripActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    #getter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$100(Lcom/didi/car/ui/activity/CarCancelTripActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const v0, 0x7f0b048b

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/didi/car/helper/CarClickHelper;->getInstance()Lcom/didi/car/helper/CarClickHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarClickHelper;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    #calls: Lcom/didi/car/ui/activity/CarCancelTripActivity;->showReConfirmDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$200(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_cancel_trip_reason_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getCurrentResonIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReasonCheck()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;->this$0:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->access$002(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    return-void
.end method
