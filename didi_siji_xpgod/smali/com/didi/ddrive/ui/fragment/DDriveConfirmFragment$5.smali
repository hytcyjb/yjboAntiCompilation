.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;
.super Lcom/didi/ddrive/ui/component/DialogListener;
.source "DDriveConfirmFragment.java"


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
    .line 266
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/didi/ddrive/ui/component/DialogListener;->cancel()V

    .line 279
    const-string v0, "pdjxcalldj_01_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 269
    const-string v1, "pdjxcalldj_00_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$600(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    new-instance v0, Lcom/didi/frame/recovery/RecoveryDDrive;

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryDDrive;-><init>(Lcom/didi/frame/business/Business;)V

    .line 272
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryDDrive;
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$600(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryDDrive;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    .end local v0           #recovery:Lcom/didi/frame/recovery/RecoveryDDrive;
    :cond_0
    return-void
.end method
