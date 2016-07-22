.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$11;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->registerPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$11;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderStatusReceived(Ljava/lang/String;Lcom/didi/car/model/CarOrderState;)V
    .locals 2
    .parameter "orderId"
    .parameter "orderState"

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/didi/car/model/CarOrderState;->driverCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/didi/car/model/CarOrderState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$11;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doOrderStatusGot(Lcom/didi/car/model/CarOrderState;)V
    invoke-static {v0, p2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1700(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarOrderState;)V

    .line 397
    return-void
.end method
