.class public Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "BtsRemarkActivity.java"


# static fields
.field private static final MAX_INPUT_LENGTH:I = 0x14


# instance fields
.field private isAddFromTag:Z

.field private mGridLayout:Landroid/support/v7/widget/GridLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0804fd
    .end annotation
.end field

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOnClearListener:Landroid/view/View$OnClickListener;

.field private mOnFinishClickListener:Landroid/view/View$OnClickListener;

.field private mSearchBar:Lcom/didi/common/ui/component/SearchBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0804fc
    .end annotation
.end field

.field private mWatcher:Landroid/text/TextWatcher;

.field private remarkStr:Ljava/lang/String;

.field private tagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/ui/remark/RemarkLabel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->tagMap:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->remarkStr:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mWatcher:Landroid/text/TextWatcher;

    .line 86
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$2;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnClearListener:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnFinishClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->updateButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Lcom/didi/common/ui/component/SearchBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->isAddFromTag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->isAddFromTag:Z

    return p1
.end method

.method static synthetic access$301(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private addTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/didi/common/ui/remark/RemarkLabel;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkLabel;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, label:Lcom/didi/common/ui/remark/RemarkLabel;
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/remark/RemarkLabel;->setText(Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$5;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/remark/RemarkLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/remark/RemarkLabel;->reLayout(I)V

    .line 188
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mGridLayout:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 194
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/ui/remark/RemarkLabel;->hidePlusImage()V

    goto :goto_0
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "remark"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->remarkStr:Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method private initGrid()V
    .locals 6

    .prologue
    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, tags:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getBtsRemarkLabel()[Ljava/lang/String;

    move-result-object v4

    .line 159
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 160
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 161
    .local v3, tag:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->addTag(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v3           #tag:Ljava/lang/String;
    :cond_0
    array-length v5, v4

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 164
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->addTag(Ljava/lang/String;)V

    .line 167
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->updateButtons()V

    .line 168
    return-void
.end method

.method private initInputState()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/didi/common/util/Constant;->isColseRemark:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setEditEnable(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method private initSearchBar()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lx/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->hideClear()V

    .line 144
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->showCount()V

    .line 145
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const v1, 0x7f0b0276

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setSearchButtonText(I)V

    .line 146
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputHint(I)V

    .line 147
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnFinishClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->remarkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputText(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mOnClearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnClearClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private updateButtons()V
    .locals 6

    .prologue
    .line 207
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v5}, Lcom/didi/common/ui/component/SearchBar;->getInputText()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 209
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 210
    .local v2, label:Lcom/didi/common/ui/remark/RemarkLabel;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, tag:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #label:Lcom/didi/common/ui/remark/RemarkLabel;
    check-cast v2, Lcom/didi/common/ui/remark/RemarkLabel;

    .line 212
    .restart local v2       #label:Lcom/didi/common/ui/remark/RemarkLabel;
    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v2, v5}, Lcom/didi/common/ui/remark/RemarkLabel;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 216
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/InputMethodUtil;->closeInputMethod(Landroid/view/View;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bts_remark_content"

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/SearchBar;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 203
    const v1, 0x7f040019

    const v2, 0x7f04001a

    invoke-virtual {p0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->overridePendingTransition(II)V

    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->overridePendingTransition(II)V

    .line 120
    const v0, 0x7f0300ea

    invoke-super {p0, v0}, Lcom/didi/common/base/BaseActivity;->setContentView(I)V

    .line 121
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->getIntentData()V

    .line 122
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->initInputState()V

    .line 123
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->initGrid()V

    .line 124
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->initSearchBar()V

    .line 125
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->setListeners()V

    .line 126
    const-string v0, "f_remark_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 96
    return-void
.end method
