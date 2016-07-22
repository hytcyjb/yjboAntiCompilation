.class public Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsAddNewRouteActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;


# instance fields
.field private final TYPE_END_TIME:I

.field private final TYPE_START_TIME:I

.field private addRoute:Landroid/view/View$OnClickListener;

.field private backListener:Landroid/view/View$OnClickListener;

.field private end_time_hour:I

.field private end_time_minute:I

.field private l1:Landroid/view/View$OnClickListener;

.field private l2:Landroid/view/View$OnClickListener;

.field private l3:Landroid/view/View$OnClickListener;

.field private l4:Landroid/view/View$OnClickListener;

.field private line_1_layout:Landroid/view/View;

.field private line_1_value:Landroid/widget/TextView;

.field private line_2_layout:Landroid/view/View;

.field private line_2_value:Landroid/widget/TextView;

.field private line_3_layout:Landroid/view/View;

.field private line_3_tips:Landroid/widget/TextView;

.field private line_3_value:Landroid/widget/TextView;

.field private line_4_layout:Landroid/view/View;

.field private line_4_value:Landroid/widget/TextView;

.field private mEndAddress:Lcom/didi/common/model/Address;

.field private mStartAddress:Lcom/didi/common/model/Address;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private start_time_hour:I

.field private start_time_minute:I

.field private submit:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 39
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->TYPE_START_TIME:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->TYPE_END_TIME:I

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I

    .line 61
    iput v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I

    .line 66
    const/16 v0, 0x11

    iput v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I

    .line 67
    iput v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I

    .line 187
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$1;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l1:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$2;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l2:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l3:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$4;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l4:Landroid/view/View$OnClickListener;

    .line 290
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$5;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->addRoute:Landroid/view/View$OnClickListener;

    .line 330
    new-instance v0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$6;-><init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->redirectToSearch(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I

    return v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I

    return v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Lcom/didi/common/model/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mStartAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)Lcom/didi/common/model/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mEndAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method private bindUI()V
    .locals 3

    .prologue
    .line 151
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_1_layout:Landroid/view/View;

    .line 152
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_1_value:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_1_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_1_value:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_2_layout:Landroid/view/View;

    .line 157
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_2_value:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_2_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_2_value:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_layout:Landroid/view/View;

    .line 162
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_value:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_tips:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_layout:Landroid/view/View;

    .line 168
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_value:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->l4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->addRoute:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->isHasRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_tips:Landroid/widget/TextView;

    const v1, 0x7f0b0113

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_value:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_value:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setSubmitState()V

    .line 185
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I

    iget v2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setTime(Landroid/widget/TextView;II)V

    .line 181
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I

    iget v2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setTime(Landroid/widget/TextView;II)V

    goto :goto_0
.end method

.method private onEndAddressSelected()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 232
    .local v0, endAddress:Lcom/didi/common/model/Address;
    iget-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, v0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 236
    :cond_0
    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mEndAddress:Lcom/didi/common/model/Address;

    .line 237
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_2_value:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setSubmitState()V

    .line 239
    return-void
.end method

.method private onStartAddressSelected()V
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 221
    .local v0, startAddress:Lcom/didi/common/model/Address;
    iget-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, v0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 225
    :cond_0
    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mStartAddress:Lcom/didi/common/model/Address;

    .line 226
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_1_value:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setSubmitState()V

    .line 228
    return-void
.end method

.method private parseTimeConfig()V
    .locals 10

    .prologue
    const/16 v9, 0x3b

    const/16 v8, 0x17

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 92
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/beatles/model/BtsConfig;->worktime:Ljava/lang/String;

    .line 93
    .local v2, start:Ljava/lang/String;
    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    const-string v2, "08:30"

    .line 97
    :cond_0
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v4

    iget-object v0, v4, Lcom/didi/beatles/model/BtsConfig;->hometime:Ljava/lang/String;

    .line 98
    .local v0, end:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string v0, "19:30"

    .line 102
    :cond_1
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, index:I
    if-eq v1, v6, :cond_5

    .line 104
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, tmp:I
    if-gez v3, :cond_2

    if-gt v3, v8, :cond_3

    .line 106
    :cond_2
    iput v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I

    .line 109
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 110
    if-gez v3, :cond_4

    if-gt v3, v9, :cond_5

    .line 111
    :cond_4
    iput v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I

    .line 115
    .end local v3           #tmp:I
    :cond_5
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 116
    if-eq v1, v6, :cond_9

    .line 117
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 118
    .restart local v3       #tmp:I
    if-gez v3, :cond_6

    if-gt v3, v8, :cond_7

    .line 119
    :cond_6
    iput v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I

    .line 122
    :cond_7
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 123
    if-gez v3, :cond_8

    if-gt v3, v9, :cond_9

    .line 124
    :cond_8
    iput v3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I

    .line 127
    .end local v3           #tmp:I
    :cond_9
    return-void
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 208
    if-eqz p1, :cond_0

    move v2, v1

    .line 210
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 212
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 208
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 210
    goto :goto_1
.end method

.method private setSubmitState()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mStartAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mEndAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->submit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method private setTime(Landroid/widget/TextView;II)V
    .locals 4
    .parameter "v"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 139
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 130
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 131
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 134
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 135
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x6e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->onStartAddressSelected()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->onEndAddressSelected()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setTitlebar()V

    .line 87
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->parseTimeConfig()V

    .line 88
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->bindUI()V

    .line 89
    return-void
.end method

.method public onResult(III)V
    .locals 1
    .parameter "type"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 342
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 343
    iput p2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I

    .line 344
    iput p3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I

    .line 346
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_3_value:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setTime(Landroid/widget/TextView;II)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 348
    iput p2, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_hour:I

    .line 349
    iput p3, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->end_time_minute:I

    .line 351
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->line_4_value:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->setTime(Landroid/widget/TextView;II)V

    goto :goto_0
.end method
