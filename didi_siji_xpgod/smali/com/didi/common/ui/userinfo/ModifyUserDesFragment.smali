.class public Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "ModifyUserDesFragment.java"


# static fields
.field private static final SIGN_MAX_LENGTH:I = 0x28


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mSignEdit:Landroid/widget/EditText;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private mUserSign:Ljava/lang/String;

.field private mWatcherView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$2;-><init>(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;-><init>(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mWatcherView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->cancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 163
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 164
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "usersign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 70
    const v1, 0x7f08008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 71
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v2, 0x7f020170

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v2, 0x7f0b0510

    invoke-virtual {v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 73
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v2, 0x7f0b0180

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v2, 0x7f07002f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    .line 76
    const v1, 0x7f08039c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mWatcherView:Landroid/widget/TextView;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, curLength:I
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mWatcherView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v1, 0x7f08039b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    .line 84
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 86
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$1;-><init>(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->cancel()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 56
    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->initData()V

    .line 58
    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->initViews(Landroid/view/View;)V

    .line 59
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 151
    return-void
.end method
