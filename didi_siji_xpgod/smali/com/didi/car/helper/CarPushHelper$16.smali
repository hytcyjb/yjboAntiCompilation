.class final Lcom/didi/car/helper/CarPushHelper$16;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onPayResultReceived(Lcom/didi/car/helper/CarPushHelper$PayResultListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

.field final synthetic val$payResult:Lcom/didi/car/model/CarPayResult;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$16;->val$payResult:Lcom/didi/car/model/CarPayResult;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$16;->val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------push message--------- \n pay result received: payResult->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$16;->val$payResult:Lcom/didi/car/model/CarPayResult;

    invoke-virtual {v1}, Lcom/didi/car/model/CarPayResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$16;->val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$16;->val$payResult:Lcom/didi/car/model/CarPayResult;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$PayResultListener;->onPayResultReceived(Lcom/didi/car/model/CarPayResult;)V

    .line 1069
    return-void
.end method
