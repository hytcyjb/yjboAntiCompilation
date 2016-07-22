.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showComfirmDialog(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 1990
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeChecked()Z

    move-result v0

    .line 1995
    .local v0, isFree:Z
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const/4 v2, 0x0

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->sendPassenger(ZZ)V
    invoke-static {v1, v2, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;ZZ)V

    .line 1996
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 1997
    return-void
.end method
