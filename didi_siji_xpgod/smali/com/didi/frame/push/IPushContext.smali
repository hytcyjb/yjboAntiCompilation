.class interface abstract Lcom/didi/frame/push/IPushContext;
.super Ljava/lang/Object;
.source "IPushContext.java"


# virtual methods
.method public abstract cancel(J)I
.end method

.method public abstract config(Landroid/content/Context;IIIIIIIIIIIIIII)I
.end method

.method public abstract isConnected()I
.end method

.method public abstract recvFile(JILjava/lang/String;Ljava/lang/String;I[B)I
.end method

.method public abstract sendFile(JIJLjava/lang/String;[BII[B)I
.end method

.method public abstract sendMessage(I[BIII[B)I
.end method

.method public abstract setCallback()I
.end method

.method public abstract setFileChannel(Ljava/lang/String;I)I
.end method

.method public abstract startConnChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BII)I
.end method

.method public abstract startLoop()I
.end method

.method public abstract stopConnChannel()I
.end method

.method public abstract stopLoop()I
.end method
