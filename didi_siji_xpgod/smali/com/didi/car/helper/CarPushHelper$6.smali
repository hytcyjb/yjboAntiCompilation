.class final Lcom/didi/car/helper/CarPushHelper$6;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onCommonMessageReceived(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fargs:[Ljava/lang/Object;

.field final synthetic val$frecommendMsg:Ljava/lang/String;

.field final synthetic val$frecommendType:I

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iput p1, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendType:I

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    iput-object p4, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$fargs:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------push message--------- \n common message received: frecommendType->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | frecommendMsg->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    iget v1, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendType:I

    iget-object v2, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$frecommendMsg:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/car/helper/CarPushHelper$6;->val$fargs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;->onMessageReceived(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return-void
.end method
