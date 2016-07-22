.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;
.super Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;
.source "TaxiWaitForArrivalPayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 1
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;->oprationCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZ)V

    .line 917
    return-void
.end method
