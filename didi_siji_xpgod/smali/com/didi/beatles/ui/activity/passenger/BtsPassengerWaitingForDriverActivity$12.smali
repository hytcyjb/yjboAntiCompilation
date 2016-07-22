.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForDriverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1170
    check-cast p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->onError(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1199
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onError(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1200
    invoke-virtual {p1}, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1170
    check-cast p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->onFail(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1205
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFail(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1206
    invoke-virtual {p1}, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1170
    check-cast p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->onFinish(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1211
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1212
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 1213
    return-void
.end method

.method public onPre()V
    .locals 4

    .prologue
    .line 1173
    invoke-super {p0}, Lcom/didi/beatles/net/BtsResponseListener;->onPre()V

    .line 1174
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1176
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1170
    check-cast p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->onSuccess(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1180
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 1181
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #setter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;
    invoke-static {v1, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3002(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    .line 1182
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    iget v1, p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->prepayStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget v2, p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->addPollingTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->confirmPaySuccessFromServer(J)V
    invoke-static {v1, v2, v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;J)V

    .line 1195
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v2, p1, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->appid:Ljava/lang/String;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getBtsPayHelper(Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;
    invoke-static {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;

    move-result-object v0

    .line 1189
    .local v0, helper:Lcom/didi/beatles/helper/BtsPayHelper;
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$3000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lcom/didi/beatles/helper/BtsPayHelper;->checkWxSupport(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    goto :goto_0

    .line 1193
    .end local v0           #helper:Lcom/didi/beatles/helper/BtsPayHelper;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;->onError(Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    goto :goto_0
.end method
