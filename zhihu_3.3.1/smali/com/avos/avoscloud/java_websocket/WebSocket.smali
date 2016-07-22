.class public interface abstract Lcom/avos/avoscloud/java_websocket/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;,
        Lcom/avos/avoscloud/java_websocket/WebSocket$Role;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_WSS_PORT:I = 0x1bb


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(I)V
.end method

.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract closeConnection(ILjava/lang/String;)V
.end method

.method public abstract getDraft()Lcom/avos/avoscloud/java_websocket/drafts/Draft;
.end method

.method public abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getReadyState()Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;
.end method

.method public abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getResourceDescriptor()Ljava/lang/String;
.end method

.method public abstract hasBufferedData()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isClosing()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract isFlushAndClose()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract send([B)V
.end method

.method public abstract sendFragmentedFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
.end method
