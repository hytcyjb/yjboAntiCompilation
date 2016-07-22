.class Lcom/didi/frame/push/PushContext;
.super Ljava/lang/Object;
.source "PushContext.java"

# interfaces
.implements Lcom/didi/frame/push/IPushContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    :try_start_0
    const-string v1, "didipsgpush"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onConnNativeCallback(I)V
    .locals 1
    .parameter "retCode"

    .prologue
    .line 100
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/push/Push;->onConnCallback(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public static onLogMessageNativeCallBack()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public static onMsgReceivedNativeCallback(I[B[BI)V
    .locals 1
    .parameter "msgType"
    .parameter "seqId"
    .parameter "data"
    .parameter "dataLen"

    .prologue
    .line 113
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/frame/push/Push;->onMsgReceivedCallback(I[B[BI)V

    .line 117
    :cond_0
    return-void
.end method

.method public static onMsgSentNativeCallback(II[B)V
    .locals 1
    .parameter "retCode"
    .parameter "msgType"
    .parameter "seqId"

    .prologue
    .line 106
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/frame/push/Push;->onMsgSentCallback(II[B)V

    .line 109
    :cond_0
    return-void
.end method

.method public static onProgressNativeCallback([BII)V
    .locals 1
    .parameter "seqId"
    .parameter "progressState"
    .parameter "progressPercent"

    .prologue
    .line 120
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/frame/push/Push;->onProgressCallback([BII)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public native cancel(J)I
.end method

.method public native config(Landroid/content/Context;IIIIIIIIIIIIIII)I
.end method

.method public native isConnected()I
.end method

.method public native recvFile(JILjava/lang/String;Ljava/lang/String;I[B)I
.end method

.method public native sendFile(JIJLjava/lang/String;[BII[B)I
.end method

.method public native sendMessage(I[BIII[B)I
.end method

.method public native setCallback()I
.end method

.method public native setFileChannel(Ljava/lang/String;I)I
.end method

.method public native startConnChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BII)I
.end method

.method public native startLoop()I
.end method

.method public native stopConnChannel()I
.end method

.method public native stopLoop()I
.end method
