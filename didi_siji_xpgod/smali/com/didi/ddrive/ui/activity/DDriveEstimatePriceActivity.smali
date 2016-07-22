.class public Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "DDriveEstimatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DISPLAY_TYPE:Ljava/lang/String; = "display_type"

.field public static final FROM_DDRIVE:I = 0x1

.field public static final FROM_TAXI:I = 0x2


# instance fields
.field private final DEFAULT_LAT_OR_LNG_VALUE:Ljava/lang/String;

.field private backListener:Landroid/view/View$OnClickListener;

.field private cityID:Ljava/lang/String;

.field private costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

.field private endAddressLayout:Landroid/widget/RelativeLayout;

.field private from:I

.field private hintView:Landroid/widget/TextView;

.field private imgError:Landroid/widget/ImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private startAddressLayout:Landroid/widget/RelativeLayout;

.field private txtEndAddress:Landroid/widget/TextView;

.field private txtError:Landroid/widget/TextView;

.field private txtStartAddress:Landroid/widget/TextView;

.field private valuationRules:Landroid/widget/TextView;

.field private valuationRulesImg:Lx/ImageView;

.field private viewError:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->cityID:Ljava/lang/String;

    .line 81
    const-string v0, "-1"

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->DEFAULT_LAT_OR_LNG_VALUE:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity$1;-><init>(Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->back()V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->refreshAddress()V

    .line 204
    invoke-static {}, Lcom/didi/car/listener/CarListenerCollection;->notifyPlace()V

    .line 205
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->overridePendingTransition(II)V

    .line 206
    return-void
.end method

.method private getDataFromIntent()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "display_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->from:I

    .line 108
    iget v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->from:I

    invoke-direct {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->switchView(I)V

    .line 109
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->initData()V

    .line 110
    return-void
.end method

.method private getEstimatePrice()V
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const v1, 0x7f0b0149

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 269
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getInstance()Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v0

    .line 270
    .local v0, manager:Lcom/didi/ddrive/managers/DriveConfirmManager;
    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getEstimateFare()V

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 125
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 126
    .local v1, startPlace:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 128
    .local v0, endPlace:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 149
    :cond_2
    return-void

    .line 139
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 140
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 159
    const v0, 0x7f080209

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->valuationRulesImg:Lx/ImageView;

    .line 164
    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    .line 165
    const v0, 0x7f08020b

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    .line 167
    const v0, 0x7f080335

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->hintView:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f080334

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    .line 169
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->hideTitle()V

    .line 170
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->hideRuleEntrance()V

    .line 171
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->showTotalCost()V

    .line 172
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->viewError:Landroid/view/View;

    .line 173
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->imgError:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtError:Landroid/widget/TextView;

    .line 175
    return-void
.end method

.method private onEndAddressSelected()V
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 325
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1, v0}, Lcom/didi/ddrive/model/DDriveOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 332
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_0
.end method

.method private onStartAddressSelected()V
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 307
    .local v0, startAddress:Lcom/didi/common/model/Address;
    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1, v0}, Lcom/didi/ddrive/model/DDriveOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 313
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_0
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    .line 277
    if-eqz p1, :cond_0

    const/4 v2, 0x6

    .line 278
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 279
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/didi/frame/DepartureActivity;

    :goto_2
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v4, "search_extra_order_type"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    .line 278
    .restart local v2       #type:I
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    .line 279
    .restart local v1       #requestCode:I
    :cond_2
    const-class v3, Lcom/didi/common/search/SearchActivity;

    goto :goto_2

    .line 282
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private refreshAddress()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->finish()V

    .line 212
    return-void
.end method

.method private setEstimatePriceLayout(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 2
    .parameter "estimate"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->hintView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->costDetailControllerView:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->setup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 156
    :cond_0
    return-void
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 184
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 185
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0145

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 186
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private switchView(I)V
    .locals 1
    .parameter "from"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->valuationRulesImg:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarEstResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarEstRequestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 293
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->onStartAddressSelected()V

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->onEndAddressSelected()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "pdjxprefee_00_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->back()V

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f05000b

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 218
    :sswitch_0
    const-string v2, "pdjxprefee_01_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 220
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->redirectToSearch(Z)V

    goto :goto_0

    .line 224
    :sswitch_1
    const-string v2, "pdjxprefee_02_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 226
    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->redirectToSearch(Z)V

    goto :goto_0

    .line 230
    :sswitch_2
    const-string v2, "pdjxprefee_03_ck"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 232
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/ddrive/util/DDriveH5Util;->getCostRuleUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 233
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 234
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080207 -> :sswitch_0
        0x7f08020b -> :sswitch_1
        0x7f080214 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->inflater:Landroid/view/LayoutInflater;

    .line 94
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->cityID:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setTitleBar()V

    .line 98
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->initViews()V

    .line 99
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->getDataFromIntent()V

    .line 100
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setListeners()V

    .line 102
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 343
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 344
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 246
    iget-boolean v1, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 248
    .local v0, response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 249
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v1, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 257
    .end local v0           #response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->mDriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 255
    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    goto :goto_0
.end method
