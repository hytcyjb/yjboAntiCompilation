.class Lcom/didi/car/ui/activity/CarCostDetailActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarCostDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarCostDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarCostDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarCostDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity$1;->this$0:Lcom/didi/car/ui/activity/CarCostDetailActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity$1;->this$0:Lcom/didi/car/ui/activity/CarCostDetailActivity;

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarCostDetailActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 116
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCostDetailActivity$1;->this$0:Lcom/didi/car/ui/activity/CarCostDetailActivity;

    #calls: Lcom/didi/car/ui/activity/CarCostDetailActivity;->doDissentSubmit()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarCostDetailActivity;->access$000(Lcom/didi/car/ui/activity/CarCostDetailActivity;)V

    .line 111
    return-void
.end method
