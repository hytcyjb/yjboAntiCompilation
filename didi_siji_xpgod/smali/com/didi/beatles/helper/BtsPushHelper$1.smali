.class final Lcom/didi/beatles/helper/BtsPushHelper$1;
.super Ljava/lang/Object;
.source "BtsPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsPushHelper;->registerOrderChangeListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
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
    .line 58
    :try_start_0
    new-instance v3, Lcom/squareup/wire/Wire;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 59
    .local v3, wire:Lcom/squareup/wire/Wire;
    const-class v4, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;

    invoke-virtual {v3, p3, v4}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;

    .line 61
    .local v1, req:Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;
    invoke-static {v1}, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->from(Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;)Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    move-result-object v2

    .line 63
    .local v2, tip:Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPushMessageReceived dataChangeReq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    new-instance v4, Lcom/didi/beatles/helper/BtsPushHelper$1$1;

    invoke-direct {v4, p0, v2}, Lcom/didi/beatles/helper/BtsPushHelper$1$1;-><init>(Lcom/didi/beatles/helper/BtsPushHelper$1;Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V

    invoke-static {v4}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #req:Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;
    .end local v2           #tip:Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;
    .end local v3           #wire:Lcom/squareup/wire/Wire;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPushMessageReceived e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
