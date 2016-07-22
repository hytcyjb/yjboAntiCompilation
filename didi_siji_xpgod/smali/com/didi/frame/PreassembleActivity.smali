.class public Lcom/didi/frame/PreassembleActivity;
.super Landroid/app/Activity;
.source "PreassembleActivity.java"


# instance fields
.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private promptiDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/didi/frame/PreassembleActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/PreassembleActivity$1;-><init>(Lcom/didi/frame/PreassembleActivity;)V

    iput-object v0, p0, Lcom/didi/frame/PreassembleActivity;->promptiDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/PreassembleActivity;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method private showPromptDialog()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 35
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0493

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0490

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 37
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0491

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0492

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/PreassembleActivity;->promptiDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 40
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCheckboxVisibility(Z)V

    .line 41
    iget-object v0, p0, Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 26
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0}, Lcom/didi/frame/PreassembleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/didi/frame/PreassembleActivity;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-direct {p0}, Lcom/didi/frame/PreassembleActivity;->showPromptDialog()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 66
    return-void
.end method
