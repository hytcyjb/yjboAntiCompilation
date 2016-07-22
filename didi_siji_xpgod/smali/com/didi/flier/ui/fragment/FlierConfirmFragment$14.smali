.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 779
    const-string v1, "carconfirm getorverdraftorder "

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->productId:I
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1800(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 783
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier;

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryFlier;-><init>(Lcom/didi/frame/business/Business;)V

    .line 784
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryFlier;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    .end local v0           #recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar;

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryCar;-><init>(Lcom/didi/frame/business/Business;)V

    .line 787
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryCar;
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryCar;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method
