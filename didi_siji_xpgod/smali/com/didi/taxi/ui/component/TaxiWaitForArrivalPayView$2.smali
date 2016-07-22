.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZ)V

    .line 670
    return-void
.end method
