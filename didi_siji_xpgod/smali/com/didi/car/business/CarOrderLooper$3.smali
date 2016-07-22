.class Lcom/didi/car/business/CarOrderLooper$3;
.super Landroid/os/CountDownTimer;
.source "CarOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/business/CarOrderLooper;->startTimerDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/business/CarOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/car/business/CarOrderLooper;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->access$500()I

    move-result v1

    #setter for: Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I
    invoke-static {v0, v1}, Lcom/didi/car/business/CarOrderLooper;->access$1202(Lcom/didi/car/business/CarOrderLooper;I)I

    .line 282
    new-instance v0, Lcom/didi/car/business/CarOrderLooper$3$1;

    invoke-direct {v0, p0}, Lcom/didi/car/business/CarOrderLooper$3$1;-><init>(Lcom/didi/car/business/CarOrderLooper$3;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public onTick(J)V
    .locals 11
    .parameter "millisUntilFinished"

    .prologue
    const v10, 0x7f0b03f6

    const v9, 0x7f0b03f3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoopMills="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->access$500()I

    move-result v5

    long-to-int v6, p1

    div-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->mRecoveryTime:I
    invoke-static {v6}, Lcom/didi/car/business/CarOrderLooper;->access$600(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v6

    add-int/2addr v5, v6

    #setter for: Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I
    invoke-static {v4, v5}, Lcom/didi/car/business/CarOrderLooper;->access$402(Lcom/didi/car/business/CarOrderLooper;I)I

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoopMillsSent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->pushCarNum:I
    invoke-static {v5}, Lcom/didi/car/business/CarOrderLooper;->access$700(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-virtual {v4}, Lcom/didi/car/business/CarOrderLooper;->checkGuide()V

    .line 245
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->mSentCnt:I
    invoke-static {v4}, Lcom/didi/car/business/CarOrderLooper;->access$800(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v4

    invoke-static {v4}, Lcom/didi/common/util/Utils;->second2Min(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, time:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 249
    .local v0, order:Lcom/didi/frame/Sendable;
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iget v5, v5, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    #setter for: Lcom/didi/car/business/CarOrderLooper;->secondSpend:I
    invoke-static {v4, v5}, Lcom/didi/car/business/CarOrderLooper;->access$902(Lcom/didi/car/business/CarOrderLooper;I)I

    .line 250
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->countDown:I

    if-nez v4, :cond_0

    .line 251
    const v4, 0x7f0b03f4

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->updatePushCarContent(Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/looper/OrderLooper;->getmSentCnt()I

    move-result v1

    .line 254
    .local v1, sendCount:I
    :goto_1
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->secondSpend:I
    invoke-static {v4}, Lcom/didi/car/business/CarOrderLooper;->access$900(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    if-nez v4, :cond_1

    .line 255
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->updatePushCarContent(Ljava/lang/String;)V

    .line 258
    :cond_1
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->secondSpend:I
    invoke-static {v4}, Lcom/didi/car/business/CarOrderLooper;->access$900(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    if-ne v4, v7, :cond_3

    :cond_2
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->getInstance()Lcom/didi/car/business/CarOrderLooper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/car/business/CarOrderLooper;->getmSentCnt()I

    move-result v4

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iget v5, v5, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    if-ge v4, v5, :cond_3

    .line 259
    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->addPrice:I
    invoke-static {v4}, Lcom/didi/car/business/CarOrderLooper;->access$1000(Lcom/didi/car/business/CarOrderLooper;)I

    move-result v4

    if-gez v4, :cond_6

    invoke-static {v10}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->updatePushCarContent(Ljava/lang/String;)V

    .line 263
    :cond_3
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    if-lt v1, v4, :cond_4

    .line 264
    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v10}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->updatePushCarContent(Ljava/lang/String;)V

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-static {v3}, Lcom/didi/car/business/CarOrderLooper;->access$1010(Lcom/didi/car/business/CarOrderLooper;)I

    goto/16 :goto_0

    .end local v1           #sendCount:I
    :cond_5
    move v1, v3

    .line 253
    goto/16 :goto_1

    .line 259
    .restart local v1       #sendCount:I
    :cond_6
    iget-object v4, p0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->endPart:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/car/business/CarOrderLooper;->access$1100(Lcom/didi/car/business/CarOrderLooper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
