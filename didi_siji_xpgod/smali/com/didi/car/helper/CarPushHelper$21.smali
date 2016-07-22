.class final Lcom/didi/car/helper/CarPushHelper$21;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerNearDriversMessageListener(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nearDriversGetListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$21;->val$nearDriversGetListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

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
    .line 1298
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$21;->val$nearDriversGetListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    invoke-static {p1, v0, p3}, Lcom/didi/car/helper/CarPushHelper;->onNearDriversReceived(ILcom/didi/car/helper/CarPushHelper$NearDriversGetListener;[B)V

    .line 1299
    return-void
.end method
