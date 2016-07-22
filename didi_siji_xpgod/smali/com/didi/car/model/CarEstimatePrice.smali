.class public Lcom/didi/car/model/CarEstimatePrice;
.super Lcom/didi/common/model/BaseObject;
.source "CarEstimatePrice.java"


# static fields
.field public static final CONFIRM_SHOW_DIALOG_CANCEL:I = 0x0

.field public static final CONFIRM_SHOW_DIALOG_OK:I = 0x1

.field public static final DYNAMIC_PRICE_FAR:I = 0x2

.field public static final DYNAMIC_PRICE_PEAK:I = 0x1

.field public static final TAG_CAR_SELECTED:I = 0x1

.field public static final TAG_CAR_UNSELECTED:I = 0x0

.field public static final serialVersionUID:J = 0x1fd063ba367719f6L


# instance fields
.field public carModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;"
        }
    .end annotation
.end field

.field public confirmDesc:Ljava/lang/String;

.field public confirmPriceTip:Ljava/lang/String;

.field public confirmShow:I

.field public confirmTitle:Ljava/lang/String;

.field public currentSelectedIndexArray:[I

.field public description:Ljava/lang/String;

.field public discountPrice:I

.field public dynamicPriceTag:I

.field public dynamicTag:I

.field public estimatePrice:Ljava/lang/String;

.field public estimateSucc:I

.field public iconMultiCar:Ljava/lang/String;

.field public markerFare:Lcom/didi/common/model/MarkerFare;

.field public protectStatus:I

.field public serverSelectedCarIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public specailMessage:Ljava/lang/String;

.field public startDescDistance:Ljava/lang/String;

.field public startDescTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    return-void
.end method


# virtual methods
.method public countSelectedNum([I)I
    .locals 4
    .parameter "intArray"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, number:I
    if-eqz p1, :cond_1

    .line 180
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 181
    const/4 v2, 0x1

    aget v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0           #index:I
    :cond_1
    return v1
.end method

.method public countServerSelectedNum()I
    .locals 3

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, number:I
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0           #index:I
    :cond_0
    return v1
.end method

.method public getAllSelectedCarId()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, carIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v2, :cond_1

    .line 165
    const/4 v1, 0x0

    .local v1, sInt:I
    :goto_0
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 166
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 167
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarModel;

    iget v2, v2, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1           #sInt:I
    :cond_1
    return-object v0
.end method

.method public getFirstSelectedCarIndex()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 144
    const/4 v0, -0x1

    .line 145
    .local v0, index:I
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v2, :cond_0

    .line 146
    const/4 v1, 0x0

    .local v1, sInt:I
    :goto_0
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 147
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_3

    .line 148
    move v0, v1

    .line 153
    .end local v1           #sInt:I
    :cond_0
    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    :cond_1
    if-ne v0, v4, :cond_2

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_2
    return v0

    .line 146
    .restart local v1       #sInt:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "obj"

    .prologue
    const/4 v11, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 72
    const-string v9, "estimatePrice"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    .line 73
    const-string v9, "discountPrice"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    .line 74
    const-string v9, "description_tips"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->description:Ljava/lang/String;

    .line 76
    const-string v9, "is_open"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->protectStatus:I

    .line 78
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    iget v10, p0, Lcom/didi/car/model/CarEstimatePrice;->protectStatus:I

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 80
    const-string v9, "car_type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 81
    const-string v9, "car_type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 82
    .local v2, carTypeArray:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 83
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 84
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 85
    .local v5, length:I
    new-array v9, v5, [I

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    .line 87
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 88
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 89
    .local v3, carTypeObj:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 90
    new-instance v6, Lcom/didi/car/model/CarModel;

    invoke-direct {v6}, Lcom/didi/car/model/CarModel;-><init>()V

    .line 91
    .local v6, model:Lcom/didi/car/model/CarModel;
    invoke-virtual {v6, v3}, Lcom/didi/car/model/CarModel;->parse(Lorg/json/JSONObject;)V

    .line 92
    iget v9, v6, Lcom/didi/car/model/CarModel;->cDefault:I

    if-ne v9, v11, :cond_0

    .line 93
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aput v11, v9, v4

    .line 96
    :cond_0
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v6           #model:Lcom/didi/car/model/CarModel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v2           #carTypeArray:Lorg/json/JSONArray;
    .end local v3           #carTypeObj:Lorg/json/JSONObject;
    .end local v4           #index:I
    .end local v5           #length:I
    :cond_2
    const-string v9, "icon_multi_car_android"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->iconMultiCar:Ljava/lang/String;

    .line 102
    const-string v9, "estimate_succ"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->estimateSucc:I

    .line 104
    const-string v9, "min_fee_tip"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->specailMessage:Ljava/lang/String;

    .line 106
    new-instance v9, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v9}, Lcom/didi/common/model/MarkerFare;-><init>()V

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    .line 107
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    const-string v10, "estimateFee"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    .line 108
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    const-string v10, "arriveTimeTips"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    .line 109
    sget-object v9, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v10

    if-eq v9, v10, :cond_5

    .line 110
    const-string v9, "priceTag"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 111
    const-string v9, "priceTag"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 112
    .local v0, carTagArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_5

    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, tagList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/MarkerFareTag;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 115
    .restart local v5       #length:I
    const/4 v4, 0x0

    .restart local v4       #index:I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 116
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 117
    .local v1, carTagObj:Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 118
    new-instance v7, Lcom/didi/common/model/MarkerFareTag;

    invoke-direct {v7}, Lcom/didi/common/model/MarkerFareTag;-><init>()V

    .line 119
    .local v7, tag:Lcom/didi/common/model/MarkerFareTag;
    invoke-virtual {v7, v1}, Lcom/didi/common/model/MarkerFareTag;->parse(Lorg/json/JSONObject;)V

    .line 120
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v7           #tag:Lcom/didi/common/model/MarkerFareTag;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 123
    .end local v1           #carTagObj:Lorg/json/JSONObject;
    :cond_4
    iget-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iput-object v8, v9, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 127
    .end local v0           #carTagArray:Lorg/json/JSONArray;
    .end local v4           #index:I
    .end local v5           #length:I
    .end local v8           #tagList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/MarkerFareTag;>;"
    :cond_5
    const-string v9, "start_dest_distance"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->startDescDistance:Ljava/lang/String;

    .line 128
    const-string v9, "start_dest_time"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->startDescTime:Ljava/lang/String;

    .line 130
    const-string v9, "dynamic_price_tag"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->dynamicPriceTag:I

    .line 132
    const-string v9, "dynamic_flag"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->dynamicTag:I

    .line 133
    const-string v9, "confirm_show"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    .line 134
    const-string v9, "confirm_title"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->confirmTitle:Ljava/lang/String;

    .line 135
    const-string v9, "confirm_desc"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->confirmDesc:Ljava/lang/String;

    .line 136
    const-string v9, "confirm_price_tip"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/didi/car/model/CarEstimatePrice;->confirmPriceTip:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    iput v2, p0, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarEstimatePrice;->description:Ljava/lang/String;

    .line 207
    iput v2, p0, Lcom/didi/car/model/CarEstimatePrice;->estimateSucc:I

    .line 208
    iput v2, p0, Lcom/didi/car/model/CarEstimatePrice;->protectStatus:I

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarEstimatePrice;->iconMultiCar:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 211
    iput-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 212
    iput-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    .line 213
    iput-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarEstimatePrice{estimatePrice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discountPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carModelList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estimateSucc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarEstimatePrice;->estimateSucc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSelectedIndexArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protectStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarEstimatePrice;->protectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specailMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->specailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconMultiCar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->iconMultiCar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverSelectedCarIndexList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", markerFare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDescDistance=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->startDescDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDescTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarEstimatePrice;->startDescTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
