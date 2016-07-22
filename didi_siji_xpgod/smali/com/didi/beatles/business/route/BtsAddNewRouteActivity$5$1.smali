.class Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsAddNewRouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;->this$1:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 311
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 312
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;->this$1:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;

    iget-object v1, v1, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;
    invoke-static {v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$500(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const v1, 0x7f0b00f5

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 315
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v0

    .line 316
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    iget v1, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    .line 318
    new-instance v1, Lcom/didi/beatles/model/event/BtsRouteEvent;

    invoke-direct {v1}, Lcom/didi/beatles/model/event/BtsRouteEvent;-><init>()V

    const-string v2, "BTS_ROUTE_EVENT"

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5$1;->this$1:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;

    iget-object v1, v1, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->finish()V

    .line 324
    .end local v0           #info:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
