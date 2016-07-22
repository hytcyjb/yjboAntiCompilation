.class final Lcom/didi/car/helper/CarPushHelper$24;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onDriversLocationReceived(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

.field final synthetic val$nearDrivers:Lcom/didi/common/model/NearDrivers;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;Lcom/didi/common/model/NearDrivers;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$24;->val$l:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$24;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$24;->val$l:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$24;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;->onDriversLocationReceived(Lcom/didi/common/model/NearDrivers;)V

    .line 1475
    return-void
.end method
