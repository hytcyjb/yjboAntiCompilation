.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;
.super Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;
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
    .line 3067
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 3071
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    .line 3072
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarFirstTipDialogHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarFirstTipDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dismiss()V

    .line 3075
    :cond_0
    return-void
.end method
