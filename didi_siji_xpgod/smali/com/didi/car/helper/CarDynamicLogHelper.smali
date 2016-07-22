.class public Lcom/didi/car/helper/CarDynamicLogHelper;
.super Ljava/lang/Object;
.source "CarDynamicLogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V
    .locals 11
    .parameter "business"
    .parameter "eventId"

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v8, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v8, p0, :cond_4

    .line 33
    sget-object v8, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v8}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    .end local v2           #carOrder:Lcom/didi/car/model/CarOrder;
    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 37
    .restart local v2       #carOrder:Lcom/didi/car/model/CarOrder;
    :cond_0
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v6, log:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "event_id"

    invoke-virtual {v6, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v8, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v8, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/didi/common/util/Utils;->formatDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    .line 43
    .local v7, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    .line 44
    .local v4, end:Lcom/didi/common/model/Address;
    if-eqz v7, :cond_1

    .line 45
    const-string v8, "flng"

    iget-object v9, v7, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v8, "flat"

    iget-object v9, v7, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_1
    if-eqz v4, :cond_2

    .line 49
    const-string v8, "tlat"

    iget-object v9, v4, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v8, "tlng"

    iget-object v9, v4, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_2
    const-string v8, "area"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-object v8, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v8, p0, :cond_5

    .line 54
    const-string v8, "product_id"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_3
    :goto_1
    const-string v8, "app_version"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v8, "system_type"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v8, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    if-eqz v2, :cond_6

    iget-object v8, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v8, :cond_6

    .line 62
    const-string v8, "dynamic"

    iget-object v9, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v9, v9, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    iget-object v8, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-virtual {v8}, Lcom/didi/car/model/CarEstimatePrice;->getAllSelectedCarId()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-virtual {v8}, Lcom/didi/car/model/CarEstimatePrice;->getAllSelectedCarId()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v8, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-virtual {v8}, Lcom/didi/car/model/CarEstimatePrice;->getAllSelectedCarId()Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, carIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, index:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 67
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 34
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #carIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #end:Lcom/didi/common/model/Address;
    .end local v5           #index:I
    .end local v6           #log:Lorg/json/JSONObject;
    .end local v7           #start:Lcom/didi/common/model/Address;
    :cond_4
    sget-object v8, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v8, p0, :cond_0

    .line 35
    sget-object v8, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v8}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    .end local v2           #carOrder:Lcom/didi/car/model/CarOrder;
    check-cast v2, Lcom/didi/car/model/CarOrder;

    .restart local v2       #carOrder:Lcom/didi/car/model/CarOrder;
    goto/16 :goto_0

    .line 55
    .restart local v4       #end:Lcom/didi/common/model/Address;
    .restart local v6       #log:Lorg/json/JSONObject;
    .restart local v7       #start:Lcom/didi/common/model/Address;
    :cond_5
    :try_start_1
    sget-object v8, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v8, p0, :cond_3

    .line 56
    const-string v8, "product_id"

    const-string v9, "3"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    .end local v4           #end:Lcom/didi/common/model/Address;
    .end local v7           #start:Lcom/didi/common/model/Address;
    :catch_0
    move-exception v3

    .line 73
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .end local v3           #e:Lorg/json/JSONException;
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 76
    const/16 v8, 0x3e9

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 78
    :cond_7
    return-void

    .line 69
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #carIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4       #end:Lcom/didi/common/model/Address;
    .restart local v5       #index:I
    .restart local v7       #start:Lcom/didi/common/model/Address;
    :cond_8
    :try_start_2
    const-string v8, "require_car_level"

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public static createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "business"
    .parameter "eventId"
    .parameter "channel"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v3, p0, :cond_5

    .line 86
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    .end local v0           #carOrder:Lcom/didi/car/model/CarOrder;
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 90
    .restart local v0       #carOrder:Lcom/didi/car/model/CarOrder;
    :cond_0
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v2, log:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "event_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v3, "client_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/didi/common/util/Utils;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    const-string v3, "order_id"

    iget-object v4, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_1
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v3, p0, :cond_6

    .line 99
    const-string v3, "product_id"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_2
    :goto_1
    const-string v3, "app_version"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v3, "system_type"

    const-string v4, "andriod"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    const-string v3, "channel"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 112
    const/16 v3, 0x3e9

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 114
    :cond_4
    return-void

    .line 87
    .end local v2           #log:Lorg/json/JSONObject;
    :cond_5
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v3, p0, :cond_0

    .line 88
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    .end local v0           #carOrder:Lcom/didi/car/model/CarOrder;
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .restart local v0       #carOrder:Lcom/didi/car/model/CarOrder;
    goto :goto_0

    .line 100
    .restart local v2       #log:Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v3, p0, :cond_2

    .line 101
    const-string v3, "product_id"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
