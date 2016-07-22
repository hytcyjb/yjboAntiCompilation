.class public Lcom/didi/car/ui/activity/CarEstimatePriceActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CarEstimatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DISPLAY_TYPE:Ljava/lang/String; = "display_type"

.field public static final FROM_CAR:I = 0x1

.field public static final FROM_TAXI:I = 0x2


# instance fields
.field private final DEFAULT_LAT_OR_LNG_VALUE:Ljava/lang/String;

.field private backListener:Landroid/view/View$OnClickListener;

.field private carEstimateDistance:Landroid/widget/TextView;

.field private carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

.field private carEstimateThirdPart:Landroid/widget/LinearLayout;

.field private carEstimateTime:Landroid/widget/TextView;

.field private carOrder:Lcom/didi/car/model/CarOrder;

.field private cityID:Ljava/lang/String;

.field private endAddressLayout:Landroid/widget/RelativeLayout;

.field private from:I

.field private imgError:Landroid/widget/ImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private loading:Landroid/widget/ImageView;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private onClickListenerReload:Landroid/view/View$OnClickListener;

.field private startAddressLayout:Landroid/widget/RelativeLayout;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private txtEndAddress:Landroid/widget/TextView;

.field private txtError:Landroid/widget/TextView;

.field private txtStartAddress:Landroid/widget/TextView;

.field private valuationRules:Landroid/widget/TextView;

.field private valuationRulesImg:Lx/ImageView;

.field private viewError:Landroid/view/View;

.field private webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->cityID:Ljava/lang/String;

    .line 103
    const-string v0, "-1"

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->DEFAULT_LAT_OR_LNG_VALUE:Ljava/lang/String;

    .line 327
    new-instance v0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$2;-><init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$3;-><init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onClickListenerReload:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->back()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->refreshAddress()V

    .line 458
    invoke-static {}, Lcom/didi/car/listener/CarListenerCollection;->notifyPlace()V

    .line 459
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->overridePendingTransition(II)V

    .line 460
    return-void
.end method

.method private getDataFromIntent()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "display_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    .line 127
    iget v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    invoke-direct {p0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->switchView(I)V

    .line 128
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->initData()V

    .line 129
    return-void
.end method

.method private getEstimatePrice()V
    .locals 9

    .prologue
    .line 497
    const-string v2, ""

    .line 498
    .local v2, startLat:Ljava/lang/String;
    const-string v1, ""

    .line 499
    .local v1, startLng:Ljava/lang/String;
    const-string v4, ""

    .line 500
    .local v4, endLat:Ljava/lang/String;
    const-string v3, ""

    .line 502
    .local v3, endLng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 508
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v2, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 509
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 511
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 512
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v4, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 513
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v3, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 516
    :cond_3
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v0, v5, v6}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 517
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    iget-object v5, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v5}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    new-instance v7, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;

    invoke-direct {v7, p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;-><init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_4

    .line 148
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 154
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 155
    .local v1, startPlace:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 157
    .local v0, endPlace:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_5

    .line 159
    invoke-direct {p0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 164
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_6

    .line 166
    invoke-direct {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 172
    :cond_1
    :goto_2
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 174
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 180
    :goto_3
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 182
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 183
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 191
    :cond_3
    :goto_4
    return-void

    .line 150
    .end local v0           #endPlace:Lcom/didi/common/model/Address;
    .end local v1           #startPlace:Lcom/didi/common/model/Address;
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarOrder;

    iput-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 151
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    goto/16 :goto_0

    .line 161
    .restart local v0       #endPlace:Lcom/didi/common/model/Address;
    .restart local v1       #startPlace:Lcom/didi/common/model/Address;
    :cond_5
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    :cond_6
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 176
    :cond_7
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 177
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_3

    .line 185
    :cond_8
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 186
    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_4
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    const v0, 0x7f080209

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRulesImg:Lx/ImageView;

    .line 245
    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    .line 246
    const v0, 0x7f08020b

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    .line 248
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateDistance:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateTime:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->loading:Landroid/widget/ImageView;

    .line 252
    const v0, 0x7f08020e

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateThirdPart:Landroid/widget/LinearLayout;

    .line 253
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 254
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 255
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 257
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;

    .line 258
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->imgError:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtError:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v1, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$1;-><init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 326
    return-void
.end method

.method private onEndAddressSelected()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 634
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 636
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    if-ne v1, v3, :cond_2

    .line 639
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 646
    :goto_1
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    iget v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    if-eq v1, v3, :cond_0

    .line 651
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1, v0}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    goto :goto_1
.end method

.method private onStartAddressSelected()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 612
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 613
    .local v0, startAddress:Lcom/didi/common/model/Address;
    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    if-ne v1, v3, :cond_2

    .line 615
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 622
    :goto_1
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    iget v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->from:I

    if-eq v1, v3, :cond_0

    .line 628
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getEstimatePrice()V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1, v0}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    goto :goto_1
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    .line 583
    if-eqz p1, :cond_0

    const/4 v2, 0x6

    .line 584
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 585
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

    .line 587
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v4, "search_extra_order_type"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 592
    return-void

    .line 583
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    .line 584
    .restart local v2       #type:I
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    .line 585
    .restart local v1       #requestCode:I
    :cond_2
    const-class v3, Lcom/didi/common/search/SearchActivity;

    goto :goto_2

    .line 588
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private refreshAddress()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setResult(ILandroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->finish()V

    .line 466
    return-void
.end method

.method private setEndAddress(Lcom/didi/common/model/Address;)V
    .locals 10
    .parameter "endPlace"

    .prologue
    const-wide/16 v8, 0x0

    .line 223
    iget-object v4, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 224
    .local v4, endLat:Ljava/lang/String;
    iget-object v5, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 225
    .local v5, endLng:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 228
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 229
    .local v0, doubleLat:D
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 230
    .local v2, doubleLng:D
    cmpl-double v7, v8, v0

    if-eqz v7, :cond_0

    cmpl-double v7, v8, v2

    if-eqz v7, :cond_0

    .line 231
    iget-object v7, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtEndAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #doubleLat:D
    .end local v2           #doubleLng:D
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v6

    .line 234
    .local v6, exception:Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "carEstimatePrice"

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateThirdPart:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateThirdPart:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateDistance:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->startDescDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carEstimateTime:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->startDescTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->webviewLoadUrl(Lcom/didi/common/ui/webview/CommonWebViewEx;)Z

    goto :goto_0
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->endAddressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void
.end method

.method private setStartAddress(Lcom/didi/common/model/Address;)V
    .locals 10
    .parameter "startPlace"

    .prologue
    const-wide/16 v8, 0x0

    .line 206
    iget-object v5, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 207
    .local v5, startLat:Ljava/lang/String;
    iget-object v6, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 208
    .local v6, startLng:Ljava/lang/String;
    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 211
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 212
    .local v0, doubleLat:D
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 213
    .local v2, doubleLng:D
    cmpl-double v7, v8, v0

    if-eqz v7, :cond_0

    cmpl-double v7, v8, v2

    if-eqz v7, :cond_0

    .line 214
    iget-object v7, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->txtStartAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0           #doubleLat:D
    .end local v2           #doubleLng:D
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, exception:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 439
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 440
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0327

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 441
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 442
    return-void
.end method

.method private switchView(I)V
    .locals 1
    .parameter "from"

    .prologue
    .line 137
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRulesImg:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRules:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->valuationRulesImg:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method private webviewLoadUrl(Lcom/didi/common/ui/webview/CommonWebViewEx;)Z
    .locals 21
    .parameter "webViewEx"

    .prologue
    .line 350
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/didi/common/config/Preferences;->getEstimatePriceUrl()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, baseUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 352
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v7

    check-cast v7, Lcom/didi/car/model/CarOrder;

    .line 353
    .local v7, order:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 354
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 355
    .local v3, builder:Landroid/net/Uri$Builder;
    iget-object v8, v7, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 357
    .local v8, price:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v17

    if-gez v17, :cond_1

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 360
    const/16 v17, 0x0

    .line 428
    .end local v3           #builder:Landroid/net/Uri$Builder;
    .end local v7           #order:Lcom/didi/car/model/CarOrder;
    .end local v8           #price:Lcom/didi/car/model/CarEstimatePrice;
    .end local v16           #uri:Landroid/net/Uri;
    :goto_0
    return v17

    .line 363
    .restart local v3       #builder:Landroid/net/Uri$Builder;
    .restart local v7       #order:Lcom/didi/car/model/CarOrder;
    .restart local v8       #price:Lcom/didi/car/model/CarEstimatePrice;
    .restart local v16       #uri:Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->viewError:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setVisibility(I)V

    .line 366
    if-eqz v8, :cond_4

    .line 367
    iget-object v4, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 368
    .local v4, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v9, sBuild:Ljava/lang/StringBuilder;
    iget-object v10, v8, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 371
    .local v10, selectedIndex:[I
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 372
    const/16 v17, 0x1

    aget v18, v10, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 373
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/didi/car/model/CarModel;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/didi/car/model/CarModel;->cLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 376
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 377
    const-string v17, "require_level"

    const/16 v18, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 383
    .end local v4           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v6           #index:I
    .end local v9           #sBuild:Ljava/lang/StringBuilder;
    .end local v10           #selectedIndex:[I
    :cond_4
    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 384
    .local v11, startPlace:Lcom/didi/common/model/Address;
    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    .line 385
    .local v5, endPlace:Lcom/didi/common/model/Address;
    if-eqz v11, :cond_5

    if-eqz v5, :cond_5

    .line 386
    const-string v17, "flat"

    iget-object v0, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 387
    const-string v17, "flng"

    iget-object v0, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 388
    const-string v17, "tlat"

    iget-object v0, v5, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 389
    const-string v17, "tlng"

    iget-object v0, v5, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 391
    :cond_5
    const-string v17, "fromName"

    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 392
    const-string v17, "toName"

    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    const-string v17, "fromAddress"

    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 394
    const-string v17, "toAddress"

    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 395
    const-string v17, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 396
    const-string v17, "tip"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getTipParam()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 397
    const-string v17, "area"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v13, v17, v19

    .line 399
    .local v13, time:J
    const-string v17, "departure_time"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    invoke-virtual {v7}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v15

    .line 401
    .local v15, type:Lcom/didi/frame/business/OrderType;
    const-string v17, "type"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v15, :cond_6

    sget-object v15, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    .end local v15           #type:Lcom/didi/frame/business/OrderType;
    :cond_6
    invoke-virtual {v15}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 402
    const-string v18, "flier"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v17

    sget-object v19, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    const-string v17, "0"

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
    const-string v17, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 405
    const-string v17, "phone"

    const-string v18, "*&^%$#@!"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/didi/common/util/DesEncryptUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 406
    const-string v17, "vcode"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 407
    const-string v17, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 408
    const-string v17, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 409
    const-string v17, "platform"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 410
    const-string v17, "datatype"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 411
    const-string v17, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 412
    const-string v17, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 413
    const-string v17, "os"

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 414
    const-string v17, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 415
    const-string v17, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 416
    const-string v17, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 417
    const-string v17, "city_id"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 418
    const-string v17, "uuid"

    sget-object v18, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 419
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, suuid:Ljava/lang/String;
    const-string v17, "suuid"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 421
    const-string v17, "susig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 425
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 402
    .end local v12           #suuid:Ljava/lang/String;
    :cond_7
    const-string v17, "1"

    goto/16 :goto_2

    .line 428
    .end local v3           #builder:Landroid/net/Uri$Builder;
    .end local v5           #endPlace:Lcom/didi/common/model/Address;
    .end local v7           #order:Lcom/didi/car/model/CarOrder;
    .end local v8           #price:Lcom/didi/car/model/CarEstimatePrice;
    .end local v11           #startPlace:Lcom/didi/common/model/Address;
    .end local v13           #time:J
    .end local v16           #uri:Landroid/net/Uri;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 596
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 597
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

    .line 598
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

    .line 599
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 601
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 603
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onStartAddressSelected()V

    goto :goto_0

    .line 606
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->onEndAddressSelected()V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->back()V

    .line 454
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v5, 0x7f05000b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 472
    :sswitch_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 473
    invoke-direct {p0, v2}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->redirectToSearch(Z)V

    goto :goto_0

    .line 477
    :sswitch_1
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 478
    invoke-direct {p0, v3}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->redirectToSearch(Z)V

    goto :goto_0

    .line 482
    :sswitch_2
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 483
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->cityID:Ljava/lang/String;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_0

    :goto_1
    invoke-static {v4, v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 484
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 485
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 483
    goto :goto_1

    .line 470
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
    .line 113
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->inflater:Landroid/view/LayoutInflater;

    .line 115
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->cityID:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setTitleBar()V

    .line 119
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->initViews()V

    .line 120
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getDataFromIntent()V

    .line 121
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setListeners()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 658
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 659
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 660
    return-void
.end method
