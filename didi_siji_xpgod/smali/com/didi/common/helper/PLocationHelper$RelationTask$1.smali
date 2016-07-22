.class Lcom/didi/common/helper/PLocationHelper$RelationTask$1;
.super Lcom/didi/common/net/ResponseListener;
.source "PLocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/PLocationHelper$RelationTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/PLocationHelper$RelationTask;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/PLocationHelper$RelationTask;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask$1;->this$0:Lcom/didi/common/helper/PLocationHelper$RelationTask;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 193
    const/4 v0, 0x0

    .line 200
    .local v0, stopFlag:Z
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorCode()I

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 202
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask$1;->this$0:Lcom/didi/common/helper/PLocationHelper$RelationTask;

    #getter for: Lcom/didi/common/helper/PLocationHelper$RelationTask;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2}, Lcom/didi/common/helper/PLocationHelper$RelationTask;->access$000(Lcom/didi/common/helper/PLocationHelper$RelationTask;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    const-string v1, "=========== task cancel ==========="

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask$1;->this$0:Lcom/didi/common/helper/PLocationHelper$RelationTask;

    #getter for: Lcom/didi/common/helper/PLocationHelper$RelationTask;->mPContext:Lcom/didi/common/helper/PLocationHelper;
    invoke-static {v1}, Lcom/didi/common/helper/PLocationHelper$RelationTask;->access$100(Lcom/didi/common/helper/PLocationHelper$RelationTask;)Lcom/didi/common/helper/PLocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/PLocationHelper;->resetScheduleExecutor()V

    .line 206
    :cond_1
    return-void

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
