.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsModifyRouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->submit()V
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
.field final synthetic this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3$1;->this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 168
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 169
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const v1, 0x7f0b00fe

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 171
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3$1;->this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;

    iget-object v1, v1, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->finish()V

    .line 173
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v0

    .line 174
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    iget v1, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    .line 176
    new-instance v1, Lcom/didi/beatles/model/event/BtsRouteEvent;

    invoke-direct {v1}, Lcom/didi/beatles/model/event/BtsRouteEvent;-><init>()V

    const-string v2, "BTS_ROUTE_EVENT"

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .end local v0           #info:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
