.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getBtsPayHelper(Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginCheckWXState()V
    .locals 4

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1134
    return-void
.end method

.method public endCheckWXState()V
    .locals 0

    .prologue
    .line 1138
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 1139
    return-void
.end method

.method public onWXAppLowVersionInstalled()V
    .locals 4

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    const v1, 0x7f0b0475

    const v2, 0x7f0b0288

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showOkDialog(Landroid/content/Context;IILcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    .line 1129
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 1
    .parameter "helper"
    .parameter "t"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->callWeixinPay(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    invoke-static {v0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->access$2800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    .line 1123
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 4

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    const v1, 0x7f0b057b

    const v2, 0x7f0b0288

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showOkDialog(Landroid/content/Context;IILcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    .line 1118
    return-void
.end method
