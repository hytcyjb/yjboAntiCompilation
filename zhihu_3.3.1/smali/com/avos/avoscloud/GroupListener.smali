.class public interface abstract Lcom/avos/avoscloud/GroupListener;
.super Ljava/lang/Object;
.source "GroupListener.java"


# virtual methods
.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V
.end method

.method public abstract onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
.end method

.method public abstract onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
.end method

.method public abstract onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
.end method

.method public abstract onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
.end method

.method public abstract onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
