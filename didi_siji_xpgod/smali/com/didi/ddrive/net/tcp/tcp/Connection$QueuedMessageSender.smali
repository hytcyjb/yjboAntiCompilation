.class Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;
.super Landroid/os/HandlerThread;
.source "Connection.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/tcp/MessageSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/tcp/tcp/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedMessageSender"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/tcp/tcp/Connection;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    .line 207
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 208
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    iput-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    .line 286
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->sendMessage(Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "message"
    .parameter "delay"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public sendMessageDelayed(Ljava/lang/String;J)V
    .locals 2
    .parameter "msg"
    .parameter "delayed"

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    invoke-virtual {p0, v0, p2, p3}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 244
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;

    invoke-virtual {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;-><init>(Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
