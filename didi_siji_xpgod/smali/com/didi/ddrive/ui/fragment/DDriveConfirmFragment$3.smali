.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Lcom/didi/ddrive/listener/DDriveConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDDriveConfirmClicked(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #setter for: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v2, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$102(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)Landroid/view/View;

    .line 128
    const-string v2, "pdjxcalldj_04_ck"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$200(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V

    .line 132
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 133
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V

    .line 162
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, phone:Ljava/lang/String;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->login(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V

    goto :goto_0

    .line 145
    .end local v0           #phone:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v1

    .line 146
    .local v1, selected:Z
    if-nez v1, :cond_2

    .line 147
    const v2, 0x7f0b03dc

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 148
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const v3, 0x7f0b04e8

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 161
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;
    invoke-static {v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$400(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveConfirmManager;->sendOrder()V

    goto :goto_0
.end method
