.class Lcom/didi/beatles/notification/BtsNotifyMgr$2;
.super Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
.source "BtsNotifyMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/notification/BtsNotifyMgr;->registerBTSPushOrderChangeListener()V
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
    .line 62
    iput-object p1, p0, Lcom/didi/beatles/notification/BtsNotifyMgr$2;->this$0:Lcom/didi/beatles/notification/BtsNotifyMgr;

    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->change_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->status:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->sub_status:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_2

    .line 67
    new-instance v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;

    invoke-direct {v0}, Lcom/didi/beatles/push/model/BtsPushOrderStatus;-><init>()V

    .line 68
    .local v0, btsPushOrderStatus:Lcom/didi/beatles/push/model/BtsPushOrderStatus;
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->change_text:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->msg:Ljava/lang/String;

    .line 69
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_list_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->orderListType:I

    .line 71
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->user_role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->role:I

    .line 72
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->status:I

    .line 73
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->sub_status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->subStatus:I

    .line 74
    iget-object v1, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->show:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->showDlg:I

    .line 75
    const-string v1, "0"

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->status:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->sub_status:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    const-string v2, "order_status"

    invoke-virtual {v1, v0, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .end local v0           #btsPushOrderStatus:Lcom/didi/beatles/push/model/BtsPushOrderStatus;
    :cond_2
    return-void
.end method
