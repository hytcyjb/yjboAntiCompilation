.class public abstract Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMClientEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClientOffline(Lcom/avos/avoscloud/im/v2/AVIMClient;I)V
.end method

.method public abstract onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method public abstract onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 57
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 47
    :pswitch_1
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 50
    :pswitch_2
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p4

    .line 53
    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onClientOffline(Lcom/avos/avoscloud/im/v2/AVIMClient;I)V

    .line 54
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->close()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0xc356
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
