.class public Lcom/didi/car/helper/CarFirstTipDialogHelper;
.super Ljava/lang/Object;
.source "CarFirstTipDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;
    }
.end annotation


# instance fields
.field private dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    .line 23
    iput-object p1, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-direct {v0, p1}, Lcom/didi/car/ui/component/CarFirstTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    .line 25
    return-void
.end method

.method public static isLoadingDialogShown()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/didi/car/ui/component/CarFirstTipDialog;->isLoading()Z

    move-result v0

    return v0
.end method

.method public static loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "content"
    .parameter "isCanCancel"
    .parameter "onCancelListener"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/didi/car/ui/component/CarFirstTipDialog;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static removeLoadingDialog()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/didi/car/ui/component/CarFirstTipDialog;->removeLoadingDialog()V

    .line 55
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->cancel()V

    .line 81
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->dismiss()V

    .line 67
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setCancelable(Z)V

    .line 63
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setListener(Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;)V

    .line 35
    return-void
.end method

.method public setSubmitBtnText(I)V
    .locals 2
    .parameter "text"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setSubmitBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/didi/car/helper/CarFirstTipDialogHelper;->dialog:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->show()V

    .line 77
    :cond_0
    return-void
.end method
