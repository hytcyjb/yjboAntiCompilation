.class public interface abstract Lcom/avos/avoscloud/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.java"


# virtual methods
.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
.end method

.method public abstract onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
.end method

.method public abstract onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
