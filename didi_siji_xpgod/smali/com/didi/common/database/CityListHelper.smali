.class public Lcom/didi/common/database/CityListHelper;
.super Ljava/lang/Object;
.source "CityListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;
    }
.end annotation


# static fields
.field private static final CAR_GUIDE_FLAG:Ljava/lang/String; = "car_guide_flag"

.field private static final CAR_SEARCH_WHERE:Ljava/lang/String; = " open_car=1 and city_id="

.field private static final CAR_SEARCH_WHERE_BY_NAME:Ljava/lang/String; = " open_car=1 and city_name like "

.field private static final SEARCH_CITY:Ljava/lang/String; = " open_taxi=1 and city_name like "

.field private static final SEARCH_WHERE:Ljava/lang/String; = "city_id="

.field private static final TAXI_SEARCH_WHERE:Ljava/lang/String; = " open_taxi=1 and city_id="

.field private static final TAXI_SEARCH_WHERE_BY_NAME:Ljava/lang/String; = " open_taxi=1 and city_name like "

.field private static cacheCityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private static cachePriceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheWaitTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static carAvailable:Z

.field private static carAvailableListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cityCarUri:Landroid/net/Uri;

.field private static cityIndexUri:Landroid/net/Uri;

.field private static cityTaxiUri:Landroid/net/Uri;

.field private static cityUri:Landroid/net/Uri;

.field private static hashmapCityGuideFlag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/car/model/CarGuideFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static isOpenCar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/database/CityListHelper;->hashmapCityGuideFlag:Ljava/util/Map;

    .line 57
    const-string v0, "content://com.diditaxi.psnger/city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.diditaxi.psnger/city_index"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cityIndexUri:Landroid/net/Uri;

    .line 59
    const-string v0, "content://com.diditaxi.psnger/taxi_hot_city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cityTaxiUri:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.diditaxi.psnger/car_hot_city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cityCarUri:Landroid/net/Uri;

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/database/CityListHelper;->isOpenCar:Z

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/database/CityListHelper;->carAvailableListeners:Ljava/util/HashMap;

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cachePriceMap:Ljava/util/Map;

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cacheWaitTimeMap:Ljava/util/Map;

    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/database/CityListHelper;->cacheCityMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cityTaxiUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/model/TaxiHotCity;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getTaxiCityContentValues(Lcom/didi/common/model/TaxiHotCity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cityCarUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/model/CarHotCity;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCarCityContentValues(Lcom/didi/common/model/CarHotCity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cityIndexUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/model/CityIndex;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCityIndexContentValues(Lcom/didi/common/model/CityIndex;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/model/City;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCityContentValues(Lcom/didi/common/model/City;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static addCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCarAvailabelListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/didi/common/database/CityListHelper;->carAvailableListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addCityGuideFlag(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 67
    sget-object v0, Lcom/didi/common/database/CityListHelper;->hashmapCityGuideFlag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    sget-object v0, Lcom/didi/common/database/CityListHelper;->hashmapCityGuideFlag:Ljava/util/Map;

    const-string v1, "car_guide_flag"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static checkFlierIsOpen()V
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isFlierOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2, v3}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 296
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 298
    :cond_0
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 308
    .local v1, panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :goto_0
    return-void

    .line 300
    .end local v1           #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    :cond_1
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v1

    .line 301
    .restart local v1       #panel:Lcom/didi/frame/switcher/SwitcherPanel;
    if-eqz v1, :cond_2

    .line 302
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemIndex(Lcom/didi/frame/business/Business;)I

    move-result v0

    .line 303
    .local v0, indexTaxi:I
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2, v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;I)V

    goto :goto_0

    .line 305
    .end local v0           #indexTaxi:I
    :cond_2
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public static checkTopicIsOpen()V
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isTopicRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 284
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 286
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method private static getAllCityList(Lcom/didi/frame/business/Business;)Ljava/util/List;
    .locals 9
    .parameter "biz"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 487
    const-string v3, ""

    .line 488
    .local v3, sql:Ljava/lang/String;
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "open_taxi=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 495
    .local v7, cityIndexList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityIndexUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 496
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 497
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #cityIndexList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .restart local v7       #cityIndexList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    new-instance v6, Lcom/didi/common/model/CityIndex;

    invoke-direct {v6}, Lcom/didi/common/model/CityIndex;-><init>()V

    .line 500
    .local v6, c:Lcom/didi/common/model/CityIndex;
    const-string v0, "city_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/didi/common/model/CityIndex;->cityID:I

    .line 501
    const-string v0, "city_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/CityIndex;->cityName:Ljava/lang/String;

    .line 502
    const-string v0, "group_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    .line 503
    const-string v0, "tags"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/CityIndex;->tags:Ljava/lang/String;

    .line 504
    const-string v0, "open_taxi"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/didi/common/model/CityIndex;->openTaxi:I

    .line 505
    const-string v0, "open_Car"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/didi/common/model/CityIndex;->openCar:I

    .line 506
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 490
    .end local v6           #c:Lcom/didi/common/model/CityIndex;
    .end local v7           #cityIndexList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "open_car=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 508
    .restart local v7       #cityIndexList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_4
    return-object v7
.end method

.method public static getBusinessList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "cityID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/business/Business;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/frame/business/Business;>;"
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isFlierOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_2
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    sget-object v1, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    sget-object v1, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_4
    return-object v0
.end method

.method private static getCacheCityById(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 1
    .parameter "cityId"

    .prologue
    .line 738
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheCityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheCityMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/City;

    goto :goto_0
.end method

.method private static getCacheCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cachePriceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 728
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cachePriceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static getCacheCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheWaitTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheWaitTimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static getCarAllCityList()Ljava/util/List;
    .locals 1
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
    .line 414
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getAllCityList(Lcom/didi/frame/business/Business;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCarCityById(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 3
    .parameter "cityId"

    .prologue
    .line 424
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1, p0}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 425
    .local v0, city:Lcom/didi/common/model/City;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCar2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 426
    return-object v0
.end method

.method private static getCarCityContentValues(Lcom/didi/common/model/CarHotCity;)Landroid/content/ContentValues;
    .locals 3
    .parameter "city"

    .prologue
    .line 760
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 761
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "city_id"

    invoke-virtual {p0}, Lcom/didi/common/model/CarHotCity;->getCityID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string v1, "city_name"

    invoke-virtual {p0}, Lcom/didi/common/model/CarHotCity;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v1, "group_name"

    invoke-virtual {p0}, Lcom/didi/common/model/CarHotCity;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v1, "tags"

    invoke-virtual {p0}, Lcom/didi/common/model/CarHotCity;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-object v0
.end method

.method public static getCarCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0, p0}, Lcom/didi/common/database/CityListHelper;->getCityPriceById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getCarHotCityList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CarHotCity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 467
    const/4 v8, 0x0

    .line 468
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CarHotCity;>;"
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityCarUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 469
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 470
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CarHotCity;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CarHotCity;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v6, Lcom/didi/common/model/CarHotCity;

    invoke-direct {v6}, Lcom/didi/common/model/CarHotCity;-><init>()V

    .line 473
    .local v6, c:Lcom/didi/common/model/CarHotCity;
    const-string v0, "city_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/didi/common/model/CarHotCity;->setCityID(I)V

    .line 474
    const-string v0, "city_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/didi/common/model/CarHotCity;->setCityName(Ljava/lang/String;)V

    .line 475
    const-string v0, "group_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/didi/common/model/CarHotCity;->setGroupName(Ljava/lang/String;)V

    .line 476
    const-string v0, "tags"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/didi/common/model/CarHotCity;->setTags(Ljava/lang/String;)V

    .line 477
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    .end local v6           #c:Lcom/didi/common/model/CarHotCity;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_1
    return-object v8
.end method

.method public static getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 8
    .parameter "biz"
    .parameter "cityId"

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v6, v2

    .line 572
    :cond_0
    :goto_0
    return-object v6

    .line 547
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getCacheCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v6

    .line 548
    .local v6, city:Lcom/didi/common/model/City;
    if-nez v6, :cond_0

    .line 552
    const-string v3, ""

    .line 553
    .local v3, sql:Ljava/lang/String;
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    const-string v3, " open_taxi=1 and city_id="

    .line 559
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 561
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 562
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    invoke-static {v7}, Lcom/didi/common/database/CityListHelper;->parseCursorToCity(Landroid/database/Cursor;)Lcom/didi/common/model/City;

    move-result-object v6

    .line 564
    if-eqz v6, :cond_3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/didi/common/database/CityListHelper;->setCacheCityById(Ljava/lang/String;Lcom/didi/common/model/City;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCar2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/didi/common/model/City;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 570
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 555
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_4
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    :cond_5
    const-string v3, " open_car=1 and city_id="

    goto/16 :goto_1
.end method

.method public static getCityByIdForCarAvailable(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 9
    .parameter "cityId"

    .prologue
    const/4 v2, 0x0

    .line 595
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v7, v2

    .line 621
    :cond_0
    :goto_0
    return-object v7

    .line 599
    :cond_1
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    .line 601
    .local v6, biz:Lcom/didi/frame/business/Business;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getCacheCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v7

    .line 602
    .local v7, city:Lcom/didi/common/model/City;
    if-nez v7, :cond_0

    .line 606
    const-string v3, "city_id="

    .line 607
    .local v3, sql:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 610
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 611
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    invoke-static {v8}, Lcom/didi/common/database/CityListHelper;->parseCursorToCity(Landroid/database/Cursor;)Lcom/didi/common/model/City;

    move-result-object v7

    .line 613
    if-eqz v7, :cond_2

    iget v0, v7, Lcom/didi/common/model/City;->openCar:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/didi/common/database/CityListHelper;->setCacheCityById(Ljava/lang/String;Lcom/didi/common/model/City;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCar2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/didi/common/model/City;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 619
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 9
    .parameter "biz"
    .parameter "cityName"

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getCacheCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v6

    .line 516
    .local v6, city:Lcom/didi/common/model/City;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 539
    .end local v6           #city:Lcom/didi/common/model/City;
    .local v7, city:Lcom/didi/common/model/City;
    :goto_0
    return-object v7

    .line 520
    .end local v7           #city:Lcom/didi/common/model/City;
    .restart local v6       #city:Lcom/didi/common/model/City;
    :cond_0
    const-string v3, ""

    .line 521
    .local v3, sql:Ljava/lang/String;
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    const-string v3, " open_taxi=1 and city_name like "

    .line 526
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 529
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-static {v8}, Lcom/didi/common/database/CityListHelper;->parseCursorToCity(Landroid/database/Cursor;)Lcom/didi/common/model/City;

    move-result-object v6

    .line 532
    if-eqz v6, :cond_2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/didi/common/database/CityListHelper;->setCacheCityById(Ljava/lang/String;Lcom/didi/common/model/City;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCar2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/didi/common/model/City;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 537
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 539
    .end local v6           #city:Lcom/didi/common/model/City;
    .restart local v7       #city:Lcom/didi/common/model/City;
    goto/16 :goto_0

    .line 523
    .end local v7           #city:Lcom/didi/common/model/City;
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v6       #city:Lcom/didi/common/model/City;
    :cond_4
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_5
    const-string v3, " open_car=1 and city_name like "

    goto/16 :goto_1
.end method

.method private static getCityContentValues(Lcom/didi/common/model/City;)Landroid/content/ContentValues;
    .locals 3
    .parameter "city"

    .prologue
    .line 780
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "city_id"

    iget v2, p0, Lcom/didi/common/model/City;->cityID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v1, "city_name"

    iget-object v2, p0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "taxi_tip_title"

    iget-object v2, p0, Lcom/didi/common/model/City;->tipTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v1, "taxi_tip_price"

    iget-object v2, p0, Lcom/didi/common/model/City;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v1, "car_tip_title"

    iget-object v2, p0, Lcom/didi/common/model/City;->wanliuTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "car_tip_price"

    iget-object v2, p0, Lcom/didi/common/model/City;->wanliuTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "wait_time"

    iget-object v2, p0, Lcom/didi/common/model/City;->waitTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v1, "call_type"

    iget v2, p0, Lcom/didi/common/model/City;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v1, "text_call_tip"

    iget-object v2, p0, Lcom/didi/common/model/City;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v1, "city_lng"

    iget-object v2, p0, Lcom/didi/common/model/City;->cityLng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v1, "city_lat"

    iget-object v2, p0, Lcom/didi/common/model/City;->cityLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v1, "limits"

    iget v2, p0, Lcom/didi/common/model/City;->limits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v1, "open_taxi"

    iget v2, p0, Lcom/didi/common/model/City;->openTaxi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v1, "open_Car"

    iget v2, p0, Lcom/didi/common/model/City;->openCar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const-string v1, "close_Input"

    iget v2, p0, Lcom/didi/common/model/City;->closeInput:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    const-string v1, "close_remark"

    iget v2, p0, Lcom/didi/common/model/City;->closeRemark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    const-string v1, "carpool_trip_isopen"

    iget v2, p0, Lcom/didi/common/model/City;->isOpenShareTrip:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string v1, "carpool_trip_type"

    iget v2, p0, Lcom/didi/common/model/City;->share_trip_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    return-object v0
.end method

.method public static getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/didi/common/database/CityListHelper;->hashmapCityGuideFlag:Ljava/util/Map;

    const-string v1, "car_guide_flag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarGuideFlag;

    return-object v0
.end method

.method public static getCityIdByCity(Ljava/lang/String;)I
    .locals 9
    .parameter "city"

    .prologue
    const/4 v2, 0x0

    .line 577
    const/4 v7, -0x1

    .line 578
    .local v7, id:I
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    .line 591
    .end local v7           #id:I
    .local v8, id:I
    :goto_0
    return v8

    .line 581
    .end local v8           #id:I
    .restart local v7       #id:I
    :cond_0
    const-string v3, ""

    .line 582
    .local v3, sql:Ljava/lang/String;
    const-string v3, " open_taxi=1 and city_name like "

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 585
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 586
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "city_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 589
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    .line 591
    .end local v7           #id:I
    .restart local v8       #id:I
    goto :goto_0
.end method

.method private static getCityIndexContentValues(Lcom/didi/common/model/CityIndex;)Landroid/content/ContentValues;
    .locals 3
    .parameter "city"

    .prologue
    .line 769
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "city_id"

    iget v2, p0, Lcom/didi/common/model/CityIndex;->cityID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string v1, "city_name"

    iget-object v2, p0, Lcom/didi/common/model/CityIndex;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "tags"

    iget-object v2, p0, Lcom/didi/common/model/CityIndex;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "open_taxi"

    iget v2, p0, Lcom/didi/common/model/CityIndex;->openTaxi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v1, "open_Car"

    iget v2, p0, Lcom/didi/common/model/CityIndex;->openCar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    return-object v0
.end method

.method public static getCityPriceById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "biz"
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/database/CityListHelper;->getCacheCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 654
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    .line 677
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    .line 658
    .end local v3           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 660
    .local v0, city:Lcom/didi/common/model/City;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 662
    const/4 v5, 0x0

    .line 663
    .local v5, tips:Ljava/lang/String;
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 664
    iget-object v5, v0, Lcom/didi/common/model/City;->tip:Ljava/lang/String;

    .line 668
    :cond_1
    :goto_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, tipArr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 670
    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 676
    .end local v1           #i:I
    .end local v4           #tipArr:[Ljava/lang/String;
    .end local v5           #tips:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/didi/common/database/CityListHelper;->setCacheCityPriceById(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v3, v2

    .line 677
    .restart local v3       #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 665
    .end local v3           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5       #tips:Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 666
    :cond_4
    iget-object v5, v0, Lcom/didi/common/model/City;->wanliuTip:Ljava/lang/String;

    goto :goto_1

    .line 673
    .restart local v1       #i:I
    .restart local v4       #tipArr:[Ljava/lang/String;
    :cond_5
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static getCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCacheCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 683
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    .line 704
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    .line 687
    .end local v3           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v6, p0}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 688
    .local v0, city:Lcom/didi/common/model/City;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 690
    const/4 v5, 0x0

    .line 691
    .local v5, tips:Ljava/lang/String;
    iget-object v5, v0, Lcom/didi/common/model/City;->waitTime:Ljava/lang/String;

    .line 692
    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 693
    .restart local v3       #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 695
    .end local v3           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, tipArr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 697
    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 703
    .end local v1           #i:I
    .end local v4           #tipArr:[Ljava/lang/String;
    .end local v5           #tips:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v2}, Lcom/didi/common/database/CityListHelper;->setCacheCityWaitTimeById(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v3, v2

    .line 704
    .restart local v3       #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 700
    .end local v3           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1       #i:I
    .restart local v4       #tipArr:[Ljava/lang/String;
    .restart local v5       #tips:Ljava/lang/String;
    :cond_3
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getCloseInputByCurrentCity()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCurrentCity()Lcom/didi/common/model/City;

    move-result-object v0

    .line 224
    .local v0, city:Lcom/didi/common/model/City;
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return v2

    :cond_0
    iget v3, v0, Lcom/didi/common/model/City;->closeInput:I

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getCloseRemarkByCurrentCity()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCurrentCity()Lcom/didi/common/model/City;

    move-result-object v0

    .line 237
    .local v0, city:Lcom/didi/common/model/City;
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return v2

    :cond_0
    iget v3, v0, Lcom/didi/common/model/City;->closeRemark:I

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getCurrentCity()Lcom/didi/common/model/City;
    .locals 5

    .prologue
    .line 244
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, cityid:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 246
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v1

    .line 247
    .local v1, cityObj:Lcom/didi/common/model/City;
    if-eqz v1, :cond_0

    .line 248
    iget v2, v1, Lcom/didi/common/model/City;->cityID:I

    .line 251
    .end local v1           #cityObj:Lcom/didi/common/model/City;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/database/CityListHelper;->getTaxiCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 252
    .local v0, city:Lcom/didi/common/model/City;
    return-object v0
.end method

.method public static getOpenCarByCityId(Ljava/lang/String;)Z
    .locals 4
    .parameter "cityID"

    .prologue
    const/4 v1, 0x1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenCarByCityId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCityByIdForCarAvailable(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 202
    .local v0, city:Lcom/didi/common/model/City;
    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenCarByCityId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " city:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 213
    iget v2, v0, Lcom/didi/common/model/City;->openCar:I

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOpenCarByCurrentCity()Z
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, cityid:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 183
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 184
    .local v0, cityObj:Lcom/didi/common/model/City;
    if-eqz v0, :cond_1

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------city id db:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " city:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    iget v1, v0, Lcom/didi/common/model/City;->cityID:I

    .line 195
    .end local v0           #cityObj:Lcom/didi/common/model/City;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 188
    .restart local v0       #cityObj:Lcom/didi/common/model/City;
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, currentCityId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTaxiAllCityList()Ljava/util/List;
    .locals 1
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
    .line 409
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getAllCityList(Lcom/didi/frame/business/Business;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTaxiCityById(Ljava/lang/String;)Lcom/didi/common/model/City;
    .locals 1
    .parameter "cityId"

    .prologue
    .line 419
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, p0}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    return-object v0
.end method

.method private static getTaxiCityContentValues(Lcom/didi/common/model/TaxiHotCity;)Landroid/content/ContentValues;
    .locals 3
    .parameter "city"

    .prologue
    .line 751
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 752
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "city_id"

    iget v2, p0, Lcom/didi/common/model/TaxiHotCity;->cityID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    const-string v1, "city_name"

    iget-object v2, p0, Lcom/didi/common/model/TaxiHotCity;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/didi/common/model/TaxiHotCity;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v1, "tags"

    iget-object v2, p0, Lcom/didi/common/model/TaxiHotCity;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-object v0
.end method

.method public static getTaxiCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, p0}, Lcom/didi/common/database/CityListHelper;->getCityPriceById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getTaxiCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getTaxiHotCityList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/TaxiHotCity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 447
    const/4 v8, 0x0

    .line 448
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/TaxiHotCity;>;"
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/didi/common/database/CityListHelper;->cityTaxiUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 450
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/TaxiHotCity;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/TaxiHotCity;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v6, Lcom/didi/common/model/TaxiHotCity;

    invoke-direct {v6}, Lcom/didi/common/model/TaxiHotCity;-><init>()V

    .line 453
    .local v6, c:Lcom/didi/common/model/TaxiHotCity;
    const-string v0, "city_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/didi/common/model/TaxiHotCity;->cityID:I

    .line 454
    const-string v0, "city_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/TaxiHotCity;->cityName:Ljava/lang/String;

    .line 455
    const-string v0, "group_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/TaxiHotCity;->groupName:Ljava/lang/String;

    .line 456
    const-string v0, "tags"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/didi/common/model/TaxiHotCity;->tags:Ljava/lang/String;

    .line 457
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v6           #c:Lcom/didi/common/model/TaxiHotCity;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_1
    return-object v8
.end method

.method public static insertCarHotCity(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/CarHotCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/CarHotCity;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/database/CityListHelper$2;

    invoke-direct {v1, p0}, Lcom/didi/common/database/CityListHelper$2;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

.method public static insertCity(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/City;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/database/CityListHelper$4;

    invoke-direct {v1, p0}, Lcom/didi/common/database/CityListHelper$4;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method public static insertCityIndex(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/CityIndex;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/database/CityListHelper$3;

    invoke-direct {v1, p0}, Lcom/didi/common/database/CityListHelper$3;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public static insertTaxiHotCity(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/TaxiHotCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/TaxiHotCity;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/database/CityListHelper$1;

    invoke-direct {v1, p0}, Lcom/didi/common/database/CityListHelper$1;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method

.method public static isCarAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 258
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 259
    .local v0, cid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    :cond_0
    sput-boolean v2, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    .line 271
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    return v2

    .line 262
    :cond_2
    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->getCityByIdForCarAvailable(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v1

    .line 263
    .local v1, city:Lcom/didi/common/model/City;
    if-nez v1, :cond_3

    .line 264
    sput-boolean v2, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    goto :goto_0

    .line 266
    :cond_3
    iget v3, v1, Lcom/didi/common/model/City;->openCar:I

    if-ne v3, v2, :cond_4

    :goto_1
    sput-boolean v2, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isFlierAbility()Z
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    return v0
.end method

.method public static isOpenActivity()Z
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    .line 364
    .local v0, preferences:Lcom/didi/common/config/Preferences;
    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getOpenActivity()Z

    move-result v1

    return v1
.end method

.method public static isOpenCarForBookingCity()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/didi/common/database/CityListHelper;->isOpenCar:Z

    return v0
.end method

.method public static isOpenFlier()Z
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierOpen()Z

    move-result v0

    return v0
.end method

.method public static notifyCarAvailabelChange(Z)V
    .locals 5
    .parameter "carAvailable"

    .prologue
    .line 336
    sget-object v3, Lcom/didi/common/database/CityListHelper;->carAvailableListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 339
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 341
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;>;"
    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    .line 344
    .local v1, listener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;
    if-eqz v1, :cond_0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCarAvailabelChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 347
    invoke-interface {v1, p0}, Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;->onChange(Z)V

    goto :goto_0

    .line 349
    .end local v1           #listener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;>;"
    :cond_1
    return-void
.end method

.method private static parseCursorToCity(Landroid/database/Cursor;)Lcom/didi/common/model/City;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 625
    if-nez p0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    .line 628
    :cond_0
    new-instance v0, Lcom/didi/common/model/City;

    invoke-direct {v0}, Lcom/didi/common/model/City;-><init>()V

    .line 629
    .local v0, city:Lcom/didi/common/model/City;
    const-string v1, "city_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->cityID:I

    .line 630
    const-string v1, "city_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    .line 631
    const-string v1, "taxi_tip_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->tipTitle:Ljava/lang/String;

    .line 632
    const-string v1, "taxi_tip_price"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->tip:Ljava/lang/String;

    .line 633
    const-string v1, "wait_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->waitTime:Ljava/lang/String;

    .line 634
    const-string v1, "car_tip_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->wanliuTitle:Ljava/lang/String;

    .line 635
    const-string v1, "car_tip_price"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->wanliuTip:Ljava/lang/String;

    .line 636
    const-string v1, "call_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->mType:I

    .line 637
    const-string v1, "text_call_tip"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->mContent:Ljava/lang/String;

    .line 638
    const-string v1, "city_lng"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->cityLng:Ljava/lang/String;

    .line 639
    const-string v1, "city_lat"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/City;->cityLat:Ljava/lang/String;

    .line 640
    const-string v1, "limits"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->limits:I

    .line 641
    const-string v1, "open_taxi"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->openTaxi:I

    .line 642
    const-string v1, "open_Car"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->openCar:I

    .line 643
    const-string v1, "close_Input"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->closeInput:I

    .line 644
    const-string v1, "close_remark"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->closeRemark:I

    .line 645
    const-string v1, "carpool_trip_isopen"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->isOpenShareTrip:I

    .line 646
    const-string v1, "carpool_trip_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/common/model/City;->share_trip_type:I

    goto/16 :goto_0
.end method

.method public static removeCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 330
    if-nez p0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v0, Lcom/didi/common/database/CityListHelper;->carAvailableListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setCacheCityById(Ljava/lang/String;Lcom/didi/common/model/City;)V
    .locals 1
    .parameter "cityId"
    .parameter "city"

    .prologue
    .line 745
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheCityMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 746
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheCityMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_0
    return-void
.end method

.method private static setCacheCityPriceById(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "cityId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cachePriceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cachePriceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_0
    return-void
.end method

.method private static setCacheCityWaitTimeById(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "cityId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheWaitTimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    sget-object v0, Lcom/didi/common/database/CityListHelper;->cacheWaitTimeMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_0
    return-void
.end method

.method public static setCarAvailable(Z)V
    .locals 1
    .parameter "wanliuAvailable"

    .prologue
    .line 275
    sput-boolean p0, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    .line 276
    sget-boolean v0, Lcom/didi/common/database/CityListHelper;->carAvailable:Z

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->notifyCarAvailabelChange(Z)V

    .line 277
    return-void
.end method

.method public static setOpenCarForBookingCity(Ljava/lang/String;)V
    .locals 1
    .parameter "cityId"

    .prologue
    .line 172
    invoke-static {p0}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/didi/common/database/CityListHelper;->isOpenCar:Z

    .line 173
    return-void
.end method
