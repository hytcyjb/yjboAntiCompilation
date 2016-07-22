.class public Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "ModifyNickNameFragment.java"


# static fields
.field public static final NICK_NAME_LENGTH:I = 0xa


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mNickName:Ljava/lang/String;

.field private mNickNameEdit:Landroid/widget/EditText;

.field private mParentActivity:Landroid/app/Activity;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$1;-><init>(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;-><init>(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickName:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 59
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0419

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0180

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    .line 64
    const v0, 0x7f0803a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->cancel()V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v1, 0x7f0300a9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->initData()V

    .line 47
    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->initViews(Landroid/view/View;)V

    .line 48
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 73
    return-void
.end method
