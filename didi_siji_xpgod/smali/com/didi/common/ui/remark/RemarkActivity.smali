.class public Lcom/didi/common/ui/remark/RemarkActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "RemarkActivity.java"


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
    .line 39
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->tagMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/didi/common/ui/remark/RemarkActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkActivity$1;-><init>(Lcom/didi/common/ui/remark/RemarkActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mWatcher:Landroid/text/TextWatcher;

    .line 96
    new-instance v0, Lcom/didi/common/ui/remark/RemarkActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkActivity$2;-><init>(Lcom/didi/common/ui/remark/RemarkActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnClearListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/didi/common/ui/remark/RemarkActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkActivity$3;-><init>(Lcom/didi/common/ui/remark/RemarkActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/didi/common/ui/remark/RemarkActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkActivity$4;-><init>(Lcom/didi/common/ui/remark/RemarkActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnFinishClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/remark/RemarkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->updateButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/remark/RemarkActivity;)Lcom/didi/common/ui/component/SearchBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/remark/RemarkActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->isAddFromTag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/didi/common/ui/remark/RemarkActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->isAddFromTag:Z

    return p1
.end method

.method static synthetic access$301(Lcom/didi/common/ui/remark/RemarkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
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
    .line 194
    new-instance v0, Lcom/didi/common/ui/remark/RemarkLabel;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/remark/RemarkLabel;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, label:Lcom/didi/common/ui/remark/RemarkLabel;
    invoke-virtual {v0, p1}, Lcom/didi/common/ui/remark/RemarkLabel;->setText(Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/didi/common/ui/remark/RemarkActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/remark/RemarkActivity$5;-><init>(Lcom/didi/common/ui/remark/RemarkActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/remark/RemarkLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/remark/RemarkLabel;->reLayout(I)V

    .line 209
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mGridLayout:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/ui/remark/RemarkLabel;->hidePlusImage()V

    goto :goto_0
.end method

.method private initGrid()V
    .locals 8

    .prologue
    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, tags:[Ljava/lang/String;
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getTaxiLabels()[Ljava/lang/String;

    move-result-object v4

    .line 166
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v6}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v5

    check-cast v5, Lcom/didi/taxi/model/TaxiOrder;

    .line 168
    .local v5, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v6, v7, :cond_0

    .line 169
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getTaxiPreLabels()[Ljava/lang/String;

    move-result-object v4

    .line 170
    if-nez v4, :cond_0

    .line 171
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getTaxiLabels()[Ljava/lang/String;

    move-result-object v4

    .line 174
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemarkActivity TAGS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preTags:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 181
    .end local v5           #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    :cond_1
    :goto_0
    if-eqz v4, :cond_5

    array-length v6, v4

    if-lez v6, :cond_5

    .line 182
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 183
    .local v3, tag:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/didi/common/ui/remark/RemarkActivity;->addTag(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_3
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getCarLabels()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 185
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_4
    array-length v6, v4

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 186
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/didi/common/ui/remark/RemarkActivity;->addTag(Ljava/lang/String;)V

    .line 189
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_5
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->updateButtons()V

    .line 190
    return-void
.end method

.method private initInputState()V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/didi/common/util/Constant;->isColseRemark:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setEditEnable(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method private initSearchBar()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

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

    .line 149
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->hideClear()V

    .line 150
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->showCount()V

    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const v1, 0x7f0b0276

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setSearchButtonText(I)V

    .line 152
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    const v1, 0x7f0b04ba

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputHint(I)V

    .line 153
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnFinishClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setInputText(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    iget-object v1, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mOnClearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SearchBar;->setOnClearClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private updateButtons()V
    .locals 6

    .prologue
    .line 225
    iget-object v5, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v5}, Lcom/didi/common/ui/component/SearchBar;->getInputText()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/ui/remark/RemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 227
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 228
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

    .line 229
    .local v3, tag:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/common/ui/remark/RemarkActivity;->tagMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #label:Lcom/didi/common/ui/remark/RemarkLabel;
    check-cast v2, Lcom/didi/common/ui/remark/RemarkLabel;

    .line 230
    .restart local v2       #label:Lcom/didi/common/ui/remark/RemarkLabel;
    if-eqz v2, :cond_0

    .line 231
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

    .line 234
    .end local v3           #tag:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->getInput()Lx/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/InputMethodUtil;->closeInputMethod(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity;->mSearchBar:Lcom/didi/common/ui/component/SearchBar;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SearchBar;->getInputText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->setRemark(Ljava/lang/String;)V

    .line 220
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 221
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/remark/RemarkActivity;->overridePendingTransition(II)V

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/remark/RemarkActivity;->overridePendingTransition(II)V

    .line 130
    const v0, 0x7f0300ea

    invoke-super {p0, v0}, Lcom/didi/common/base/BaseActivity;->setContentView(I)V

    .line 131
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->initInputState()V

    .line 132
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->initGrid()V

    .line 133
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->initSearchBar()V

    .line 134
    invoke-direct {p0}, Lcom/didi/common/ui/remark/RemarkActivity;->setListeners()V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "f_remark_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 106
    return-void
.end method
