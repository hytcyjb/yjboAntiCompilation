.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$6;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->init()V
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
    .line 649
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPositionSendAlarm()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 654
    return-void
.end method
