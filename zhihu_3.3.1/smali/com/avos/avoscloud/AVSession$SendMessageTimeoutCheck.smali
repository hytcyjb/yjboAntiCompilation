.class Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMessageTimeoutCheck"
.end annotation


# instance fields
.field private final switcher:Z

.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVSession;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-boolean p2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->switcher:Z

    .line 526
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->switcher:Z

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 536
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/avos/avoscloud/AVSession;->access$400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 538
    invoke-static {}, Lcom/avos/avoscloud/PushService;->triggerReconnect()V

    .line 539
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$300(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
