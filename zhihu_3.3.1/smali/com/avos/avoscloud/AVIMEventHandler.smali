.class public abstract Lcom/avos/avoscloud/AVIMEventHandler;
.super Ljava/lang/Object;
.source "AVIMEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/avos/avoscloud/AVIMEventHandler$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVIMEventHandler$1;-><init>(Lcom/avos/avoscloud/AVIMEventHandler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, "Post runnable to handler failed."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVIMEventHandler;->processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
