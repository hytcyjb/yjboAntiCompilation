.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsPassengerWaitingForDriverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

.field final synthetic val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsHongBao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;->val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1461
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 1462
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 1463
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 1454
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 1455
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 1456
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;->val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->share:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->share(Landroid/content/Context;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V

    .line 1457
    return-void
.end method
