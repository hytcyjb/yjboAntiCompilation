.class final Lcom/didi/car/helper/CarPushHelper$23;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerDriversLocationMessageListener(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$driversLocationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$23;->val$driversLocationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 1
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$23;->val$driversLocationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->onDriversLocationReceived(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;[B)V

    .line 1429
    return-void
.end method
