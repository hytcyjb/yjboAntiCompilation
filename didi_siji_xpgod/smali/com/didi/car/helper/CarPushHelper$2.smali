.class final Lcom/didi/car/helper/CarPushHelper$2;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onDriverPositionReceived(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

.field final synthetic val$pos:Lcom/didi/car/model/CarPosition;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarPosition;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$2;->val$pos:Lcom/didi/car/model/CarPosition;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$2;->val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------push message--------- \n driver position received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$2;->val$pos:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v1}, Lcom/didi/car/model/CarPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$2;->val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$2;->val$pos:Lcom/didi/car/model/CarPosition;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;->onDriverPositionReceived(Lcom/didi/car/model/CarPosition;)V

    .line 223
    return-void
.end method
