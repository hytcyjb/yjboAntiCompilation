.class public Lcom/didi/taxi/model/TaxiOrderState;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiOrderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/model/TaxiOrderState$TripPoi;,
        Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;
    }
.end annotation


# instance fields
.field public coupon:Lcom/didi/taxi/model/TaxiCoupon;

.field public creditMsg:Ljava/lang/String;

.field public driver:Lcom/didi/taxi/model/TaxiDriver;

.field public driverCount:I

.field public driverNumPK:I

.field public foundUrl:Ljava/lang/String;

.field public foundVersion:I

.field public gsflow_tip:Ljava/lang/String;

.field public hasMatchTripFriend:Z

.field public imSwitch:I

.field public isArrieved:Z

.field public isDistanceCheck:Z

.field public isPush:Z

.field public isTimeout:Z

.field public mListTripPois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState$TripPoi;",
            ">;"
        }
    .end annotation
.end field

.field public mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

.field public pkWait:I

.field public position:Lcom/didi/taxi/model/TaxiPosition;

.field public status:I

.field public tipFee:Ljava/lang/String;

.field public trip_bubble_info:Ljava/lang/String;

.field public trip_friend_cancel_content:Ljava/lang/String;

.field public trip_friend_status:I

.field public trip_friend_terminate_content:Ljava/lang/String;

.field public trip_notice:Ljava/lang/String;

.field public trip_type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 30
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->driverCount:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrderState;->tipFee:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->imSwitch:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrderState;->gsflow_tip:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/model/TaxiOrderState;->hasMatchTripFriend:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    .line 218
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "obj"

    .prologue
    .line 88
    const-string v8, "timeout"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->isTimeout:Z

    .line 89
    const-string v8, "is_push"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->isPush:Z

    .line 90
    const-string v8, "isArrivedLimited"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    .line 91
    const-string v8, "coord_distance_enable"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->isDistanceCheck:Z

    .line 93
    const-string v8, "discovery_html"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->foundUrl:Ljava/lang/String;

    .line 94
    const-string v8, "discovery_version"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->foundVersion:I

    .line 95
    const-string v8, "gsflow_tip"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->gsflow_tip:Ljava/lang/String;

    .line 97
    const-string v8, "open_im"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    const-string v8, "open_im"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->imSwitch:I

    .line 101
    :cond_0
    const-string v8, "credit_txt"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->creditMsg:Ljava/lang/String;

    .line 102
    const-string v8, "driver_num"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->driverCount:I

    .line 103
    const-string v8, "driver_num_pk"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->driverNumPK:I

    .line 104
    const-string v8, "tip_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->tipFee:Ljava/lang/String;

    .line 105
    const-string v8, "pk_wait"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->pkWait:I

    .line 106
    iget v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->pkWait:I

    if-nez v8, :cond_1

    .line 107
    const/4 v8, 0x6

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->pkWait:I

    .line 109
    :cond_1
    const-string v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    .line 110
    iget v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    if-gtz v8, :cond_2

    .line 111
    const-string v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    .line 113
    :cond_2
    const-string v8, "driver"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    const-string v8, "driver"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    .local v1, driverObj:Lorg/json/JSONObject;
    new-instance v8, Lcom/didi/taxi/model/TaxiDriver;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiDriver;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    .line 116
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v8, v1}, Lcom/didi/taxi/model/TaxiDriver;->parse(Lorg/json/JSONObject;)V

    .line 119
    .end local v1           #driverObj:Lorg/json/JSONObject;
    :cond_3
    const-string v8, "pos"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 120
    const-string v8, "pos"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    .local v5, positionObj:Lorg/json/JSONObject;
    new-instance v8, Lcom/didi/taxi/model/TaxiPosition;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiPosition;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    .line 122
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    invoke-virtual {v8, v5}, Lcom/didi/taxi/model/TaxiPosition;->parse(Lorg/json/JSONObject;)V

    .line 124
    .end local v5           #positionObj:Lorg/json/JSONObject;
    :cond_4
    const-string v8, "coupon"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 125
    const-string v8, "coupon"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    .local v3, jsonObject:Lorg/json/JSONObject;
    new-instance v8, Lcom/didi/taxi/model/TaxiCoupon;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiCoupon;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    .line 127
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v8, v3}, Lcom/didi/taxi/model/TaxiCoupon;->parse(Lorg/json/JSONObject;)V

    .line 131
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :cond_5
    const-string v8, "trip_notice"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_notice:Ljava/lang/String;

    .line 132
    const-string v8, "trip_friend_status"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    .line 133
    const-string v8, "trip_bubble_info"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_bubble_info:Ljava/lang/String;

    .line 134
    const-string v8, "trip_friend_cancel_content"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_cancel_content:Ljava/lang/String;

    .line 135
    const-string v8, "trip_friend_terminate_content"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_terminate_content:Ljava/lang/String;

    .line 137
    const-string v8, "trip_friend_info"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 138
    .local v4, jsonTripInfo:Lorg/json/JSONObject;
    if-eqz v4, :cond_6

    .line 139
    new-instance v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    invoke-direct {v8, p0}, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;-><init>(Lcom/didi/taxi/model/TaxiOrderState;)V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    .line 141
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    const-string v9, "head_url"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->head_url:Ljava/lang/String;

    .line 142
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    const-string v9, "nick"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->nick:Ljava/lang/String;

    .line 143
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    const-string v9, "from_name"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->from_name:Ljava/lang/String;

    .line 144
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    const-string v9, "end_name"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->end_name:Ljava/lang/String;

    .line 145
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    const-string v9, "content"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->content:Ljava/lang/String;

    .line 146
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->hasMatchTripFriend:Z

    .line 149
    :cond_6
    const-string v8, "trip_pois"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 150
    .local v0, arrTripPois:Lorg/json/JSONArray;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 151
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 152
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 154
    .local v6, temp:Lorg/json/JSONObject;
    new-instance v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-direct {v7, p0}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;-><init>(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 155
    .local v7, tripPoi:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lng"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->lng:Ljava/lang/String;

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lat"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->lat:Ljava/lang/String;

    .line 157
    const-string v8, "name"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->name:Ljava/lang/String;

    .line 158
    const-string v8, "point_type"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->point_type:I

    .line 159
    const-string v8, "is_trip_friend"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->is_trip_friend:I

    .line 161
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mListTripPois:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 88
    .end local v0           #arrTripPois:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #jsonTripInfo:Lorg/json/JSONObject;
    .end local v6           #temp:Lorg/json/JSONObject;
    .end local v7           #tripPoi:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 89
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 90
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 91
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 165
    .restart local v0       #arrTripPois:Lorg/json/JSONArray;
    .restart local v4       #jsonTripInfo:Lorg/json/JSONObject;
    :cond_b
    const-string v8, "trip_type"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_type:I

    .line 166
    iget v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 167
    iget v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    if-eqz v8, :cond_e

    .line 168
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_type:I

    .line 174
    :cond_d
    :goto_5
    return-void

    .line 170
    :cond_e
    const/4 v8, 0x0

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrderState;->trip_type:I

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiOrderState [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isArrieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->isTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->isPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->driverCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDistanceCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->isDistanceCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creditMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->creditMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrderState;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
