.class public interface abstract Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;
.super Ljava/lang/Object;
.source "MessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dispatch(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract read(Lcom/didi/ddrive/net/tcp/tcp/Channel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/ddrive/net/tcp/tcp/Channel;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation
.end method
