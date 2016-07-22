.class final Lcom/didi/car/helper/CarPushHelper$15;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerPayResultMessageListener(Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$15;->val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

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
    .line 1030
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$15;->val$l:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->onPayResultReceived(Lcom/didi/car/helper/CarPushHelper$PayResultListener;[B)V

    .line 1031
    return-void
.end method
