.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;
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
    .line 3248
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3259
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3253
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayResultCheckAlarm()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3254
    return-void
.end method