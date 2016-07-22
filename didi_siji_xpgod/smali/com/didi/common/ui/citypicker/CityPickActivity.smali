.class public Lcom/didi/common/ui/citypicker/CityPickActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CityPickActivity.java"


# instance fields
.field private allCityList:Landroid/widget/ListView;

.field private allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

.field private business:Lcom/didi/frame/business/Business;

.field private carAllCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation
.end field

.field private carHotCities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/CarHotCity;",
            ">;"
        }
    .end annotation
.end field

.field private carHotCityAdapter:Lcom/didi/common/ui/citypicker/CarHotCityAdapter;

.field private characterParser:Lcom/didi/common/ui/citypicker/CharacterParser;

.field private clearBtn:Lx/ImageView;

.field private currentCity:Landroid/widget/TextView;

.field private editText:Lcom/didi/common/ui/citypicker/ClearEditText;

.field private filterDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation
.end field

.field private hotCity:Landroid/widget/TextView;

.field private hotCityList:Landroid/widget/ListView;

.field private isShowFilterList:Z

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private pinyinComparator:Lcom/didi/common/ui/citypicker/PinyinComparator;

.field private scrollView:Landroid/widget/ScrollView;

.field private sideBar:Lcom/didi/common/ui/citypicker/SideBar;

.field private taxiAllCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation
.end field

.field private taxiHotCities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/TaxiHotCity;",
            ">;"
        }
    .end annotation
.end field

.field private taxiHotCityAdapter:Lcom/didi/common/ui/citypicker/TaxiHotCityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiAllCities:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carAllCities:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->isShowFilterList:Z

    .line 380
    new-instance v0, Lcom/didi/common/ui/citypicker/CityPickActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$9;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->mBackListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getCityList()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->onSelected(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/citypicker/CityPickActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->isShowFilterList:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getCurrentAllCityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/citypicker/CityPickActivity;Lcom/didi/common/model/CityIndexList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->setDataToDBFromNet(Lcom/didi/common/model/CityIndexList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getDataFromDb()V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->onGetCityList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->back()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->clearBtn:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/ClearEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/SortAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/frame/business/Business;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/citypicker/CityPickActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    return-object v0
.end method

.method private back()V
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->finish()V

    .line 402
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->overridePendingTransition(II)V

    .line 403
    return-void
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 7
    .parameter "filterStr"

    .prologue
    const/4 v6, 0x0

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    .line 243
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getCurrentAllCityList()Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, currentAllCityList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    iput-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    .line 246
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCity:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 247
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 248
    iput-boolean v6, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->isShowFilterList:Z

    .line 264
    :goto_0
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->pinyinComparator:Lcom/didi/common/ui/citypicker/PinyinComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/didi/common/ui/citypicker/SortAdapter;->updateListView(Ljava/util/List;)V

    .line 268
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CityIndex;

    .line 252
    .local v0, cityIndex:Lcom/didi/common/model/CityIndex;
    iget-object v3, v0, Lcom/didi/common/model/CityIndex;->cityName:Ljava/lang/String;

    .line 253
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->characterParser:Lcom/didi/common/ui/citypicker/CharacterParser;

    invoke-virtual {v4, v3}, Lcom/didi/common/ui/citypicker/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    :cond_3
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->filterDateList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v0           #cityIndex:Lcom/didi/common/model/CityIndex;
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getTop()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 258
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 259
    iget-object v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCity:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 260
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->isShowFilterList:Z

    goto :goto_0
.end method

.method private getCityList()V
    .locals 3

    .prologue
    .line 285
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 286
    new-instance v0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$8;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getCities(Lcom/didi/common/net/ResponseListener;)V

    .line 314
    return-void
.end method

.method private getCurrentAllCityList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiAllCities:Ljava/util/List;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carAllCities:Ljava/util/List;

    goto :goto_0
.end method

.method private getDataFromDb()V
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getTaxiAllCityList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiAllCities:Ljava/util/List;

    .line 353
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getTaxiHotCityList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    .line 354
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCarAllCityList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carAllCities:Ljava/util/List;

    .line 355
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCarHotCityList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    .line 356
    return-void
.end method

.method private initData(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business1"

    .prologue
    .line 116
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, city:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->currentCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    if-nez p1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    .line 119
    invoke-static {}, Lcom/didi/common/ui/citypicker/CharacterParser;->getInstance()Lcom/didi/common/ui/citypicker/CharacterParser;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->characterParser:Lcom/didi/common/ui/citypicker/CharacterParser;

    .line 120
    new-instance v1, Lcom/didi/common/ui/citypicker/PinyinComparator;

    invoke-direct {v1}, Lcom/didi/common/ui/citypicker/PinyinComparator;-><init>()V

    iput-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->pinyinComparator:Lcom/didi/common/ui/citypicker/PinyinComparator;

    .line 121
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/citypicker/ClearEditText;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;

    .line 131
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/citypicker/SideBar;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->sideBar:Lcom/didi/common/ui/citypicker/SideBar;

    .line 132
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->currentCity:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    .line 134
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    .line 135
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->scrollView:Landroid/widget/ScrollView;

    .line 136
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCity:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->clearBtn:Lx/ImageView;

    .line 138
    return-void
.end method

.method private onGetCityList()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 363
    new-instance v0, Lcom/didi/common/ui/citypicker/TaxiHotCityAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/citypicker/TaxiHotCityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCityAdapter:Lcom/didi/common/ui/citypicker/TaxiHotCityAdapter;

    .line 364
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCityAdapter:Lcom/didi/common/ui/citypicker/TaxiHotCityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    new-instance v0, Lcom/didi/common/ui/citypicker/SortAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiAllCities:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/citypicker/SortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    .line 366
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 376
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 377
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 378
    return-void

    .line 369
    :cond_0
    new-instance v0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCityAdapter:Lcom/didi/common/ui/citypicker/CarHotCityAdapter;

    .line 370
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCityAdapter:Lcom/didi/common/ui/citypicker/CarHotCityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    new-instance v0, Lcom/didi/common/ui/citypicker/SortAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carAllCities:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/citypicker/SortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    .line 372
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private onSelected(Ljava/lang/String;I)V
    .locals 4
    .parameter "city"
    .parameter "cityId"

    .prologue
    .line 388
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, cityString:Ljava/lang/String;
    const-string v2, "city_select_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->back()V

    .line 393
    return-void
.end method

.method private performGetCityList()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/didi/common/ui/citypicker/CityPickActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$1;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method private setDataToDBFromNet(Lcom/didi/common/model/CityIndexList;)V
    .locals 8
    .parameter "t"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    iget-object v2, p1, Lcom/didi/common/model/CityIndexList;->list:Ljava/util/ArrayList;

    .line 324
    .local v2, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/CityGroup;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/CityGroup;

    iget-object v5, v5, Lcom/didi/common/model/CityGroup;->taxiHotCityList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    .line 325
    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiHotCities:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/didi/common/database/CityListHelper;->insertTaxiHotCity(Ljava/util/ArrayList;)V

    .line 327
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/CityGroup;

    iget-object v5, v5, Lcom/didi/common/model/CityGroup;->carHotCityList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    .line 328
    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carHotCities:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/didi/common/database/CityListHelper;->insertCarHotCity(Ljava/util/ArrayList;)V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, allList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/CityIndex;>;"
    const/4 v4, 0x1

    .local v4, m:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 333
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/CityGroup;

    iget-object v5, v5, Lcom/didi/common/model/CityGroup;->allList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/CityIndex;

    .line 338
    .local v1, c:Lcom/didi/common/model/CityIndex;
    iget v5, v1, Lcom/didi/common/model/CityIndex;->openTaxi:I

    if-ne v5, v7, :cond_2

    .line 339
    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->taxiAllCities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_2
    iget v5, v1, Lcom/didi/common/model/CityIndex;->openCar:I

    if-ne v5, v7, :cond_1

    .line 342
    iget-object v5, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->carAllCities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    .end local v1           #c:Lcom/didi/common/model/CityIndex;
    :cond_3
    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->insertCityIndex(Ljava/util/ArrayList;)V

    .line 346
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$2;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/citypicker/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$3;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/citypicker/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->clearBtn:Lx/ImageView;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$4;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->sideBar:Lcom/didi/common/ui/citypicker/SideBar;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$5;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$5;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/citypicker/SideBar;->setOnTouchingLetterChangedListener(Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$6;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$6;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/citypicker/CityPickActivity$7;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/citypicker/CityPickActivity$7;-><init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 124
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 125
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0252

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->back()V

    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->overridePendingTransition(II)V

    .line 95
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/business/Business;

    iput-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    .line 98
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->setTitleBar()V

    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->initViews()V

    .line 100
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->setListeners()V

    .line 101
    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity;->business:Lcom/didi/frame/business/Business;

    invoke-direct {p0, v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->initData(Lcom/didi/frame/business/Business;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->performGetCityList()V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 407
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 408
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 409
    return-void
.end method
