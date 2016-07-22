.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$21;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onEvaluateStarClicked()V
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
    .line 1563
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$21;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onEvaluatingBackClicked()V

    .line 1568
    return-void
.end method
