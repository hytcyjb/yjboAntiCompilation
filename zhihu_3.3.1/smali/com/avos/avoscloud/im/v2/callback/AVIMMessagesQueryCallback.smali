.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMMessagesQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            ")V"
        }
    .end annotation
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V

    .line 21
    return-void
.end method
