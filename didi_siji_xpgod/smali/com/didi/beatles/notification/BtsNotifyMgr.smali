.class public Lcom/didi/beatles/notification/BtsNotifyMgr;
.super Ljava/lang/Object;
.source "BtsNotifyMgr.java"


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/didi/beatles/notification/BtsNotifyMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/didi/beatles/notification/BtsNotifyMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/beatles/notification/BtsNotifyMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/beatles/notification/BtsNotifyMgr;->sInstance:Lcom/didi/beatles/notification/BtsNotifyMgr;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/didi/beatles/notification/BtsNotifyMgr;

    invoke-direct {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;-><init>()V

    sput-object v0, Lcom/didi/beatles/notification/BtsNotifyMgr;->sInstance:Lcom/didi/beatles/notification/BtsNotifyMgr;

    .line 30
    :cond_0
    sget-object v0, Lcom/didi/beatles/notification/BtsNotifyMgr;->sInstance:Lcom/didi/beatles/notification/BtsNotifyMgr;

    return-object v0
.end method


# virtual methods
.method public registerBTSPushNewOrderListener()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "bts_new_order_listener"

    new-instance v1, Lcom/didi/beatles/notification/BtsNotifyMgr$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/notification/BtsNotifyMgr$1;-><init>(Lcom/didi/beatles/notification/BtsNotifyMgr;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/helper/BtsPushHelper;->registerNewOrderTipListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;)V

    .line 49
    return-void
.end method

.method public registerBTSPushOrderChangeListener()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "bts_order_change_listener"

    new-instance v1, Lcom/didi/beatles/notification/BtsNotifyMgr$2;

    invoke-direct {v1, p0}, Lcom/didi/beatles/notification/BtsNotifyMgr$2;-><init>(Lcom/didi/beatles/notification/BtsNotifyMgr;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/helper/BtsPushHelper;->registerOrderChangeListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;)V

    .line 82
    return-void
.end method

.method public registerBTSPushOrderOfRouteListener()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "bts_order_of_route_listener"

    new-instance v1, Lcom/didi/beatles/notification/BtsNotifyMgr$3;

    invoke-direct {v1, p0}, Lcom/didi/beatles/notification/BtsNotifyMgr$3;-><init>(Lcom/didi/beatles/notification/BtsNotifyMgr;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/helper/BtsPushHelper;->registerNewOrderOfRouteListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderOfRouteListener;)V

    .line 114
    return-void
.end method

.method public unregisterBTSPushNewOrderListener()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterNewOrderTipListener()V

    .line 56
    return-void
.end method

.method public unregisterBTSPushOrderChangeListener()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterOrderChangerListener()V

    .line 89
    return-void
.end method

.method public unregisterBTSPushOrderOfRouteListener()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterNewOrderOfRouteListener()V

    .line 121
    return-void
.end method
