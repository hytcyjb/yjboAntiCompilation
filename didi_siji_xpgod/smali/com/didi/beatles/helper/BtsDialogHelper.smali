.class public Lcom/didi/beatles/helper/BtsDialogHelper;
.super Ljava/lang/Object;
.source "BtsDialogHelper.java"


# static fields
.field private static dialog:Lcom/didi/common/ui/component/CommonDialog;

.field private static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/didi/common/ui/component/CommonDialog;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    sput-object p0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    return-object p0
.end method

.method public static closeConfirm()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 107
    :cond_1
    return-void
.end method

.method public static isContextVisiable()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "content"
    .parameter "isCanCancel"
    .parameter "onCancelListener"

    .prologue
    .line 110
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    .line 112
    :cond_0
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 116
    if-eqz p0, :cond_1

    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 119
    :cond_1
    return-void
.end method

.method public static removeLoadingDialog()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->progressDialog:Landroid/app/ProgressDialog;

    .line 127
    :cond_1
    return-void
.end method

.method public static showConfirm(Landroid/content/Context;IIILcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;
    .locals 3
    .parameter "context"
    .parameter "titleContent"
    .parameter "submitTxt"
    .parameter "cancleTxt"
    .parameter "listener"

    .prologue
    .line 73
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 78
    :cond_1
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 80
    :cond_2
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setCheckboxVisibility(Z)V

    .line 81
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    const-string v1, ""

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 83
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p4}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 86
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 87
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    return-object v0
.end method

.method public static showConfirm(Landroid/content/Context;Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;
    .locals 3
    .parameter "context"
    .parameter "iconUrl"
    .parameter "iconTyp"
    .parameter "title"
    .parameter "titleContent"
    .parameter "alertContent"
    .parameter "submitTxt"
    .parameter "cancleTxt"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 51
    :cond_1
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 53
    :cond_2
    if-eqz p2, :cond_4

    .line 54
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setIconVisible(Z)V

    .line 55
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/CommonDialog;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 59
    :goto_0
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setCheckboxVisibility(Z)V

    .line 60
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p3, p4}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 62
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p6}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p7}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p8}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 65
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/CommonDialog;->updatePinkIconShow(Ljava/lang/String;)V

    .line 68
    :cond_3
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    return-object v0

    .line 57
    :cond_4
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setIconVisible(Z)V

    goto :goto_0
.end method

.method public static showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;
    .locals 2
    .parameter "context"
    .parameter "titleContent"
    .parameter "submitTxt"
    .parameter "cancleTxt"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-object v0

    .line 25
    :cond_0
    sget-object v1, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v1, :cond_2

    .line 26
    sget-object v1, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 28
    :cond_1
    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 30
    :cond_2
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_3

    .line 31
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 32
    :cond_3
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setCheckboxVisibility(Z)V

    .line 33
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 35
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p3}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p4}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 38
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 39
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0
.end method

.method public static showOkDialog(Landroid/content/Context;IILcom/didi/common/helper/DialogHelper$DialogHelperListener;)V
    .locals 3
    .parameter "context"
    .parameter "titleContentResId"
    .parameter "confirmTxtResId"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 145
    :cond_0
    sput-object v2, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 147
    :cond_1
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_2

    .line 148
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 149
    :cond_2
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-static {p2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 151
    if-nez p3, :cond_3

    .line 152
    new-instance p3, Lcom/didi/beatles/helper/BtsDialogHelper$1;

    .end local p3
    invoke-direct {p3}, Lcom/didi/beatles/helper/BtsDialogHelper$1;-><init>()V

    .line 164
    .restart local p3
    :cond_3
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p3}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 165
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 166
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 167
    return-void
.end method

.method public static showOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V
    .locals 2
    .parameter "context"
    .parameter "titleContent"
    .parameter "confirmTxt"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 182
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 185
    :cond_0
    sput-object v1, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 187
    :cond_1
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    .line 189
    :cond_2
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 191
    if-nez p3, :cond_3

    .line 192
    new-instance p3, Lcom/didi/beatles/helper/BtsDialogHelper$2;

    .end local p3
    invoke-direct {p3}, Lcom/didi/beatles/helper/BtsDialogHelper$2;-><init>()V

    .line 204
    .restart local p3
    :cond_3
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0, p3}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 205
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 206
    sget-object v0, Lcom/didi/beatles/helper/BtsDialogHelper;->dialog:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    .line 207
    return-void
.end method
