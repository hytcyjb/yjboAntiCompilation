.class final Lcom/didi/car/helper/CarPushHelper$3;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerOrderStatusListener(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$3;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;

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
    .line 312
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$3;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onOrderStatusMessageReceived(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$000(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V

    .line 313
    return-void
.end method
