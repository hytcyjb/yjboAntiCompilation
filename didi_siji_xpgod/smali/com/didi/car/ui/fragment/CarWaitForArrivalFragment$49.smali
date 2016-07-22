.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForArrivalFragment.java"


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
    .line 3266
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3902(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayParams;)Lcom/didi/car/model/CarPayParams;

    .line 3277
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3278
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3271
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayParamsGet()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3272
    return-void
.end method
