.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;
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
    .line 3220
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3237
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 3238
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3239
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V
    invoke-static {v0, v2, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;IIZ)V

    .line 3240
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3230
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 3231
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3232
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V
    invoke-static {v0, v2, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;IIZ)V

    .line 3233
    return-void
.end method

.method public submitOnly()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3224
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3225
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V
    invoke-static {v0, v2, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;IIZ)V

    .line 3226
    return-void
.end method
