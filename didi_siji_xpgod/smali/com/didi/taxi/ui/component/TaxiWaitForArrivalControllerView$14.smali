.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$14;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onCostDetailReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$14;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$14;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onCostDetailPrepared()V

    .line 839
    return-void
.end method
