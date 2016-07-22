.class Lcom/didi/common/ui/fragment/SetupFragment$6;
.super Ljava/lang/Object;
.source "SetupFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SetupFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SetupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SetupFragment$6;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$6;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 448
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public submit()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$6;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SetupFragment$6;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    #getter for: Lcom/didi/common/ui/fragment/SetupFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SetupFragment;->access$500(Lcom/didi/common/ui/fragment/SetupFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 430
    :cond_0
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotificationUtils;->cancleAllNotification()V

    .line 432
    new-instance v0, Lcom/didi/car/helper/CarNotificationCountHelper;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/SetupFragment$6;->this$0:Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/SetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/didi/car/helper/CarNotificationCountHelper;->resetNotification()V

    .line 433
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->disconnPush()V

    .line 434
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 435
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->reset()V

    .line 436
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 437
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 440
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->clear()V

    .line 442
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getSupportCity(Landroid/content/Context;DD)V

    .line 443
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method
