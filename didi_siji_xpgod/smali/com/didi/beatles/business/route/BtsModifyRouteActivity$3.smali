.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsModifyRouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->showDelRouteComfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

.field final synthetic val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;Lcom/didi/common/helper/DialogHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    iput-object p2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 187
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->val$mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 188
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 161
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 162
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    new-instance v1, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3$1;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->delRoute(Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 182
    return-void
.end method
