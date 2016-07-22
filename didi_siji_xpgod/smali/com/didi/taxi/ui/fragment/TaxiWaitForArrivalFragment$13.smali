.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$13;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onEvaulateStarClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaluatingBackClicked()V

    .line 1498
    return-void
.end method
