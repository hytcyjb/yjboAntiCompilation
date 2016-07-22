.class final Lcom/didi/frame/push/PushContextWraper$PushHandler;
.super Landroid/os/Handler;
.source "PushContextWraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/push/PushContextWraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PushHandler"
.end annotation


# instance fields
.field private sRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/didi/frame/push/PushContextWraper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/frame/push/PushContextWraper;)V
    .locals 1
    .parameter "contextWrapper"

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 280
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/frame/push/PushContextWraper$PushHandler;->sRef:Ljava/lang/ref/WeakReference;

    .line 281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, wrapper:Lcom/didi/frame/push/PushContextWraper;
    iget-object v4, p0, Lcom/didi/frame/push/PushContextWraper$PushHandler;->sRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrapper:Lcom/didi/frame/push/PushContextWraper;
    check-cast v3, Lcom/didi/frame/push/PushContextWraper;

    .line 288
    .restart local v3       #wrapper:Lcom/didi/frame/push/PushContextWraper;
    if-nez v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    .local v0, bundle:Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 297
    .local v1, cmd:I
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/didi/frame/push/PushContextWraper$PushHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    #calls: Lcom/didi/frame/push/PushContextWraper;->handleExiting()V
    invoke-static {v3}, Lcom/didi/frame/push/PushContextWraper;->access$400(Lcom/didi/frame/push/PushContextWraper;)V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleConfig(Landroid/os/Bundle;)I

    move-result v2

    .line 307
    :pswitch_2
    invoke-virtual {v3}, Lcom/didi/frame/push/PushContextWraper;->handleLoop()I

    move-result v2

    .line 361
    .local v2, res:I
    :goto_1
    #calls: Lcom/didi/frame/push/PushContextWraper;->onOptionDone(IILandroid/os/Bundle;)V
    invoke-static {v3, v1, v2, v0}, Lcom/didi/frame/push/PushContextWraper;->access$500(Lcom/didi/frame/push/PushContextWraper;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 311
    .end local v2           #res:I
    :pswitch_3
    #calls: Lcom/didi/frame/push/PushContextWraper;->handleConnecting(Landroid/os/Bundle;)I
    invoke-static {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->access$000(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)I

    goto :goto_0

    .line 315
    :pswitch_4
    const-string v4, "PushLog PushContextWraper handleMessage CMD_SEND "

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 316
    #calls: Lcom/didi/frame/push/PushContextWraper;->handleSending(Landroid/os/Bundle;)I
    invoke-static {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->access$100(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)I

    move-result v2

    .line 317
    .restart local v2       #res:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushLog PushContextWraper  handleMessage CMD_SEND over res: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    .end local v2           #res:I
    :pswitch_5
    #calls: Lcom/didi/frame/push/PushContextWraper;->handleSendCallback(Landroid/os/Bundle;)V
    invoke-static {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->access$200(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)V

    goto :goto_0

    .line 326
    :pswitch_6
    #calls: Lcom/didi/frame/push/PushContextWraper;->handleReceiving(Landroid/os/Bundle;)V
    invoke-static {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->access$300(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)V

    goto :goto_0

    .line 330
    :pswitch_7
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleFileChannel(Landroid/os/Bundle;)I

    move-result v2

    .line 331
    .restart local v2       #res:I
    goto :goto_1

    .line 334
    .end local v2           #res:I
    :pswitch_8
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleSendingFile(Landroid/os/Bundle;)I

    move-result v2

    .line 335
    .restart local v2       #res:I
    goto :goto_1

    .line 338
    .end local v2           #res:I
    :pswitch_9
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleReceigingFile(Landroid/os/Bundle;)I

    move-result v2

    .line 339
    .restart local v2       #res:I
    goto :goto_1

    .line 342
    .end local v2           #res:I
    :pswitch_a
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleCanceling(Landroid/os/Bundle;)I

    move-result v2

    .line 343
    .restart local v2       #res:I
    goto :goto_1

    .line 346
    .end local v2           #res:I
    :pswitch_b
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleDisconnect(Landroid/os/Bundle;)I

    goto :goto_0

    .line 350
    :pswitch_c
    invoke-virtual {v3, v0}, Lcom/didi/frame/push/PushContextWraper;->handleStoppingLoop(Landroid/os/Bundle;)I

    move-result v2

    .line 351
    .restart local v2       #res:I
    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method
