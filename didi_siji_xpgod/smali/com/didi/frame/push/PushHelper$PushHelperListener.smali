.class final Lcom/didi/frame/push/PushHelper$PushHelperListener;
.super Ljava/lang/Object;
.source "PushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/push/PushHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PushHelperListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/push/PushHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/didi/frame/push/PushHelper$PushHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushConnCallback(I)V
    .locals 3
    .parameter "res"

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushLog PushHelper onPushConnCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----pusher---result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 113
    if-nez p1, :cond_1

    .line 114
    #calls: Lcom/didi/frame/push/PushHelper;->notifyReconn()V
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->access$000()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 122
    const/16 v1, -0x10

    if-eq p1, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushHelper onPushConnCallback response is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 128
    const/16 v1, -0x11

    if-ne p1, v1, :cond_2

    .line 129
    #calls: Lcom/didi/frame/push/PushHelper;->addPushUser()V
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->access$100()V

    .line 132
    :cond_2
    const/4 v1, -0x7

    if-ne p1, v1, :cond_3

    .line 133
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->configPush()V

    .line 137
    :cond_3
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "PushLog PushHelper doCreatePushConnection----> "

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v1

    #calls: Lcom/didi/frame/push/PushHelper;->getPushConnectionArgs()[Ljava/lang/Object;
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->access$300()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/push/Push;->doCreatePushConnection([Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPushContextStarted()V
    .locals 0

    .prologue
    .line 91
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->configPush()V

    .line 92
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->connPush()V

    .line 93
    return-void
.end method

.method public onPushFileConnError(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 152
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->setFileChannelPush()V

    .line 158
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPushLoopError(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 99
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 102
    :cond_0
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    .line 105
    :cond_1
    return-void
.end method
