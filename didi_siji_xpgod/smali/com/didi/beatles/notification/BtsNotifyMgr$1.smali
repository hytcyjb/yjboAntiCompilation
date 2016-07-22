.class Lcom/didi/beatles/notification/BtsNotifyMgr$1;
.super Ljava/lang/Object;
.source "BtsNotifyMgr.java"

# interfaces
.implements Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushNewOrderListener()V
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
    .line 39
    iput-object p1, p0, Lcom/didi/beatles/notification/BtsNotifyMgr$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Lcom/didi/beatles/push/model/BtsPushNewOrder;

    invoke-direct {v0}, Lcom/didi/beatles/push/model/BtsPushNewOrder;-><init>()V

    .line 44
    .local v0, btsPushNewOrder:Lcom/didi/beatles/push/model/BtsPushNewOrder;
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;->order_list_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushNewOrder;->orderListType:I

    .line 45
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    const-string v2, "new_order_push"

    invoke-virtual {v1, v0, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .end local v0           #btsPushNewOrder:Lcom/didi/beatles/push/model/BtsPushNewOrder;
    :cond_0
    return-void
.end method
