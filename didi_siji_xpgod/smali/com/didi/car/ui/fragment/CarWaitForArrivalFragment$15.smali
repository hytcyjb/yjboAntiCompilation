.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$15;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;


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
    .line 1074
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onMessageReceived(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "recommendType"
    .parameter "recommendMessage"
    .parameter "args"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$15;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCommonMessagePushReceived(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    return-void
.end method
