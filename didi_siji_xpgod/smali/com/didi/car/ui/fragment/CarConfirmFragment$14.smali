.class Lcom/didi/car/ui/fragment/CarConfirmFragment$14;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 780
    const-string v1, "carconfirm getorverdraftorder "

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1700(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->productId:I
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1800(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 784
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier;

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryFlier;-><init>(Lcom/didi/frame/business/Business;)V

    .line 785
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1700(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryFlier;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    .end local v0           #recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar;

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryCar;-><init>(Lcom/didi/frame/business/Business;)V

    .line 788
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryCar;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1700(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryCar;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method
