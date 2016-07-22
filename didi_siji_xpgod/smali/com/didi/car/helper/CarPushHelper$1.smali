.class final Lcom/didi/car/helper/CarPushHelper$1;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerDriverPositionListener(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$1;->val$oid:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$1;->val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 2
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$1;->val$oid:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$1;->val$l:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    invoke-static {v0, v1, p3}, Lcom/didi/car/helper/CarPushHelper;->onDriverPositionReceived(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;[B)V

    .line 175
    return-void
.end method
