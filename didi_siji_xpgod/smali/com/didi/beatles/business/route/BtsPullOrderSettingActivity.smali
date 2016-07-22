.class public Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPullOrderSettingActivity.java"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

.field private mLoadingLayout:Landroid/view/View;

.field private mMatchDegreeDetail:Landroid/widget/TextView;

.field private mMatchDegreeLayout:Landroid/view/View;

.field private mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

.field private matchDegreeListener:Landroid/view/View$OnClickListener;

.field private net_error_layout:Landroid/view/View;

.field private newOrderCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

.field private reloadListener:Landroid/view/View$OnClickListener;

.field private weekendCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 42
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleSetting;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleSetting;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    .line 125
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$1;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->reloadListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->newOrderCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 161
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$3;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->weekendCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 182
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->matchDegreeListener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$5;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->getResponseListener()Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->resultSetProcess(Lcom/didi/beatles/model/role/BtsRoleSetting;)V

    return-void
.end method

.method private bindUI()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 91
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mLoadingLayout:Landroid/view/View;

    .line 92
    const v1, 0x7f080142

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SwitchBar;

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    .line 99
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->newOrderCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 100
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 102
    const v1, 0x7f080177

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SwitchBar;

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    .line 103
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->weekendCheckboxListener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SwitchBar;->setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V

    .line 104
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 106
    const v1, 0x7f08017d

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeDetail:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f08017a

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeLayout:Landroid/view/View;

    .line 108
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->matchDegreeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {v1, v4}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 112
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 117
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    invoke-static {v1, v4}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 119
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/SwitchBar;->setXprefValue(II)V

    .line 121
    return-void
.end method

.method private fillUI(Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mNewOrderCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget-boolean v1, p1, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mWeekendDescCheckBox:Lcom/didi/common/ui/component/SwitchBar;

    iget-boolean v1, p1, Lcom/didi/beatles/model/role/BtsRoleSetting;->vacation_push:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 233
    iget v0, p1, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeDetail:Landroid/widget/TextView;

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p1, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeDetail:Landroid/widget/TextView;

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p1, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeDetail:Landroid/widget/TextView;

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mMatchDegreeDetail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getResponseListener()Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRoleSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V

    .line 259
    .local v0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/role/BtsRoleSetting;>;"
    return-object v0
.end method

.method private loadSettingData()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->getResponseListener()Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->loadRoleSetting(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 206
    return-void
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    .locals 2
    .parameter "t"

    .prologue
    const/16 v1, 0x8

    .line 209
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRoleSetting;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRoleSetting;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->net_error_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->fillUI(Lcom/didi/beatles/model/role/BtsRoleSetting;)V

    .line 227
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    goto :goto_0
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 82
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 84
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0110

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 88
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x6c

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->setTitlebar()V

    .line 61
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->bindUI()V

    .line 63
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->loadSettingData()V

    .line 67
    const-string v0, "pbdxpushset01_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 74
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsRouteSettingEvent;)V
    .locals 0
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ROUTE_SETTING_EVENT"
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->loadSettingData()V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 248
    return-void
.end method
