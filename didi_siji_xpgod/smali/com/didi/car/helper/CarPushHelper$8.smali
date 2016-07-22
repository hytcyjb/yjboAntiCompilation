.class final Lcom/didi/car/helper/CarPushHelper$8;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerOrderNewRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$8;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

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
    .line 552
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$8;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onOrderNewRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$300(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V

    .line 553
    return-void
.end method
