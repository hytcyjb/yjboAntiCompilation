.class public Lcom/didi/beatles/business/route/BtsModifyRouteActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsModifyRouteActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private delListener:Landroid/view/View$OnClickListener;

.field private l1:Landroid/view/View$OnClickListener;

.field private l2:Landroid/view/View$OnClickListener;

.field private l3:Landroid/view/View$OnClickListener;

.field private line_1_layout:Landroid/view/View;

.field private line_1_value:Landroid/widget/TextView;

.field private line_2_layout:Landroid/view/View;

.field private line_2_value:Landroid/widget/TextView;

.field private line_3_layout:Landroid/view/View;

.field private line_3_value:Landroid/widget/TextView;

.field private mDelButton:Landroid/widget/Button;

.field mRoute:Lcom/didi/beatles/model/route/BtsRoute;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private saveListener:Landroid/view/View$OnClickListener;

.field private start_time_hour:I

.field private start_time_minute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_hour:I

    .line 47
    const/16 v0, 0x1e

    iput v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_minute:I

    .line 128
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$1;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l2:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$2;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l3:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$4;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->delListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$5;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l1:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$6;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->saveListener:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$7;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->redirectToSearch(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->showDelRouteComfirm()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_hour:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_minute:I

    return v0
.end method

.method private bindUI()V
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_1_layout:Landroid/view/View;

    .line 104
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_1_value:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_1_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_1_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v1, v1, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_2_layout:Landroid/view/View;

    .line 110
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_2_value:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_2_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v1, v1, Lcom/didi/beatles/model/route/BtsRoute;->from_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_2_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_3_layout:Landroid/view/View;

    .line 115
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_3_value:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_3_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v1, v1, Lcom/didi/beatles/model/route/BtsRoute;->to_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_3_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->l3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mDelButton:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mDelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->delListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
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

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lcom/didi/beatles/model/route/BtsRoute;->to_address:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->to_city_id:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->to_lat:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->to_lng:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->to_name:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_3_value:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void

    .line 235
    :cond_1
    iget-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private onStartAddressSelected()V
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 218
    .local v0, startAddress:Lcom/didi/common/model/Address;
    iget-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lcom/didi/beatles/model/route/BtsRoute;->from_address:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->from_city_id:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->from_lat:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v2, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->from_lng:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/beatles/model/route/BtsRoute;->from_name:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_2_value:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 221
    :cond_1
    iget-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseIntent()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 317
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    move v6, v7

    .line 359
    :goto_0
    return v6

    .line 321
    :cond_0
    const-string v6, "route"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/didi/beatles/model/route/BtsRoute;

    iput-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    .line 323
    iget-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    if-nez v6, :cond_1

    .line 324
    const-string v6, "error"

    const-string v8, "route is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 326
    goto :goto_0

    .line 329
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v6, v6, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 330
    iget-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v6, v6, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, index:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    .line 332
    iget-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v6, v6, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, hour:Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v6, v6, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, minute:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, hour_n:I
    if-gez v1, :cond_2

    .line 336
    const/4 v1, 0x6

    .line 339
    :cond_2
    const/16 v6, 0x17

    if-le v1, v6, :cond_3

    .line 340
    const/16 v1, 0x17

    .line 343
    :cond_3
    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 344
    .local v5, minute_n:I
    if-gez v5, :cond_4

    .line 345
    const/4 v5, 0x0

    .line 348
    :cond_4
    const/16 v6, 0x3b

    if-le v5, v6, :cond_5

    .line 349
    const/16 v5, 0x3b

    .line 352
    :cond_5
    iput v1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_hour:I

    .line 353
    iput v5, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_minute:I

    .line 359
    .end local v0           #hour:Ljava/lang/String;
    .end local v1           #hour_n:I
    .end local v2           #index:I
    .end local v4           #minute:Ljava/lang/String;
    .end local v5           #minute_n:I
    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 205
    if-eqz p1, :cond_0

    move v2, v1

    .line 207
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 209
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 205
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 207
    goto :goto_1
.end method

.method private setTime(Landroid/widget/TextView;II)V
    .locals 4
    .parameter "v"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 125
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

    .line 126
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 94
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 96
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b010a

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->saveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private showDelRouteComfirm()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    const v2, 0x7f0b00fc

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 154
    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 155
    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 156
    new-instance v1, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$3;-><init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;Lcom/didi/common/helper/DialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 191
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 192
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/route/BtsRoute;)V
    .locals 4
    .parameter "activity"
    .parameter "route"

    .prologue
    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 63
    const-string v2, "error"

    const-string v3, "route is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v2, "route"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    const/16 v2, 0x6f

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
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
    .line 247
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 248
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->onStartAddressSelected()V

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->onEndAddressSelected()V

    goto :goto_0

    .line 250
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
    .line 80
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->setTitlebar()V

    .line 90
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->bindUI()V

    goto :goto_0
.end method

.method public onResult(III)V
    .locals 5
    .parameter "type"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 364
    iput p2, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_hour:I

    .line 365
    iput p3, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->start_time_minute:I

    .line 367
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->line_1_value:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->setTime(Landroid/widget/TextView;II)V

    .line 369
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->mRoute:Lcom/didi/beatles/model/route/BtsRoute;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    .line 370
    return-void
.end method
