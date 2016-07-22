.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;
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
    .line 3352
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3362
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I

    move-result v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPaySupportCheck(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;I)V

    .line 3357
    return-void
.end method
