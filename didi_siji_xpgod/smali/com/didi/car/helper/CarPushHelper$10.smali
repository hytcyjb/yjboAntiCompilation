.class final Lcom/didi/car/helper/CarPushHelper$10;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onOrderRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frealtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarOrderRealtimeCount;Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$10;->val$frealtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$10;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " old realtime message received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$10;->val$frealtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrderRealtimeCount;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$10;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$10;->val$frealtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;->onOrderRealtimeCountReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    .line 694
    return-void
.end method
