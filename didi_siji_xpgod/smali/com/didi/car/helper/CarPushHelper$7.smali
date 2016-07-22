.class final Lcom/didi/car/helper/CarPushHelper$7;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerOrderRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$7;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

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
    .line 541
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$7;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onOrderRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$200(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V

    .line 542
    return-void
.end method
