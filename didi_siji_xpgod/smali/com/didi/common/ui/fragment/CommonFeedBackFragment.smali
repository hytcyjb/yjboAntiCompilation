.class public Lcom/didi/common/ui/fragment/CommonFeedBackFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonFeedBackFragment.java"


# instance fields
.field private etFeedback:Landroid/widget/EditText;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field private textWatcher:Landroid/text/TextWatcher;

.field private tvSubmit:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 185
    new-instance v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$4;-><init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->uploadNetLog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 72
    const v0, 0x7f08038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 74
    const v0, 0x7f08038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;

    .line 76
    const v0, 0x7f08038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->saveLog()V

    .line 80
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->tvSubmit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 84
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0b0344

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 86
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 87
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 88
    return-void
.end method

.method private updateLocLog()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, content:Ljava/lang/String;
    const v1, 0x7f0b03e5

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationManager;->feedback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private uploadNetLog()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->updateLocLog()V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonFeedBackFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->etFeedback:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 93
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->setTitleBar()V

    .line 61
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->initViews(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;->setListeners()V

    .line 63
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 219
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 220
    return-void
.end method
