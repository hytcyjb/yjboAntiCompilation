.class Lcom/didi/flier/business/FlierOrderLooper$3;
.super Landroid/os/CountDownTimer;
.source "FlierOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/business/FlierOrderLooper;->startTimerDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/business/FlierOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/flier/business/FlierOrderLooper;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->access$500()I

    move-result v1

    #setter for: Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I
    invoke-static {v0, v1}, Lcom/didi/flier/business/FlierOrderLooper;->access$902(Lcom/didi/flier/business/FlierOrderLooper;I)I

    .line 276
    new-instance v0, Lcom/didi/flier/business/FlierOrderLooper$3$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/business/FlierOrderLooper$3$1;-><init>(Lcom/didi/flier/business/FlierOrderLooper$3;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoopMills="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->access$500()I

    move-result v2

    long-to-int v3, p1

    div-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->mRecoveryTime:I
    invoke-static {v3}, Lcom/didi/flier/business/FlierOrderLooper;->access$600(Lcom/didi/flier/business/FlierOrderLooper;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I
    invoke-static {v1, v2}, Lcom/didi/flier/business/FlierOrderLooper;->access$402(Lcom/didi/flier/business/FlierOrderLooper;I)I

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoopMillsSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->pushCarNum:I
    invoke-static {v2}, Lcom/didi/flier/business/FlierOrderLooper;->access$700(Lcom/didi/flier/business/FlierOrderLooper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-virtual {v1}, Lcom/didi/flier/business/FlierOrderLooper;->checkGuide()V

    .line 242
    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->mSentCnt:I
    invoke-static {v1}, Lcom/didi/flier/business/FlierOrderLooper;->access$800(Lcom/didi/flier/business/FlierOrderLooper;)I

    move-result v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->second2Min(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, time:Ljava/lang/String;
    const v1, 0x7f0b03f4

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updatePushCarContent(Ljava/lang/String;)V

    .line 271
    return-void
.end method
