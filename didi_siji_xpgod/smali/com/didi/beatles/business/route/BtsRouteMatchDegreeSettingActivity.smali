.class public Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsRouteMatchDegreeSettingActivity.java"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private choiceListener:Landroid/view/View$OnClickListener;

.field private mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

.field private mChoice1Layout:Landroid/view/View;

.field private mChoice2Layout:Landroid/view/View;

.field private mChoice3Layout:Landroid/view/View;

.field private mImage1:Landroid/widget/ImageView;

.field private mImage2:Landroid/widget/ImageView;

.field private mImage3:Landroid/widget/ImageView;

.field private mLoadingLayout:Landroid/view/View;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 166
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$2;-><init>(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->choiceListener:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$3;-><init>(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V

    return-void
.end method

.method private bindUI()V
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mLoadingLayout:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mLoadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice1Layout:Landroid/view/View;

    .line 107
    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage1:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice1Layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->choiceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice2Layout:Landroid/view/View;

    .line 111
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage2:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice2Layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->choiceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice3Layout:Landroid/view/View;

    .line 115
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage3:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mChoice3Layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->choiceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    iget v0, v0, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V

    .line 119
    return-void
.end method

.method private parseIntent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    move v1, v2

    .line 91
    :goto_0
    return v1

    .line 83
    :cond_0
    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/role/BtsRoleSetting;

    iput-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    .line 85
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    if-nez v1, :cond_1

    .line 86
    const-string v1, "error"

    const-string v3, "route is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 88
    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setChoice(IZ)V
    .locals 5
    .parameter "choice"
    .parameter "save"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f020112

    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 164
    :goto_1
    return-void

    .line 129
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :cond_2
    if-ne p1, v4, :cond_0

    .line 132
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    iget v0, v1, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    .line 140
    .local v0, lastState:I
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    iput p1, v1, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    .line 142
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 143
    const v1, 0x7f0b009d

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 146
    const-string v1, "pbdxpushset04_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;

    new-instance v2, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;-><init>(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;I)V

    invoke-static {v1, v2}, Lcom/didi/beatles/net/BtsRequest;->saveRoleSetting(Lcom/didi/beatles/model/role/BtsRoleSetting;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_1
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 95
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 97
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0109

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 100
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    .locals 4
    .parameter "activity"
    .parameter "setting"

    .prologue
    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 48
    const-string v2, "error"

    const-string v3, "route is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v2, "setting"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    const/16 v2, 0x6d

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setTitlebar()V

    .line 73
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->bindUI()V

    goto :goto_0
.end method
