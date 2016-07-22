.class final Lcom/didi/car/helper/CarPushHelper$18;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onWxAgentReceived(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

.field final synthetic val$wxAgentResult:Lcom/didi/car/model/CarWxAgent;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;Lcom/didi/car/model/CarWxAgent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$18;->val$l:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$18;->val$wxAgentResult:Lcom/didi/car/model/CarWxAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$18;->val$l:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$18;->val$wxAgentResult:Lcom/didi/car/model/CarWxAgent;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$WxAgentListener;->onWxAgentMsgReceived(Lcom/didi/car/model/CarWxAgent;)V

    .line 1122
    return-void
.end method
