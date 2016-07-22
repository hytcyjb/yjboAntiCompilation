.class final Lcom/didi/car/helper/CarPushHelper$4;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onOrderStatusMessageReceived(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fOrderState:Lcom/didi/car/model/CarOrderState;

.field final synthetic val$foid:Ljava/lang/String;

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarOrderState;Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$fOrderState:Lcom/didi/car/model/CarOrderState;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;

    iput-object p3, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$foid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------push message--------- \n order status received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$fOrderState:Lcom/didi/car/model/CarOrderState;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrderState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$foid:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/helper/CarPushHelper$4;->val$fOrderState:Lcom/didi/car/model/CarOrderState;

    invoke-interface {v0, v1, v2}, Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;->onOrderStatusReceived(Ljava/lang/String;Lcom/didi/car/model/CarOrderState;)V

    .line 413
    return-void
.end method
