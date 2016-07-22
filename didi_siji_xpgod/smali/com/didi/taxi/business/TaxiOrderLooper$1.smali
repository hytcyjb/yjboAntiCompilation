.class Lcom/didi/taxi/business/TaxiOrderLooper$1;
.super Landroid/os/Handler;
.source "TaxiOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/business/TaxiOrderLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/business/TaxiOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiOrderLooper--REPEAT_CHECK_ANSWER-listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->isAlarmDo:Z
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$100(Lcom/didi/taxi/business/TaxiOrderLooper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #setter for: Lcom/didi/taxi/business/TaxiOrderLooper;->isAlarmDo:Z
    invoke-static {v0, v2}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$102(Lcom/didi/taxi/business/TaxiOrderLooper;Z)Z

    .line 215
    const-string v0, "TaxiOrderAlaram"

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-virtual {v4}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiOrderDoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z
    invoke-static {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$200(Lcom/didi/taxi/business/TaxiOrderLooper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->isHandStop:Z
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$200(Lcom/didi/taxi/business/TaxiOrderLooper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$1;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #calls: Lcom/didi/taxi/business/TaxiOrderLooper;->doGetStateThread()V
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$300(Lcom/didi/taxi/business/TaxiOrderLooper;)V

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
