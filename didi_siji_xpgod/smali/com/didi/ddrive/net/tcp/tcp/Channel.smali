.class public interface abstract Lcom/didi/ddrive/net/tcp/tcp/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract isWritable()Z
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation
.end method

.method public abstract read([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation
.end method
