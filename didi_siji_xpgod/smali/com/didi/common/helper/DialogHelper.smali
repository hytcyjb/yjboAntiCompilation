.class public Lcom/didi/common/helper/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    }
.end annotation


# instance fields
.field private dialog:Lcom/didi/common/ui/component/CommonDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 25
    iput-object p1, p0, Lcom/didi/common/helper/DialogHelper;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/helper/DialogHelper;->setCheckboxVisibility(Z)V

    .line 28
    return-void
.end method

.method public static isLoadingDialogShown()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/didi/common/ui/component/CommonDialog;->isLoading()Z

    move-result v0

    return v0
.end method

.method public static loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "content"
    .parameter "isCanCancel"
    .parameter "onCancelListener"

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/ui/component/CommonDialog;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeLoadingDialog()V
    .locals 1

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/didi/common/ui/component/CommonDialog;->removeLoadingDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->cancel()V

    .line 160
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 132
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V
    .locals 1
    .parameter "buttonType"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 69
    return-void
.end method

.method public setCancelBtnText(I)V
    .locals 2
    .parameter "text"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setCancelBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setCancelable(Z)V

    .line 128
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 140
    return-void
.end method

.method public setCheckboxVisibility(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setCheckboxVisibility(Z)V

    .line 53
    return-void
.end method

.method public setCloseDialogVisiblity(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setCloseDialogVisiblity(Z)V

    .line 144
    return-void
.end method

.method public setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V
    .locals 1
    .parameter "iconType"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 48
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setIconVisible(Z)V

    .line 154
    return-void
.end method

.method public setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 74
    return-void
.end method

.method public setSubmitBtnText(I)V
    .locals 2
    .parameter "text"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setSubmitBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setThreeBtnText(III)V
    .locals 4
    .parameter "bntText1"
    .parameter "bntText2"
    .parameter "btnText3"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/ui/component/CommonDialog;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "bntText1"
    .parameter "bntText2"
    .parameter "btnText3"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/component/CommonDialog;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setTitleContent(II)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "contentArray"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 150
    :cond_0
    return-void
.end method

.method public updatePinkIconShow(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/common/helper/DialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->updatePinkIconShow(Ljava/lang/String;)V

    .line 64
    return-void
.end method
