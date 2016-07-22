.class final Lcom/didi/car/helper/CarPushHelper$17;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerWxAgentMessageListener(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wxAgentListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$17;->val$wxAgentListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

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
    .line 1093
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$17;->val$wxAgentListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->onWxAgentReceived(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;[B)V

    .line 1094
    return-void
.end method
