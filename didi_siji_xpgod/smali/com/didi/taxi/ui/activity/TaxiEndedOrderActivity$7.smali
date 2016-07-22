.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiEndedOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    iget-object v0, v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    iget-object v0, v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 383
    :cond_0
    return-void
.end method
