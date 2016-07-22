.class Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;
.super Ljava/lang/Object;
.source "DDriveResendFragment.java"

# interfaces
.implements Lcom/didi/ddrive/listener/DDriveConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDDriveConfirmClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b04bd

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 75
    const-string v0, "pdjxrecalldj_01_ck"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveConfirmManager;->sendOrder()V

    .line 77
    return-void
.end method
