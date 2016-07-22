.class public Lcom/didi/common/config/TaxiPreferences;
.super Ljava/lang/Object;
.source "TaxiPreferences.java"


# static fields
.field private static mTaxiPreferences:Lcom/didi/common/config/TaxiPreferences;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCarPoolType(I)Lorg/json/JSONObject;
    .locals 6
    .parameter "cityId"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_carpool_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, jsonCarTypeByCityId:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "carPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u57ce\u5e02\u62fc\u8f66\u610f\u613fjson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCarPoolTypeNullCity()I
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "nullcity_carpool_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/didi/common/config/TaxiPreferences;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/didi/common/config/TaxiPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/config/TaxiPreferences;->mTaxiPreferences:Lcom/didi/common/config/TaxiPreferences;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/didi/common/config/TaxiPreferences;

    invoke-direct {v0}, Lcom/didi/common/config/TaxiPreferences;-><init>()V

    sput-object v0, Lcom/didi/common/config/TaxiPreferences;->mTaxiPreferences:Lcom/didi/common/config/TaxiPreferences;

    .line 26
    :cond_0
    sget-object v0, Lcom/didi/common/config/TaxiPreferences;->mTaxiPreferences:Lcom/didi/common/config/TaxiPreferences;

    invoke-direct {v0}, Lcom/didi/common/config/TaxiPreferences;->initSharePreference()V

    .line 27
    sget-object v0, Lcom/didi/common/config/TaxiPreferences;->mTaxiPreferences:Lcom/didi/common/config/TaxiPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSharePreference()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const-string v1, "diditaxi_preferences"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/base/DidiApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    return-void
.end method

.method private setCarPoolType(IIZ)V
    .locals 6
    .parameter "cityId"
    .parameter "tripType"
    .parameter "isChangedByUser"

    .prologue
    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v2, newJsonObjectTripType:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "isChangedByUser"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    const-string v3, "trip_type"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_carpool_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, key:Ljava/lang/String;
    const-string v3, "carPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bbe\u7f6e\u5f53\u524d\u62fc\u8f66\u610f\u613f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    invoke-direct {p0, p2}, Lcom/didi/common/config/TaxiPreferences;->setCarPoolTypeNullCity(I)V

    .line 118
    return-void

    .line 110
    .end local v1           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCarPoolTypeNullCity(I)V
    .locals 2
    .parameter "carPoolType"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/common/config/TaxiPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nullcity_carpool_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method


# virtual methods
.method public getCarPoolType()I
    .locals 12

    .prologue
    .line 44
    const/4 v7, 0x1

    .line 45
    .local v7, tripType:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    .local v2, getCityStarttime:J
    sget-object v8, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v1

    .line 50
    .local v1, currentCity:Lcom/didi/common/model/City;
    const-string v8, "carPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6currentCity\u8017\u65f6:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6beb\u79d2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v1, :cond_3

    .line 52
    iget v8, v1, Lcom/didi/common/model/City;->cityID:I

    invoke-direct {p0, v8}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 53
    .local v5, jsonObject:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 54
    const-string v8, "isChangedByUser"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 55
    .local v4, isChangedByUser:Z
    const-string v8, "trip_type"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 56
    .local v6, mTripType:I
    if-nez v4, :cond_1

    .line 58
    iget v7, v1, Lcom/didi/common/model/City;->share_trip_type:I

    .line 69
    .end local v4           #isChangedByUser:Z
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #mTripType:I
    :goto_0
    const-string v0, ""

    .line 70
    .local v0, cityId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v8, "carPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "city info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  cityName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/didi/common/model/City;->groupName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " share_trip_type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/didi/common/model/City;->share_trip_type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    const-string v8, "carPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5f53\u524d\u57ce\u5e02:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u62fc\u8f66\u610f\u613f\u7c7b\u578b:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v8, "carPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6\u62fc\u8f66\u7c7b\u578b\u603b\u8017\u65f6:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6beb\u79d2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v7

    .line 60
    .end local v0           #cityId:Ljava/lang/String;
    .restart local v4       #isChangedByUser:Z
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #mTripType:I
    :cond_1
    move v7, v6

    goto/16 :goto_0

    .line 63
    .end local v4           #isChangedByUser:Z
    .end local v6           #mTripType:I
    :cond_2
    iget v7, v1, Lcom/didi/common/model/City;->share_trip_type:I

    goto/16 :goto_0

    .line 67
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolTypeNullCity()I

    move-result v7

    goto/16 :goto_0
.end method

.method public isOpenShareTrip()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 164
    .local v0, city:Lcom/didi/common/model/City;
    if-eqz v0, :cond_1

    .line 165
    const-string v3, "carPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u57ce\u5e02"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u662f\u5426\u5f00\u542f\u62fc\u8f66\u610f\u613f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/didi/common/model/City;->isOpenShareTrip:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v3, v0, Lcom/didi/common/model/City;->isOpenShareTrip:I

    if-ne v3, v1, :cond_0

    .line 169
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "carPool"

    const-string v3, "\u5f53\u524d\u57ce\u5e02\u662f\u5426\u5f00\u542f\u62fc\u8f66\u610f\u613f:city ==null  \u9ed8\u8ba4\u5173\u95ed"

    invoke-static {v1, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public setCarPoolType(I)V
    .locals 3
    .parameter "carPoolType"

    .prologue
    .line 129
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 130
    .local v0, currentCity:Lcom/didi/common/model/City;
    if-eqz v0, :cond_0

    .line 131
    iget v1, v0, Lcom/didi/common/model/City;->cityID:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/didi/common/config/TaxiPreferences;->setCarPoolType(IIZ)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/didi/common/config/TaxiPreferences;->setCarPoolTypeNullCity(I)V

    goto :goto_0
.end method
