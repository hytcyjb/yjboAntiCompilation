.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$45;
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
    .line 3199
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$45;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$45;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3204
    return-void
.end method
