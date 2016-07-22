.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsModifyRouteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6$1;->this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 291
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 292
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const v0, 0x7f0b0112

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 294
    new-instance v0, Lcom/didi/beatles/model/event/BtsRouteEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsRouteEvent;-><init>()V

    const-string v1, "BTS_ROUTE_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6$1;->this$1:Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->finish()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
