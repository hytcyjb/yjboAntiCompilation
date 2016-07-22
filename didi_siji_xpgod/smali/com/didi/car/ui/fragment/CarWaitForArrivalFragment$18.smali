.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$18;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$WxAgentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWxAgentMsgReceived(Lcom/didi/car/model/CarWxAgent;)V
    .locals 1
    .parameter "wxAgent"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$18;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onWxAgentMsgPushReceived(Lcom/didi/car/model/CarWxAgent;)V

    .line 1105
    return-void
.end method
