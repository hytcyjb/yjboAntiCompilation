.class public Lcom/didi/sdk/component/DHandler;
.super Landroid/os/Handler;
.source "DHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleClientMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 26
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 12
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 23
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 24
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/DHandler;->handleClientMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 17
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/DHandler;->handleServerMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 20
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/DHandler;->handleModuleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleModuleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 27
    return-void
.end method

.method protected handleServerMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 28
    return-void
.end method
