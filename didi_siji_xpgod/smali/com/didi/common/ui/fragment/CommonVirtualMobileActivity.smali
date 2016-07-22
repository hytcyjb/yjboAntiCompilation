.class public Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CommonVirtualMobileActivity.java"


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private switchVirtualListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

.field private switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private tvVirtualMessage:Lcom/didi/common/richtextview/RichTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$1;-><init>(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchVirtualListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 90
    new-instance v0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$2;-><init>(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->mBackListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->back()V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->finish()V

    .line 106
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->overridePendingTransition(II)V

    .line 107
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/SwitchBar;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    .line 52
    sget-object v0, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchVirtualListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 60
    :goto_1
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->tvVirtualMessage:Lcom/didi/common/richtextview/RichTextView;

    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->tvVirtualMessage:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, v2}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->tvVirtualMessage:Lcom/didi/common/richtextview/RichTextView;

    sget-object v1, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    iget-object v1, v1, Lcom/didi/common/model/CommonVirtualMobile;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    goto :goto_1
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 67
    const v0, 0x7f080305

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b055e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->back()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->overridePendingTransition(II)V

    .line 38
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->setTitleBar()V

    .line 39
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->initViews()V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 45
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->switchbarVirtual:Lcom/didi/common/ui/component/SwitchBar;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 48
    return-void
.end method
