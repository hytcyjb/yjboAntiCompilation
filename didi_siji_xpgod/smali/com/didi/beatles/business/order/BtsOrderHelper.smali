.class public Lcom/didi/beatles/business/order/BtsOrderHelper;
.super Ljava/lang/Object;
.source "BtsOrderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDriverAuthDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 13
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    const v2, 0x7f0b0080

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 16
    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 17
    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 18
    new-instance v1, Lcom/didi/beatles/business/order/BtsOrderHelper$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/order/BtsOrderHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 33
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 34
    return-void
.end method
