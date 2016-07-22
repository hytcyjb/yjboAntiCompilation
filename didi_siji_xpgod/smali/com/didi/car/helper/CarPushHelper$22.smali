.class final Lcom/didi/car/helper/CarPushHelper$22;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onNearDriversReceived(ILcom/didi/car/helper/CarPushHelper$NearDriversGetListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

.field final synthetic val$nearDrivers:Lcom/didi/common/model/NearDrivers;

.field final synthetic val$productId:I


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;ILcom/didi/common/model/NearDrivers;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$l:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    iput p2, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$productId:I

    iput-object p3, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$l:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    iget v1, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$productId:I

    iget-object v2, p0, Lcom/didi/car/helper/CarPushHelper$22;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-interface {v0, v1, v2}, Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;->onNearDriversMsgReceived(ILcom/didi/common/model/NearDrivers;)V

    .line 1364
    return-void
.end method
