.class public Lcom/didi/beatles/push/BtsPushController;
.super Ljava/lang/Object;
.source "BtsPushController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static regiseterBtsOrderStatusPush()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushOrderChangeListener()V

    .line 12
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushNewOrderListener()V

    .line 13
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushOrderOfRouteListener()V

    .line 14
    return-void
.end method

.method public static unRegiseterBtsPush()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->unregisterBTSPushOrderChangeListener()V

    .line 18
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->unregisterBTSPushNewOrderListener()V

    .line 19
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->unregisterBTSPushOrderOfRouteListener()V

    .line 20
    return-void
.end method
