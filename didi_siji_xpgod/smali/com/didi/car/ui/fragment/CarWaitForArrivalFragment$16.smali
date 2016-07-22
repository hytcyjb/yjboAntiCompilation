.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$16;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$PayResultListener;


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
    .line 1083
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResultReceived(Lcom/didi/car/model/CarPayResult;)V
    .locals 1
    .parameter "payResult"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayResultGot(Lcom/didi/car/model/CarPayResult;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;)V

    .line 1088
    return-void
.end method
