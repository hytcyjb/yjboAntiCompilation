.class public interface abstract Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;
.super Ljava/lang/Object;
.source "WrappedByteChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# virtual methods
.method public abstract isBlocking()Z
.end method

.method public abstract isNeedRead()Z
.end method

.method public abstract isNeedWrite()Z
.end method

.method public abstract readMore(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract writeMore()V
.end method
