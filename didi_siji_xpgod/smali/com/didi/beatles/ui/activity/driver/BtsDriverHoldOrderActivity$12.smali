.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
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
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1211
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1212
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, errmsg:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, -0x1

    .line 1214
    .local v1, errno:I
    :goto_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetrySubmitComment(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;I)V

    .line 1215
    return-void

    .line 1212
    .end local v0           #errmsg:Ljava/lang/String;
    .end local v1           #errno:I
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    goto :goto_0

    .line 1213
    .restart local v0       #errmsg:Ljava/lang/String;
    :cond_1
    iget v1, p1, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    goto :goto_1
.end method

.method public onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1219
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1220
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, errmsg:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, -0x1

    .line 1222
    .local v1, errno:I
    :goto_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetrySubmitComment(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;I)V

    .line 1223
    return-void

    .line 1220
    .end local v0           #errmsg:Ljava/lang/String;
    .end local v1           #errno:I
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    goto :goto_0

    .line 1221
    .restart local v0       #errmsg:Ljava/lang/String;
    :cond_1
    iget v1, p1, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    goto :goto_1
.end method

.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1227
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1228
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 1229
    return-void
.end method

.method public onPre()V
    .locals 4

    .prologue
    .line 1194
    invoke-super {p0}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 1195
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1196
    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1200
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const v0, 0x7f0b0010

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 1203
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const/4 v1, 0x1

    #setter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2302(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Z)Z

    .line 1204
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 1207
    :cond_0
    return-void
.end method
