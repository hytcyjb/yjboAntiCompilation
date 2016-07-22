.class final Lcom/didi/common/helper/DriversHelper$4;
.super Ljava/lang/Object;
.source "DriversHelper.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/DriversHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNearDriversMsgReceived(ILcom/didi/common/model/NearDrivers;)V
    .locals 2
    .parameter "productId"
    .parameter "nearDrivers"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------mGetNearDriversListener----etaStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 208
    new-instance v0, Lcom/didi/common/helper/DriversHelper$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/common/helper/DriversHelper$4$1;-><init>(Lcom/didi/common/helper/DriversHelper$4;ILcom/didi/common/model/NearDrivers;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$4$1;->start()V

    .line 215
    return-void
.end method
