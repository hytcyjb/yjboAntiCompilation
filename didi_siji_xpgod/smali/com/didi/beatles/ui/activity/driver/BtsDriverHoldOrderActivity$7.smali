.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderOverLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

.field final synthetic val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsHongBao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;->val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 838
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 839
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 840
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 831
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 832
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 833
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$1000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;->val$btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->share:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->share(Landroid/content/Context;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V

    .line 834
    return-void
.end method
