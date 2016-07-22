.class public Lcom/didi/taxi/price/TaxiPriceAdapter;
.super Lcom/didi/frame/price/PriceAdapter;
.source "TaxiPriceAdapter.java"


# static fields
.field private static instance:Lcom/didi/taxi/price/TaxiPriceAdapter;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceAdapter;-><init>(Lcom/didi/frame/business/Business;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/didi/taxi/price/TaxiPriceAdapter;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/didi/taxi/price/TaxiPriceAdapter;->instance:Lcom/didi/taxi/price/TaxiPriceAdapter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/didi/taxi/price/TaxiPriceAdapter;

    invoke-direct {v0}, Lcom/didi/taxi/price/TaxiPriceAdapter;-><init>()V

    sput-object v0, Lcom/didi/taxi/price/TaxiPriceAdapter;->instance:Lcom/didi/taxi/price/TaxiPriceAdapter;

    .line 23
    :cond_0
    sget-object v0, Lcom/didi/taxi/price/TaxiPriceAdapter;->instance:Lcom/didi/taxi/price/TaxiPriceAdapter;

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
    .line 32
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getTaxiCityPriceById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPriceTriggerText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cityId"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getTaxiCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 39
    .local v0, city:Lcom/didi/common/model/City;
    const-string v1, "\u5c0f\u8d39"

    .line 40
    .local v1, str:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 46
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 43
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/didi/common/model/City;->tipTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v1, v0, Lcom/didi/common/model/City;->tipTitle:Ljava/lang/String;

    goto :goto_0
.end method
