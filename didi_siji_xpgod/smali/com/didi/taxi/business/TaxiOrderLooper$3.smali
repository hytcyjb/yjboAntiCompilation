.class Lcom/didi/taxi/business/TaxiOrderLooper$3;
.super Landroid/os/CountDownTimer;
.source "TaxiOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/business/TaxiOrderLooper;->startTimerDown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/business/TaxiOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/business/TaxiOrderLooper;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 376
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper$3$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/business/TaxiOrderLooper$3$1;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper$3;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 383
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    const/4 v1, 0x0

    #setter for: Lcom/didi/taxi/business/TaxiOrderLooper;->pushCarNum:I
    invoke-static {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1102(Lcom/didi/taxi/business/TaxiOrderLooper;I)I

    .line 384
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$500()I

    move-result v1

    #setter for: Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I
    invoke-static {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1202(Lcom/didi/taxi/business/TaxiOrderLooper;I)I

    .line 385
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1300(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 386
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1302(Lcom/didi/taxi/business/TaxiOrderLooper;Ljava/util/Timer;)Ljava/util/Timer;

    .line 387
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1300(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #calls: Lcom/didi/taxi/business/TaxiOrderLooper;->myTask()Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1400(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 388
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 324
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$500()I

    move-result v2

    long-to-int v3, p1

    div-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->mRecoveryTime:I
    invoke-static {v3}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$600(Lcom/didi/taxi/business/TaxiOrderLooper;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I
    invoke-static {v1, v2}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$402(Lcom/didi/taxi/business/TaxiOrderLooper;I)I

    .line 325
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->checkGuide()V

    .line 326
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$500()I

    move-result v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v2, v2

    sub-int v0, v1, v2

    .line 327
    .local v0, startProgress:I
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onProgress(I)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->getPushContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$700(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    iget v1, v1, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    if-nez v1, :cond_2

    .line 365
    const v1, 0x7f0b0533

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I
    invoke-static {v4}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$800(Lcom/didi/taxi/business/TaxiOrderLooper;)I

    move-result v4

    invoke-static {v4}, Lcom/didi/common/util/Utils;->second2Min(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updatePushCarContentResetBg(Ljava/lang/String;)V

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->pushContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$900(Lcom/didi/taxi/business/TaxiOrderLooper;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/business/TaxiOrderLooper$3;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->mSentCnt:I
    invoke-static {v4}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$1000(Lcom/didi/taxi/business/TaxiOrderLooper;)I

    move-result v4

    invoke-static {v4}, Lcom/didi/common/util/Utils;->second2Min(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updatePushCarContentResetBg(Ljava/lang/String;)V

    goto :goto_0
.end method
