.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
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
    .line 3369
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3379
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$3000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3374
    return-void
.end method
