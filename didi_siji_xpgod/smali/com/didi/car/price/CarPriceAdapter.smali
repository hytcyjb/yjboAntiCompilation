.class public Lcom/didi/car/price/CarPriceAdapter;
.super Lcom/didi/frame/price/PriceAdapter;
.source "CarPriceAdapter.java"


# static fields
.field private static instance:Lcom/didi/car/price/CarPriceAdapter;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceAdapter;-><init>(Lcom/didi/frame/business/Business;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/didi/car/price/CarPriceAdapter;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/car/price/CarPriceAdapter;->instance:Lcom/didi/car/price/CarPriceAdapter;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/didi/car/price/CarPriceAdapter;

    invoke-direct {v0}, Lcom/didi/car/price/CarPriceAdapter;-><init>()V

    sput-object v0, Lcom/didi/car/price/CarPriceAdapter;->instance:Lcom/didi/car/price/CarPriceAdapter;

    .line 24
    :cond_0
    sget-object v0, Lcom/didi/car/price/CarPriceAdapter;->instance:Lcom/didi/car/price/CarPriceAdapter;

    return-object v0
.end method


# virtual methods
.method public getPriceList(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 33
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getCarCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getPriceTriggerText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cityId"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getCarCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 41
    .local v0, city:Lcom/didi/common/model/City;
    const-string v1, "\u5c0f\u8d39"

    .line 42
    .local v1, str:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 48
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 45
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/didi/common/model/City;->wanliuTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v1, v0, Lcom/didi/common/model/City;->wanliuTitle:Ljava/lang/String;

    goto :goto_0
.end method
