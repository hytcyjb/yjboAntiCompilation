.class public Lcom/didi/common/ui/userinfo/SelectTradeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "SelectTradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo$Trade;",
            ">;"
        }
    .end annotation
.end field

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBusinessList:Landroid/widget/ListView;

.field private mCurrentTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

.field private mParentActivity:Landroid/app/Activity;

.field private mRootView:Landroid/view/View;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private mTradeList:Lcom/didi/common/ui/userinfo/TradeList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$3;-><init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Lcom/didi/common/ui/userinfo/TradeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Lcom/didi/common/ui/userinfo/TradeList;)Lcom/didi/common/ui/userinfo/TradeList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBusinessList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->cancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mCurrentTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    return-object v0
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 152
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "trade"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mCurrentTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .line 77
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 80
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 81
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 83
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideBtnRight()V

    .line 84
    const v0, 0x7f0803a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBusinessList:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBusinessList:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$1;-><init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030049

    const v4, 0x7f0801b3

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/TradeList;->getTradeList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$TradeAdapter;-><init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 100
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mBusinessList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment$2;-><init>(Lcom/didi/common/ui/userinfo/SelectTradeFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getTradeList(Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentTradePosition()I
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/TradeList;->size()I

    move-result v1

    .line 127
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 128
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mCurrentTrade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    iget v2, v2, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mTradeList:Lcom/didi/common/ui/userinfo/TradeList;

    invoke-virtual {v3, v0}, Lcom/didi/common/ui/userinfo/TradeList;->get(I)Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v3

    iget v3, v3, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    if-ne v2, v3, :cond_0

    .line 132
    .end local v0           #i:I
    :goto_1
    return v0

    .line 127
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mParentActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->cancel()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const v0, 0x7f0300aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mRootView:Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->initData()V

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->initViews(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 158
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 159
    return-void
.end method
