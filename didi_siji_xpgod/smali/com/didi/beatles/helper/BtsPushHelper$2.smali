.class final Lcom/didi/beatles/helper/BtsPushHelper$2;
.super Ljava/lang/Object;
.source "BtsPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsPushHelper;->registerNewOrderTipListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 6
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 120
    :try_start_0
    new-instance v3, Lcom/squareup/wire/Wire;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 121
    .local v3, wire:Lcom/squareup/wire/Wire;
    const-class v4, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;

    invoke-virtual {v3, p3, v4}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;

    .line 123
    .local v1, req:Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;
    invoke-static {v1}, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;->from(Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;)Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;

    move-result-object v2

    .line 125
    .local v2, tip:Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPushMessageReceived newOrderTipReq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;->order_list_type:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    new-instance v4, Lcom/didi/beatles/helper/BtsPushHelper$2$1;

    invoke-direct {v4, p0, v2}, Lcom/didi/beatles/helper/BtsPushHelper$2$1;-><init>(Lcom/didi/beatles/helper/BtsPushHelper$2;Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;)V

    invoke-static {v4}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #req:Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;
    .end local v2           #tip:Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;
    .end local v3           #wire:Lcom/squareup/wire/Wire;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
