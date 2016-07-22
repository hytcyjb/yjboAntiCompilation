.class final Lcom/didi/car/helper/CarPushHelper$9;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onOrderNewRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarOrderNewRealtimeCount;Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$9;->val$frealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$9;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " new realtime message received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$9;->val$frealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrderNewRealtimeCount;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$9;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$9;->val$frealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;->onOrderRealtimeCountReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 621
    return-void
.end method
