.class public abstract Lcom/avos/avoscloud/AVInternalSessionListener;
.super Ljava/lang/Object;
.source "AVInternalSessionListener.java"

# interfaces
.implements Lcom/avos/avoscloud/SessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v4, -0x1

    const v5, -0x10001

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    .line 17
    return-void
.end method

.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V
.end method

.method public abstract onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const v0, -0x10001

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 31
    return-void
.end method

.method public abstract onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
.end method

.method public abstract onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
.end method

.method public onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, -0x10001

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 23
    return-void
.end method

.method public abstract onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
.end method
