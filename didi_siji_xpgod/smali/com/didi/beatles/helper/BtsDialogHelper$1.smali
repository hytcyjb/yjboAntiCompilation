.class final Lcom/didi/beatles/helper/BtsDialogHelper$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsDialogHelper;->showOkDialog(Landroid/content/Context;IILcom/didi/common/helper/DialogHelper$DialogHelperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submitOnly()V

    .line 156
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->access$000()Lcom/didi/common/ui/component/CommonDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->access$000()Lcom/didi/common/ui/component/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->access$000()Lcom/didi/common/ui/component/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/beatles/helper/BtsDialogHelper;->access$002(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog;

    .line 161
    :cond_1
    return-void
.end method
