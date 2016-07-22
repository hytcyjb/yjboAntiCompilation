.class Lcom/didi/beatles/notification/BtsNotifyMgr$3;
.super Ljava/lang/Object;
.source "BtsNotifyMgr.java"

# interfaces
.implements Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderOfRouteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushOrderOfRouteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/notification/BtsNotifyMgr;


# direct methods
.method constructor <init>(Lcom/didi/beatles/notification/BtsNotifyMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/didi/beatles/notification/BtsNotifyMgr$3;->this$0:Lcom/didi/beatles/notification/BtsNotifyMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/didi/beatles/model/pb/BtsNormalOrderPush;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->isTaxiOrCarOrder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;

    invoke-direct {v0}, Lcom/didi/beatles/push/model/BtsPushOrderStatus;-><init>()V

    .line 101
    .local v0, btsPushOrderStatus:Lcom/didi/beatles/push/model/BtsPushOrderStatus;
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->push_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->msg:Ljava/lang/String;

    .line 102
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    .line 103
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->route_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->routeId:Ljava/lang/String;

    .line 104
    iput v2, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->status:I

    .line 105
    iput v2, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->subStatus:I

    .line 106
    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->role:I

    .line 107
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->isTaxiOrCarOrder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/beatles/notification/BtsNotificationUtils;->showPushNotice(Landroid/content/Context;Ljava/lang/Object;)V

    .line 112
    .end local v0           #btsPushOrderStatus:Lcom/didi/beatles/push/model/BtsPushOrderStatus;
    :cond_0
    return-void
.end method
