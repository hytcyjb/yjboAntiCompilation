.class public Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "ModifyJobInfoFragment.java"


# static fields
.field public static final COMPANY_JOB_MAX_NAME:I = 0xf


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mCompany:Ljava/lang/String;

.field private mCompanyEdit:Landroid/widget/EditText;

.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mJob:Ljava/lang/String;

.field private mJobEdit:Landroid/widget/EditText;

.field private mParentActivity:Landroid/app/Activity;

.field private mRootView:Landroid/view/View;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$1;-><init>(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;-><init>(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompanyEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJobEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompany:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJob:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 150
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 151
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "corp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompany:Ljava/lang/String;

    .line 65
    const-string v1, "employ"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJob:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 70
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0265

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b03cb

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0180

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightTextColor(I)V

    .line 75
    const v0, 0x7f08039e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompanyEdit:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompanyEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompanyEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompany:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 78
    const v0, 0x7f0803a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJobEdit:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJobEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJobEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJob:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;

    .line 51
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->cancel()V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->initData()V

    .line 57
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->initViews(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 138
    return-void
.end method
