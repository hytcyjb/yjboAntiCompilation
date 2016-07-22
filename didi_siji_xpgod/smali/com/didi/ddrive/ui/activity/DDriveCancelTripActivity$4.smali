.class Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;
.super Ljava/lang/Object;
.source "DDriveCancelTripActivity.java"

# interfaces
.implements Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$102(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->onBackPressed()V

    .line 300
    return-void
.end method

.method public onConfirm()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 275
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 276
    const-string v0, "pdjxcancletrip_03_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getRemarkContent()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$202(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$200(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$100(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    const v0, 0x7f0b048b

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 294
    :cond_1
    :goto_1
    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 279
    const-string v0, "pdjxcancletrip_04_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 282
    const-string v0, "pdjxcancletrip_05_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_4
    invoke-static {}, Lcom/didi/car/helper/CarClickHelper;->getInstance()Lcom/didi/car/helper/CarClickHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarClickHelper;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #calls: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->doConfirm(I)V
    invoke-static {v0, v5}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$300(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;I)V

    goto :goto_1
.end method

.method public onReasonCheck()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$102(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    return-void
.end method
