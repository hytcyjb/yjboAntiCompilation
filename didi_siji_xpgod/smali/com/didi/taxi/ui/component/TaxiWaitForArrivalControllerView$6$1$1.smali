.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1$1;->this$2:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1$1;->this$2:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->invalidate()V

    .line 607
    return-void
.end method
