.class public Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;
.super Landroid/app/Activity;
.source "BtsNotifyActivityOfDialogTheme.java"


# static fields
.field private static final PARAM_ORDER_STATUS_INFO:Ljava/lang/String; = "PARAM_ORDER_STATUS_INFO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startMe(Lcom/didi/beatles/notification/Redirect;)V
    .locals 3
    .parameter "redirect"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    const-string v1, "PARAM_ORDER_STATUS_INFO"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 30
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 39
    const-string v4, "PARAM_ORDER_STATUS_INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/notification/Redirect;

    .line 41
    .local v3, redirect:Lcom/didi/beatles/notification/Redirect;
    if-nez v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 109
    .end local v3           #redirect:Lcom/didi/beatles/notification/Redirect;
    :goto_0
    return-void

    .line 46
    .restart local v3       #redirect:Lcom/didi/beatles/notification/Redirect;
    :cond_0
    new-instance v2, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;

    invoke-direct {v2, p0, v3}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;-><init>(Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;Lcom/didi/beatles/notification/Redirect;)V

    .line 97
    .local v2, mDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v4, 0x0

    iget-object v5, v3, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v4, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v4}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 100
    sget-object v4, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v4}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 101
    const v4, 0x7f0b0276

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 102
    const v4, 0x7f0b0132

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 105
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 107
    .end local v0           #dialog:Lcom/didi/common/helper/DialogHelper;
    .end local v2           #mDialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    .end local v3           #redirect:Lcom/didi/beatles/notification/Redirect;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method
