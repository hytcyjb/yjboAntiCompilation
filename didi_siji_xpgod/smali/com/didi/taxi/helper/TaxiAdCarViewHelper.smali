.class public Lcom/didi/taxi/helper/TaxiAdCarViewHelper;
.super Ljava/lang/Object;
.source "TaxiAdCarViewHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static ad:Lcom/didi/frame/switcher/AdCarView;

.field private static callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

.field private static cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private static isHomeShow:Z

.field private static isWaitShow:Z

.field private static logtxt:Ljava/lang/String;

.field private static view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$2;

    invoke-direct {v0}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$2;-><init>()V

    sput-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 142
    new-instance v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$3;

    invoke-direct {v0}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$3;-><init>()V

    sput-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/didi/frame/switcher/AdCarView;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->logtxt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->loadGuide()V

    return-void
.end method

.method static synthetic access$400()Lcom/didi/common/helper/LocationHelper$CityChangeListener;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->initAdCarView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static addCityListener()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 68
    return-void
.end method

.method public static addHomePoupView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isHomeShow:Z

    if-nez v0, :cond_0

    .line 42
    sput-object p0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->view:Landroid/view/View;

    .line 43
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->addCityListener()V

    .line 44
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->loadGuide()V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isHomeShow:Z

    goto :goto_0
.end method

.method public static addWaitPoupView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 53
    sget-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isWaitShow:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "f_guided_popup_show_wait"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    sput-object p0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->view:Landroid/view/View;

    .line 57
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->loadWaitGuide()V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isWaitShow:Z

    goto :goto_0
.end method

.method private static initAdCarView(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v5}, Lcom/didi/frame/switcher/AdCarView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v5}, Lcom/didi/frame/switcher/AdCarView;->dismiss()V

    .line 120
    sput-object v7, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    .line 122
    :cond_2
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 123
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, popupWindow:Landroid/view/View;
    new-instance v5, Lcom/didi/frame/switcher/AdCarView;

    const/16 v6, 0x258

    invoke-static {v6}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v6

    const/16 v7, 0xc8

    invoke-static {v7}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v7

    invoke-direct {v5, v1, v6, v7}, Lcom/didi/frame/switcher/AdCarView;-><init>(Landroid/view/View;II)V

    sput-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    .line 125
    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v5, p0}, Lcom/didi/frame/switcher/AdCarView;->setGuideImage(Landroid/graphics/Bitmap;)V

    .line 126
    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    sget-object v6, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->logtxt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/AdCarView;->setLogTxt(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/switcher/SwitcherItem;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 128
    .local v3, x:I
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/switcher/SwitcherItem;->getDotTop()F

    move-result v5

    float-to-int v2, v5

    .line 129
    .local v2, top:I
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/switcher/SwitcherItem;->getHeight()I

    move-result v5

    const/16 v6, 0xdc

    invoke-static {v6}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v6

    add-int/2addr v5, v6

    sub-int v4, v5, v2

    .line 130
    .local v4, y:I
    const-string v5, "f_guided_popup_show"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    sget-object v6, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->view:Landroid/view/View;

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/didi/frame/switcher/AdCarView;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private static loadGuide()V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/AdCarView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$1;

    invoke-direct {v0}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper$1;-><init>()V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static loadWaitGuide()V
    .locals 3

    .prologue
    .line 71
    sget-object v1, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v1}, Lcom/didi/frame/switcher/AdCarView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    .local v0, guide:Lcom/didi/car/model/CarGuideFlag;
    :cond_0
    :goto_0
    return-void

    .line 73
    .end local v0           #guide:Lcom/didi/car/model/CarGuideFlag;
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v0

    .line 74
    .restart local v0       #guide:Lcom/didi/car/model/CarGuideFlag;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "f_guided_popup_show_click_wait"

    sput-object v1, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->logtxt:Ljava/lang/String;

    .line 77
    iget-object v1, v0, Lcom/didi/car/model/CarGuideFlag;->waitUrl:Ljava/lang/String;

    sget-object v2, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    invoke-static {v1, v2}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method

.method public static removePoupView()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->resetAdCarView()V

    .line 50
    return-void
.end method

.method private static resetAdCarView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 105
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    invoke-virtual {v0}, Lcom/didi/frame/switcher/AdCarView;->dismiss()V

    .line 107
    sput-object v2, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->ad:Lcom/didi/frame/switcher/AdCarView;

    .line 109
    :cond_0
    sput-object v2, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->view:Landroid/view/View;

    .line 110
    sput-boolean v1, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isHomeShow:Z

    .line 111
    sput-boolean v1, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isWaitShow:Z

    .line 112
    return-void
.end method

.method public static resetWaitPoupWiew()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isWaitShow:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->isWaitShow:Z

    .line 64
    :cond_0
    return-void
.end method
