.class public Lcom/didi/car/helper/CarPushHelper;
.super Ljava/lang/Object;
.source "CarPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;,
        Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;,
        Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;,
        Lcom/didi/car/helper/CarPushHelper$WxAgentListener;,
        Lcom/didi/car/helper/CarPushHelper$PayResultListener;,
        Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;,
        Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;,
        Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;,
        Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;,
        Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;,
        Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;,
        Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;
    }
.end annotation


# static fields
.field public static CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

.field public static HIT_MESSAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onOrderStatusMessageReceived(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onCommonMessageReceived(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onOrderRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onOrderNewRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onOrderTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onOrderNewTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/didi/car/helper/CarPushHelper;->onTimelyRemindReceived(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V

    return-void
.end method

.method public static getCommonMessageForFirstGrabOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "recommendMessage"

    .prologue
    .line 1150
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .local v2, msgJsonObj:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 1157
    :try_start_1
    const-string v3, "msgnew"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1158
    .local v1, mTipObject:Lorg/json/JSONObject;
    new-instance v3, Lcom/didi/car/model/CarFirstTip;

    invoke-direct {v3}, Lcom/didi/car/model/CarFirstTip;-><init>()V

    sput-object v3, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    .line 1159
    sget-object v3, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    invoke-virtual {v3, v1}, Lcom/didi/car/model/CarFirstTip;->parse(Lorg/json/JSONObject;)V

    .line 1160
    invoke-static {}, Lcom/didi/car/listener/CarFirstTipListenerHelper;->notifyShow()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1167
    .end local v1           #mTipObject:Lorg/json/JSONObject;
    .end local v2           #msgJsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1161
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #msgJsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 1162
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v3, 0x0

    sput-object v3, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    .line 1163
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isValidNew(Ljava/lang/String;)Z
    .locals 3
    .parameter "fee"

    .prologue
    .line 978
    invoke-static {p0}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 980
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static onCommonMessageReceived(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V
    .locals 21
    .parameter "l"
    .parameter "data"

    .prologue
    .line 442
    const/4 v11, 0x0

    .line 444
    .local v11, msgReq:Lcom/didi/frame/protobuffer/CommonMsgReq;
    new-instance v17, Lcom/squareup/wire/Wire;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 446
    .local v17, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v18, Lcom/didi/frame/protobuffer/CommonMsgReq;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/didi/frame/protobuffer/CommonMsgReq;

    move-object v11, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    const/4 v15, 0x0

    .line 452
    .local v15, recommendType:I
    const/4 v14, 0x0

    .line 453
    .local v14, recommendMsg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 457
    .local v3, args:[Ljava/lang/Object;
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, v11, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    .local v10, msgJsonObj:Lorg/json/JSONObject;
    if-eqz v11, :cond_0

    .line 464
    iget-object v0, v11, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_type:Ljava/lang/Integer;

    move-object/from16 v18, v0

    sget-object v19, Lcom/didi/frame/protobuffer/CommonMsgReq;->DEFAULT_RECOMMOND_TYPE:Ljava/lang/Integer;

    invoke-static/range {v18 .. v19}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 465
    const-string v18, "msg"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 467
    :cond_0
    const/16 v18, 0x15

    move/from16 v0, v18

    if-eq v0, v15, :cond_1

    .line 468
    invoke-static {v14}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 518
    .end local v10           #msgJsonObj:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 447
    .end local v3           #args:[Ljava/lang/Object;
    .end local v14           #recommendMsg:Ljava/lang/String;
    .end local v15           #recommendType:I
    :catch_0
    move-exception v6

    .line 448
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #args:[Ljava/lang/Object;
    .restart local v14       #recommendMsg:Ljava/lang/String;
    .restart local v15       #recommendType:I
    :catch_1
    move-exception v6

    .line 459
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 473
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v10       #msgJsonObj:Lorg/json/JSONObject;
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCommonMessageReceived  recommendType --> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 475
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 476
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/Object;

    .line 478
    const-string v18, "is_success"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 479
    .local v16, success:I
    const/16 v19, 0x0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v3, v19

    .line 481
    const-string v18, "driver_info"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 482
    const-string v18, "driver_info"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 483
    .local v5, driverObj:Lorg/json/JSONObject;
    new-instance v4, Lcom/didi/car/model/CarDriver;

    invoke-direct {v4}, Lcom/didi/car/model/CarDriver;-><init>()V

    .line 484
    .local v4, driver:Lcom/didi/car/model/CarDriver;
    invoke-virtual {v4, v5}, Lcom/didi/car/model/CarDriver;->parse(Lorg/json/JSONObject;)V

    .line 485
    const/16 v18, 0x1

    aput-object v4, v3, v18

    .line 488
    .end local v4           #driver:Lcom/didi/car/model/CarDriver;
    .end local v5           #driverObj:Lorg/json/JSONObject;
    :cond_2
    const-string v18, "driver_pos"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 489
    const-string v18, "driver_pos"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 490
    .local v13, positionObj:Lorg/json/JSONObject;
    new-instance v12, Lcom/didi/car/model/CarPosition;

    invoke-direct {v12}, Lcom/didi/car/model/CarPosition;-><init>()V

    .line 491
    .local v12, pos:Lcom/didi/car/model/CarPosition;
    invoke-virtual {v12, v13}, Lcom/didi/car/model/CarPosition;->parse(Lorg/json/JSONObject;)V

    .line 492
    const/16 v18, 0x2

    aput-object v12, v3, v18

    .line 496
    .end local v12           #pos:Lcom/didi/car/model/CarPosition;
    .end local v13           #positionObj:Lorg/json/JSONObject;
    .end local v16           #success:I
    :cond_3
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 497
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/Object;

    .line 498
    const/16 v18, 0x0

    const-string v19, "start_fee"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v3, v18

    .line 501
    :cond_4
    move v9, v15

    .line 502
    .local v9, frecommendType:I
    move-object v7, v3

    .line 504
    .local v7, fargs:[Ljava/lang/Object;
    const/16 v18, 0x15

    move/from16 v0, v18

    if-eq v0, v15, :cond_6

    .line 505
    move-object v8, v14

    .line 509
    .local v8, frecommendMsg:Ljava/lang/String;
    :goto_3
    new-instance v18, Lcom/didi/car/helper/CarPushHelper$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v9, v8, v1, v7}, Lcom/didi/car/helper/CarPushHelper$6;-><init>(ILjava/lang/String;Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 479
    .end local v7           #fargs:[Ljava/lang/Object;
    .end local v8           #frecommendMsg:Ljava/lang/String;
    .end local v9           #frecommendType:I
    .restart local v16       #success:I
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 507
    .end local v16           #success:I
    .restart local v7       #fargs:[Ljava/lang/Object;
    .restart local v9       #frecommendType:I
    :cond_6
    iget-object v0, v11, Lcom/didi/frame/protobuffer/CommonMsgReq;->recommond_msg:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8       #frecommendMsg:Ljava/lang/String;
    goto :goto_3
.end method

.method protected static onDriverPositionReceived(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;[B)V
    .locals 11
    .parameter "oid"
    .parameter "l"
    .parameter "data"

    .prologue
    .line 180
    const-string v9, "onDriverPositionReceived "

    invoke-static {v9}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, cdntDown:Lcom/didi/frame/protobuffer/CdntSvrDownReq;
    new-instance v8, Lcom/squareup/wire/Wire;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 186
    .local v8, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v9, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    invoke-virtual {v8, p2, v9}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v7, 0x0

    .line 194
    .local v7, targetCooInfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    iget-object v9, v1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    sget-object v10, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->DEFAULT_PEER_COORDINATE_INFOS:Ljava/util/List;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    .line 196
    .local v5, pcooinfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    iget-object v9, v5, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    move-object v7, v5

    .line 202
    .end local v5           #pcooinfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    :cond_1
    if-nez v7, :cond_2

    .line 225
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #targetCooInfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v3

    .line 188
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #targetCooInfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    :cond_2
    new-instance v6, Lcom/didi/car/model/CarPosition;

    invoke-direct {v6}, Lcom/didi/car/model/CarPosition;-><init>()V

    .line 208
    .local v6, pos:Lcom/didi/car/model/CarPosition;
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/frame/protobuffer/Coordinate;

    .line 209
    .local v2, coo:Lcom/didi/frame/protobuffer/Coordinate;
    if-eqz v2, :cond_3

    .line 210
    iget-object v9, v2, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    sget-object v10, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/car/model/CarPosition;->lng:Ljava/lang/String;

    .line 211
    iget-object v9, v2, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    sget-object v10, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/car/model/CarPosition;->lat:Ljava/lang/String;

    .line 212
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_DISTANCE:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/car/model/CarPosition;->distance:Ljava/lang/String;

    .line 213
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_WAIT_TIME:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/didi/car/model/CarPosition;->arrivedTime:I

    .line 216
    :cond_3
    new-instance v9, Lcom/didi/car/helper/CarPushHelper$2;

    invoke-direct {v9, v6, p1}, Lcom/didi/car/helper/CarPushHelper$2;-><init>(Lcom/didi/car/model/CarPosition;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V

    invoke-static {v9}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static onDriversLocationReceived(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;[B)V
    .locals 15
    .parameter "l"
    .parameter "data"

    .prologue
    .line 1434
    const-string v12, "onDriversLocationReceived "

    invoke-static {v12}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1435
    const-string v12, "onDriversLocationReceived"

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1437
    const/4 v4, 0x0

    .line 1438
    .local v4, driverLocReqReq:Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
    new-instance v11, Lcom/squareup/wire/Wire;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-direct {v11, v12}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 1440
    .local v11, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v12, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :goto_0
    new-instance v10, Lcom/didi/common/model/NearDrivers;

    invoke-direct {v10}, Lcom/didi/common/model/NearDrivers;-><init>()V

    .line 1448
    .local v10, nearDrivers:Lcom/didi/common/model/NearDrivers;
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_ETA:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/didi/common/model/NearDrivers;->eta:I

    .line 1449
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_distance:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_ETA_DISTANCE:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/didi/common/model/NearDrivers;->etaDistance:I

    .line 1450
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v10, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    .line 1452
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    sget-object v13, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_LOC:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;

    .line 1454
    .local v8, infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    new-instance v3, Lcom/didi/common/model/Driver;

    invoke-direct {v3}, Lcom/didi/common/model/Driver;-><init>()V

    .line 1455
    .local v3, driver:Lcom/didi/common/model/Driver;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    sget-object v14, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_DIRVERID:Ljava/lang/Long;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    .line 1456
    iget-object v12, v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    sget-object v13, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_COORDS:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1457
    .local v2, coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, v3, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    .line 1458
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/protobuffer/Coordinate;

    .line 1459
    .local v1, coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    new-instance v9, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v9}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 1460
    .local v9, locationInfo:Lcom/didi/common/model/LocationInfo;
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->x:D

    .line 1461
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->y:D

    .line 1462
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_ANGLE:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->direction:D

    .line 1463
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v9, Lcom/didi/common/model/LocationInfo;->timestamp:I

    .line 1464
    iget-object v12, v3, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1441
    .end local v1           #coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    .end local v2           #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .end local v3           #driver:Lcom/didi/common/model/Driver;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    .end local v9           #locationInfo:Lcom/didi/common/model/LocationInfo;
    .end local v10           #nearDrivers:Lcom/didi/common/model/NearDrivers;
    :catch_0
    move-exception v5

    .line 1442
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1466
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .restart local v3       #driver:Lcom/didi/common/model/Driver;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    .restart local v10       #nearDrivers:Lcom/didi/common/model/NearDrivers;
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDriversLocationReceived Driver id-> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/didi/common/model/Driver;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1467
    iget-object v12, v10, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    iget-object v13, v3, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1471
    .end local v2           #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .end local v3           #driver:Lcom/didi/common/model/Driver;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    :cond_1
    new-instance v12, Lcom/didi/car/helper/CarPushHelper$24;

    invoke-direct {v12, p0, v10}, Lcom/didi/car/helper/CarPushHelper$24;-><init>(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;Lcom/didi/common/model/NearDrivers;)V

    invoke-static {v12}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1477
    return-void
.end method

.method protected static onNearDriversReceived(ILcom/didi/car/helper/CarPushHelper$NearDriversGetListener;[B)V
    .locals 15
    .parameter "productId"
    .parameter "l"
    .parameter "data"

    .prologue
    .line 1323
    const-string v12, "onNearDriversReceived "

    invoke-static {v12}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1324
    const-string v12, "onNearDriversReceived"

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1326
    const/4 v4, 0x0

    .line 1327
    .local v4, driverLocReqReq:Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;
    new-instance v11, Lcom/squareup/wire/Wire;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-direct {v11, v12}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 1329
    .local v11, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v12, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    new-instance v10, Lcom/didi/common/model/NearDrivers;

    invoke-direct {v10}, Lcom/didi/common/model/NearDrivers;-><init>()V

    .line 1337
    .local v10, nearDrivers:Lcom/didi/common/model/NearDrivers;
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_ETA:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lcom/didi/common/model/NearDrivers;->eta:I

    .line 1338
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->eta_str:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v10, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    .line 1340
    iget-object v12, v4, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->loc:Ljava/util/List;

    sget-object v13, Lcom/didi/frame/protobuffer/GulfstreamPassengerDriverLocReq;->DEFAULT_LOC:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;

    .line 1342
    .local v8, infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    new-instance v3, Lcom/didi/common/model/Driver;

    invoke-direct {v3}, Lcom/didi/common/model/Driver;-><init>()V

    .line 1343
    .local v3, driver:Lcom/didi/common/model/Driver;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;->dirverId:Ljava/lang/Long;

    sget-object v14, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_DIRVERID:Ljava/lang/Long;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    .line 1344
    iget-object v12, v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;->type:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v3, Lcom/didi/common/model/Driver;->type:I

    .line 1345
    iget-object v12, v8, Lcom/didi/frame/protobuffer/DriverLocationInfo;->coords:Ljava/util/List;

    sget-object v13, Lcom/didi/frame/protobuffer/DriverLocationInfo;->DEFAULT_COORDS:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1346
    .local v2, coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, v3, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    .line 1347
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/protobuffer/Coordinate;

    .line 1348
    .local v1, coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    new-instance v9, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v9}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 1349
    .local v9, locationInfo:Lcom/didi/common/model/LocationInfo;
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->x:D

    .line 1350
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->y:D

    .line 1351
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->angle:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_ANGLE:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    iput-wide v12, v9, Lcom/didi/common/model/LocationInfo;->direction:D

    .line 1352
    iget-object v12, v1, Lcom/didi/frame/protobuffer/Coordinate;->timestamp:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v9, Lcom/didi/common/model/LocationInfo;->timestamp:I

    .line 1353
    iget-object v12, v3, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1330
    .end local v1           #coordinate:Lcom/didi/frame/protobuffer/Coordinate;
    .end local v2           #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .end local v3           #driver:Lcom/didi/common/model/Driver;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    .end local v9           #locationInfo:Lcom/didi/common/model/LocationInfo;
    .end local v10           #nearDrivers:Lcom/didi/common/model/NearDrivers;
    :catch_0
    move-exception v5

    .line 1331
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1355
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .restart local v3       #driver:Lcom/didi/common/model/Driver;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    .restart local v10       #nearDrivers:Lcom/didi/common/model/NearDrivers;
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onNearDriversReceived Driver id-> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/didi/common/model/Driver;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1356
    iget-object v12, v10, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    iget-object v13, v3, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1359
    .end local v2           #coordinates:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Coordinate;>;"
    .end local v3           #driver:Lcom/didi/common/model/Driver;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #infoItem:Lcom/didi/frame/protobuffer/DriverLocationInfo;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onNearDriversReceived\'s eta-> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/didi/common/model/NearDrivers;->eta:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1360
    new-instance v12, Lcom/didi/car/helper/CarPushHelper$22;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, p0, v10}, Lcom/didi/car/helper/CarPushHelper$22;-><init>(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;ILcom/didi/common/model/NearDrivers;)V

    invoke-static {v12}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method private static onOrderNewRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;[B)V
    .locals 15
    .parameter "l"
    .parameter "data"

    .prologue
    .line 558
    const-string v13, "OrderNewRealtimeCountListener "

    invoke-static {v13}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 559
    const-string v13, "------------push message--------- \n"

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 561
    const/4 v9, 0x0

    .line 562
    .local v9, realtimeFeeReq:Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;
    const/4 v8, 0x0

    .line 564
    .local v8, realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    new-instance v12, Lcom/squareup/wire/Wire;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-direct {v12, v13}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 566
    .local v12, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v13, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    move-object v9, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    if-eqz v9, :cond_1

    .line 572
    new-instance v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .end local v8           #realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    invoke-direct {v8}, Lcom/didi/car/model/CarOrderNewRealtimeCount;-><init>()V

    .line 573
    .restart local v8       #realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    iget-object v13, v9, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;->oid:Ljava/lang/String;

    .line 574
    iget-object v13, v9, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 575
    .local v11, totalFee:Ljava/lang/String;
    const/4 v10, 0x1

    .line 576
    .local v10, scale:I
    invoke-static {v11}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v13

    iput v13, v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    .line 578
    iget-object v13, v9, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_FEE_INFO:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/protobuffer/FeeInfoItem;

    .line 579
    .local v5, infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    new-instance v2, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v2}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 581
    .local v2, feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    .line 582
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_TYPE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    .line 583
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    .line 584
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    .line 585
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_CUST:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeCust:I

    .line 586
    iget-object v13, v5, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeColor:Ljava/lang/String;

    .line 588
    iget-object v13, v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t basic fee info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/didi/car/model/CarFeeItemInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 567
    .end local v2           #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    .end local v10           #scale:I
    .end local v11           #totalFee:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 568
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 592
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #scale:I
    .restart local v11       #totalFee:Ljava/lang/String;
    :cond_0
    iget-object v13, v9, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_DRIVING_TRACK:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/frame/protobuffer/LocationInfo;

    .line 594
    .local v7, locInfoReq:Lcom/didi/frame/protobuffer/LocationInfo;
    new-instance v6, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v6}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 595
    .local v6, locInfo:Lcom/didi/common/model/LocationInfo;
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v6, Lcom/didi/common/model/LocationInfo;->x:D

    .line 596
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v6, Lcom/didi/common/model/LocationInfo;->y:D

    .line 597
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v13}, Lcom/didi/frame/protobuffer/CoordinateType;->getValue()I

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->type:I

    .line 598
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCURACY:Ljava/lang/Double;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v6, Lcom/didi/common/model/LocationInfo;->accuracy:D

    .line 599
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_DIRECTION:Ljava/lang/Double;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v6, Lcom/didi/common/model/LocationInfo;->direction:D

    .line 600
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_SPEED:Ljava/lang/Double;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v6, Lcom/didi/common/model/LocationInfo;->speed:D

    .line 601
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->accSpeedX:F

    .line 602
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->accSpeedY:F

    .line 603
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->accSpeedZ:F

    .line 604
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->angleYaw:F

    .line 605
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->angleRoll:F

    .line 606
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->anglePitch:F

    .line 607
    iget-object v13, v7, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v6, Lcom/didi/common/model/LocationInfo;->timestamp:I

    .line 609
    iget-object v13, v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 614
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #locInfo:Lcom/didi/common/model/LocationInfo;
    .end local v7           #locInfoReq:Lcom/didi/frame/protobuffer/LocationInfo;
    .end local v10           #scale:I
    .end local v11           #totalFee:Ljava/lang/String;
    :cond_1
    move-object v3, v8

    .line 615
    .local v3, frealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    new-instance v13, Lcom/didi/car/helper/CarPushHelper$9;

    invoke-direct {v13, v3, p0}, Lcom/didi/car/helper/CarPushHelper$9;-><init>(Lcom/didi/car/model/CarOrderNewRealtimeCount;Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V

    invoke-static {v13}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 624
    return-void
.end method

.method private static onOrderNewTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V
    .locals 16
    .parameter "l"
    .parameter "data"

    .prologue
    .line 742
    const-string v13, "onOrderNewTotalCountReceived"

    invoke-static {v13}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 743
    const-string v13, "------------push message--------- \n"

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 745
    const/4 v11, 0x0

    .line 746
    .local v11, totalCountReq:Lcom/didi/frame/protobuffer/OrderTotalFeeReq;
    const/4 v10, 0x0

    .line 748
    .local v10, totalCount:Lcom/didi/car/model/CarNewFeeDetail;
    new-instance v12, Lcom/squareup/wire/Wire;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-direct {v12, v13}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 750
    .local v12, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v13, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;

    move-object v11, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    if-eqz v11, :cond_6

    .line 756
    new-instance v10, Lcom/didi/car/model/CarNewFeeDetail;

    .end local v10           #totalCount:Lcom/didi/car/model/CarNewFeeDetail;
    invoke-direct {v10}, Lcom/didi/car/model/CarNewFeeDetail;-><init>()V

    .line 757
    .restart local v10       #totalCount:Lcom/didi/car/model/CarNewFeeDetail;
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->oid:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->oid:Ljava/lang/String;

    .line 758
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->payTitle:Ljava/lang/String;

    .line 759
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitle:Ljava/lang/String;

    .line 760
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_button_title_label:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->payButtonTitleLabel:Ljava/lang/String;

    .line 761
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->penny_flag:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PENNY_FLAG:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->pennyFlag:I

    .line 762
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->pay_type:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PAY_TYPE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->payType:I

    .line 763
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->ext_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->extraMsg:Ljava/lang/String;

    .line 765
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeTitle:Ljava/lang/String;

    .line 766
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->carfee_total:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeValue:Ljava/lang/String;

    .line 767
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeTitle:Ljava/lang/String;

    .line 768
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favour_total:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeValue:Ljava/lang/String;

    .line 770
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->basicFeeInfoList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/frame/protobuffer/FeeInfoItem;

    .line 771
    .local v6, infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    new-instance v3, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 772
    .local v3, feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    .line 773
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_TYPE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    .line 774
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    .line 775
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    .line 776
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_CUST:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeCust:I

    .line 777
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeColor:Ljava/lang/String;

    .line 778
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t basic fee info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/didi/car/model/CarFeeItemInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 751
    .end local v3           #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    :catch_0
    move-exception v2

    .line 752
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 783
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->favourFeeInfoList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/frame/protobuffer/FeeInfoItem;

    .line 784
    .restart local v6       #infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    new-instance v3, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 785
    .restart local v3       #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_id:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    .line 786
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_type:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_TYPE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    .line 787
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_label:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    .line 788
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_value:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    .line 789
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_cust:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/FeeInfoItem;->DEFAULT_FEE_CUST:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeCust:I

    .line 790
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_color:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeColor:Ljava/lang/String;

    .line 791
    iget-object v13, v6, Lcom/didi/frame/protobuffer/FeeInfoItem;->fee_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    .line 793
    iget v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v14, 0x3ed

    if-ne v13, v14, :cond_1

    .line 794
    new-instance v1, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v1}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    .line 795
    .local v1, carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    iget-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    iput-object v13, v1, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 797
    iput-object v1, v10, Lcom/didi/car/model/CarNewFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 798
    iget-object v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->voucherUrl:Ljava/lang/String;

    .line 801
    .end local v1           #carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t favour fee info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/didi/car/model/CarFeeItemInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 803
    iget v13, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v14, 0x3f0

    if-ne v13, v14, :cond_2

    .line 804
    const-string v13, "-----------updateBalancePayType---info.feeType == 1008----"

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 805
    new-instance v13, Lcom/didi/car/model/CarPayment;

    invoke-direct {v13}, Lcom/didi/car/model/CarPayment;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    .line 806
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    const/4 v14, 0x1

    iput v14, v13, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 807
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v14, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iput-object v14, v13, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 808
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v14, v3, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    iput-object v14, v13, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 812
    :cond_2
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 815
    .end local v3           #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    .end local v6           #infoItem:Lcom/didi/frame/protobuffer/FeeInfoItem;
    :cond_3
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 816
    .local v9, refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    if-eqz v9, :cond_4

    .line 817
    new-instance v13, Lcom/didi/car/model/CarRefund;

    invoke-direct {v13}, Lcom/didi/car/model/CarRefund;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 818
    iget-object v14, v10, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_status:Ljava/lang/Integer;

    sget-object v15, Lcom/didi/frame/protobuffer/RefundInfoReq;->DEFAULT_REFUND_STATUS:Ljava/lang/Integer;

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v14, Lcom/didi/car/model/CarRefund;->refundStatus:I

    .line 819
    iget-object v14, v10, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_title:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundTitle:Ljava/lang/String;

    .line 820
    iget-object v14, v10, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_link:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundLink:Ljava/lang/String;

    .line 821
    iget-object v14, v10, Lcom/didi/car/model/CarNewFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_tip:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundTip:Ljava/lang/String;

    .line 824
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->carPayments:Ljava/util/List;

    .line 825
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->payments:Ljava/util/List;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalFeeReq;->DEFAULT_PAYMENTS:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/protobuffer/Payments;

    .line 826
    .local v8, payments:Lcom/didi/frame/protobuffer/Payments;
    new-instance v7, Lcom/didi/car/model/CarPayment;

    invoke-direct {v7}, Lcom/didi/car/model/CarPayment;-><init>()V

    .line 827
    .local v7, payment:Lcom/didi/car/model/CarPayment;
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/Payments;->DEFAULT_PAYMENT_MODE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v7, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 828
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 829
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentIconUrl:Ljava/lang/String;

    .line 830
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentActUrl:Ljava/lang/String;

    .line 831
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    .line 832
    invoke-virtual {v7}, Lcom/didi/car/model/CarPayment;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 833
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lcom/didi/car/model/CarNewFeeDetail;->carPaymentStr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/didi/car/model/CarPayment;->paymentMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->carPaymentStr:Ljava/lang/String;

    .line 834
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->carPayments:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 836
    .end local v7           #payment:Lcom/didi/car/model/CarPayment;
    .end local v8           #payments:Lcom/didi/frame/protobuffer/Payments;
    :cond_5
    iget-object v13, v10, Lcom/didi/car/model/CarNewFeeDetail;->carPaymentStr:Ljava/lang/String;

    const-string v14, "|"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    :cond_6
    move-object v4, v10

    .line 844
    .local v4, ftotalCount:Lcom/didi/car/model/CarNewFeeDetail;
    new-instance v13, Lcom/didi/car/helper/CarPushHelper$13;

    move-object/from16 v0, p0

    invoke-direct {v13, v4, v0}, Lcom/didi/car/helper/CarPushHelper$13;-><init>(Lcom/didi/car/model/CarNewFeeDetail;Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V

    invoke-static {v13}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 853
    return-void
.end method

.method private static onOrderRealtimeCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;[B)V
    .locals 15
    .parameter "l"
    .parameter "data"

    .prologue
    const/4 v14, 0x1

    .line 627
    const-string v12, "onOrderRealtimeCountReceived "

    invoke-static {v12}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 628
    const-string v12, "------------push message--------- \n"

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 630
    const/4 v8, 0x0

    .line 631
    .local v8, realtimeCountReq:Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;
    const/4 v7, 0x0

    .line 633
    .local v7, realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    new-instance v11, Lcom/squareup/wire/Wire;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-direct {v11, v12}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 635
    .local v11, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v12, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    move-object v8, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    if-eqz v8, :cond_2

    .line 641
    iget-object v12, v8, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    .line 642
    .local v2, feeInfo:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    if-eqz v2, :cond_0

    .line 643
    const/4 v9, 0x1

    .line 644
    .local v9, scale:I
    new-instance v7, Lcom/didi/car/model/CarOrderRealtimeCount;

    .end local v7           #realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    invoke-direct {v7}, Lcom/didi/car/model/CarOrderRealtimeCount;-><init>()V

    .line 645
    .restart local v7       #realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    iget-object v12, v8, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->oid:Ljava/lang/String;

    .line 646
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_START_FEE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    .line 647
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_SLOW_TIME:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    .line 648
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_SLOW_FEE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    .line 649
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NORMAL_DISTANCE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    .line 650
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NORMAL_FEE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    .line 651
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_EMPTY_FEE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    .line 652
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_EMPTY_DISTANCE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyDistance:F

    .line 653
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NIGHT_FEE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    .line 654
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NIGHT_DISTANCE:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->nightDistance:F

    .line 655
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceTitle:Ljava/lang/String;

    .line 656
    iget-object v12, v2, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12, v14}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v12

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    .line 657
    iget v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    iget v13, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    add-float/2addr v12, v13

    iget v13, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    add-float/2addr v12, v13

    iget v13, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    add-float/2addr v12, v13

    iget v13, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    add-float/2addr v12, v13

    iget v13, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    add-float/2addr v12, v13

    iput v12, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    .line 660
    .end local v9           #scale:I
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v10, track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/LocationInfo;>;"
    iget-object v12, v8, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    sget-object v13, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->DEFAULT_DRIVING_TRACK:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/frame/protobuffer/LocationInfo;

    .line 664
    .local v6, locInfoReq:Lcom/didi/frame/protobuffer/LocationInfo;
    new-instance v5, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v5}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 665
    .local v5, locInfo:Lcom/didi/common/model/LocationInfo;
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v5, Lcom/didi/common/model/LocationInfo;->x:D

    .line 666
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v5, Lcom/didi/common/model/LocationInfo;->y:D

    .line 667
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v12}, Lcom/didi/frame/protobuffer/CoordinateType;->getValue()I

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->type:I

    .line 668
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCURACY:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v5, Lcom/didi/common/model/LocationInfo;->accuracy:D

    .line 669
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_DIRECTION:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v5, Lcom/didi/common/model/LocationInfo;->direction:D

    .line 670
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_SPEED:Ljava/lang/Double;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v5, Lcom/didi/common/model/LocationInfo;->speed:D

    .line 671
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->accSpeedX:F

    .line 672
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->accSpeedY:F

    .line 673
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->accSpeedZ:F

    .line 674
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->angleYaw:F

    .line 675
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->angleRoll:F

    .line 676
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->anglePitch:F

    .line 677
    iget-object v12, v6, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    sget-object v13, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    invoke-static {v12, v13}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lcom/didi/common/model/LocationInfo;->timestamp:I

    .line 679
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 636
    .end local v2           #feeInfo:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #locInfo:Lcom/didi/common/model/LocationInfo;
    .end local v6           #locInfoReq:Lcom/didi/frame/protobuffer/LocationInfo;
    .end local v10           #track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/LocationInfo;>;"
    :catch_0
    move-exception v1

    .line 637
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 682
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #feeInfo:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/LocationInfo;>;"
    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 683
    iput-object v10, v7, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    .line 687
    .end local v2           #feeInfo:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v10           #track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/LocationInfo;>;"
    :cond_2
    move-object v3, v7

    .line 688
    .local v3, frealtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    new-instance v12, Lcom/didi/car/helper/CarPushHelper$10;

    invoke-direct {v12, v3, p0}, Lcom/didi/car/helper/CarPushHelper$10;-><init>(Lcom/didi/car/model/CarOrderRealtimeCount;Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V

    invoke-static {v12}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 697
    return-void
.end method

.method private static onOrderStatusMessageReceived(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;[B)V
    .locals 28
    .parameter "l"
    .parameter "data"

    .prologue
    .line 318
    const-string v26, "onOrderStatusMessageReceived "

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 320
    const/16 v17, 0x0

    .line 321
    .local v17, orderStatusReq:Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;
    const/16 v16, 0x0

    .line 322
    .local v16, orderState:Lcom/didi/car/model/CarOrderState;
    const/4 v15, 0x0

    .line 324
    .local v15, oid:Ljava/lang/String;
    new-instance v25, Lcom/squareup/wire/Wire;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 326
    .local v25, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v26, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    if-eqz v17, :cond_3

    .line 334
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #oid:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 335
    .restart local v15       #oid:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_STATUS:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 336
    .local v22, status:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_DRIVER_NUM:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 337
    .local v10, driverNum:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_TIME_OUT:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 338
    .local v24, timeOut:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_IS_ARRIVED:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 339
    .local v14, isArrived:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_CONSULT_STATUS:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 341
    .local v5, consultStatus:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_SUB_STATUS:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 342
    .local v23, subStatus:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_STRIVE_ORDER_DRIVER_NUM:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 343
    .local v18, pkDriverNums:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_COUNT_DOWN_TIME:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 344
    .local v20, pkWaitTime:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 346
    .local v19, pkMsg:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/frame/protobuffer/DriverInfo;

    .line 347
    .local v7, driveInfo:Lcom/didi/frame/protobuffer/DriverInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/protobuffer/DriverPos;

    .line 348
    .local v8, drivePos:Lcom/didi/frame/protobuffer/DriverPos;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/frame/protobuffer/ConsultInfo;

    .line 350
    .local v4, consultInfo:Lcom/didi/frame/protobuffer/ConsultInfo;
    new-instance v16, Lcom/didi/car/model/CarOrderState;

    .end local v16           #orderState:Lcom/didi/car/model/CarOrderState;
    invoke-direct/range {v16 .. v16}, Lcom/didi/car/model/CarOrderState;-><init>()V

    .line 351
    .restart local v16       #orderState:Lcom/didi/car/model/CarOrderState;
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/didi/car/model/CarOrderState;->status:I

    .line 352
    move-object/from16 v0, v16

    iput v10, v0, Lcom/didi/car/model/CarOrderState;->driverCount:I

    .line 353
    if-eqz v24, :cond_4

    const/16 v26, 0x1

    :goto_1
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/didi/car/model/CarOrderState;->isTimeout:Z

    .line 354
    if-eqz v14, :cond_5

    const/16 v26, 0x1

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/didi/car/model/CarOrderState;->isArrieved:Z

    .line 355
    move-object/from16 v0, v16

    iput v5, v0, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    .line 357
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/didi/car/model/CarOrderState;->subStatus:I

    .line 358
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/didi/car/model/CarOrderState;->pkDriverNums:I

    .line 359
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/didi/car/model/CarOrderState;->pkWaitTime:I

    .line 360
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/didi/car/model/CarOrderState;->pkMsg:Ljava/lang/String;

    .line 362
    if-eqz v8, :cond_1

    .line 363
    new-instance v21, Lcom/didi/car/model/CarPosition;

    invoke-direct/range {v21 .. v21}, Lcom/didi/car/model/CarPosition;-><init>()V

    .line 364
    .local v21, pos:Lcom/didi/car/model/CarPosition;
    iget-object v0, v8, Lcom/didi/frame/protobuffer/DriverPos;->arrived_time:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_ARRIVED_TIME:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/didi/car/model/CarPosition;->arrivedTime:I

    .line 365
    iget-object v0, v8, Lcom/didi/frame/protobuffer/DriverPos;->distance:Ljava/lang/Float;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_DISTANCE:Ljava/lang/Float;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/car/model/CarPosition;->distance:Ljava/lang/String;

    .line 366
    iget-object v0, v8, Lcom/didi/frame/protobuffer/DriverPos;->distance_enabled:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverPos;->DEFAULT_DISTANCE_ENABLED:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/didi/car/model/CarPosition;->distanceEnabled:I

    .line 367
    iget-object v0, v8, Lcom/didi/frame/protobuffer/DriverPos;->pos:Lcom/didi/frame/protobuffer/Coordinate;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/frame/protobuffer/Coordinate;

    .line 368
    .local v6, coordinatePos:Lcom/didi/frame/protobuffer/Coordinate;
    if-eqz v6, :cond_0

    .line 369
    iget-object v0, v6, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/car/model/CarPosition;->lat:Ljava/lang/String;

    .line 370
    iget-object v0, v6, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/car/model/CarPosition;->lng:Ljava/lang/String;

    .line 372
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    .line 376
    .end local v6           #coordinatePos:Lcom/didi/frame/protobuffer/Coordinate;
    .end local v21           #pos:Lcom/didi/car/model/CarPosition;
    :cond_1
    if-eqz v7, :cond_2

    .line 377
    new-instance v9, Lcom/didi/car/model/CarDriver;

    invoke-direct {v9}, Lcom/didi/car/model/CarDriver;-><init>()V

    .line 378
    .local v9, driver:Lcom/didi/car/model/CarDriver;
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->carType:Ljava/lang/String;

    .line 379
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->card:Ljava/lang/String;

    .line 380
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->company:Ljava/lang/String;

    .line 381
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_DRIVER_ID:Ljava/lang/Long;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->did:Ljava/lang/String;

    .line 382
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_CNT_POSITIVE:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    iput v0, v9, Lcom/didi/car/model/CarDriver;->goodOrderCount:I

    .line 383
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_LEVEL_NEW:Ljava/lang/Float;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v0, v26

    iput v0, v9, Lcom/didi/car/model/CarDriver;->level:F

    .line 384
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    .line 385
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_CNT_ORDER:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    iput v0, v9, Lcom/didi/car/model/CarDriver;->orderCount:I

    .line 386
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->phone:Ljava/lang/String;

    .line 387
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    .line 388
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_IS_PROTECT:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    iput v0, v9, Lcom/didi/car/model/CarDriver;->protectStatus:I

    .line 389
    iget-object v0, v7, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    move-object/from16 v26, v0

    sget-object v27, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_IS_TIMEOUT:Ljava/lang/Integer;

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v26, 0x1

    :goto_3
    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/didi/car/model/CarDriver;->timeout:Z

    .line 390
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/didi/car/model/CarOrderState;->driver:Lcom/didi/car/model/CarDriver;

    .line 393
    .end local v9           #driver:Lcom/didi/car/model/CarDriver;
    :cond_2
    if-eqz v4, :cond_3

    .line 394
    new-instance v3, Lcom/didi/car/model/CarConsultInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarConsultInfo;-><init>()V

    .line 395
    .local v3, carConsultInfo:Lcom/didi/car/model/CarConsultInfo;
    iget-object v0, v4, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/didi/car/model/CarConsultInfo;->consultMin:Ljava/lang/String;

    .line 396
    iget-object v0, v4, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/didi/car/model/CarConsultInfo;->driverTips:Ljava/lang/String;

    .line 397
    iget-object v0, v4, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/didi/car/model/CarConsultInfo;->systemTips:Ljava/lang/String;

    .line 398
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    .line 403
    .end local v3           #carConsultInfo:Lcom/didi/car/model/CarConsultInfo;
    .end local v4           #consultInfo:Lcom/didi/frame/protobuffer/ConsultInfo;
    .end local v5           #consultStatus:I
    .end local v7           #driveInfo:Lcom/didi/frame/protobuffer/DriverInfo;
    .end local v8           #drivePos:Lcom/didi/frame/protobuffer/DriverPos;
    .end local v10           #driverNum:I
    .end local v14           #isArrived:I
    .end local v18           #pkDriverNums:I
    .end local v19           #pkMsg:Ljava/lang/String;
    .end local v20           #pkWaitTime:I
    .end local v22           #status:I
    .end local v23           #subStatus:I
    .end local v24           #timeOut:I
    :cond_3
    move-object/from16 v12, v16

    .line 404
    .local v12, fOrderState:Lcom/didi/car/model/CarOrderState;
    move-object v13, v15

    .line 406
    .local v13, foid:Ljava/lang/String;
    new-instance v26, Lcom/didi/car/helper/CarPushHelper$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v12, v1, v13}, Lcom/didi/car/helper/CarPushHelper$4;-><init>(Lcom/didi/car/model/CarOrderState;Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void

    .line 328
    .end local v12           #fOrderState:Lcom/didi/car/model/CarOrderState;
    .end local v13           #foid:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 329
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 353
    .end local v11           #e:Ljava/io/IOException;
    .restart local v4       #consultInfo:Lcom/didi/frame/protobuffer/ConsultInfo;
    .restart local v5       #consultStatus:I
    .restart local v7       #driveInfo:Lcom/didi/frame/protobuffer/DriverInfo;
    .restart local v8       #drivePos:Lcom/didi/frame/protobuffer/DriverPos;
    .restart local v10       #driverNum:I
    .restart local v14       #isArrived:I
    .restart local v18       #pkDriverNums:I
    .restart local v19       #pkMsg:Ljava/lang/String;
    .restart local v20       #pkWaitTime:I
    .restart local v22       #status:I
    .restart local v23       #subStatus:I
    .restart local v24       #timeOut:I
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 354
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 389
    .restart local v9       #driver:Lcom/didi/car/model/CarDriver;
    :cond_6
    const/16 v26, 0x0

    goto :goto_3
.end method

.method private static onOrderTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;[B)V
    .locals 16
    .parameter "l"
    .parameter "data"

    .prologue
    .line 856
    const-string v13, "onOrderTotalCountReceived"

    invoke-static {v13}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 857
    const-string v13, "------------push message--------- \n"

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 859
    const/4 v11, 0x0

    .line 860
    .local v11, totalCountReq:Lcom/didi/frame/protobuffer/OrderTotalCountReq;
    const/4 v10, 0x0

    .line 862
    .local v10, totalCount:Lcom/didi/car/model/CarFeeDetail;
    new-instance v12, Lcom/squareup/wire/Wire;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-direct {v12, v13}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 864
    .local v12, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v13, Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/didi/frame/protobuffer/OrderTotalCountReq;

    move-object v11, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    if-eqz v11, :cond_5

    .line 870
    new-instance v10, Lcom/didi/car/model/CarFeeDetail;

    .end local v10           #totalCount:Lcom/didi/car/model/CarFeeDetail;
    invoke-direct {v10}, Lcom/didi/car/model/CarFeeDetail;-><init>()V

    .line 871
    .restart local v10       #totalCount:Lcom/didi/car/model/CarFeeDetail;
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->oid:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->oid:Ljava/lang/String;

    .line 872
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->payTitle:Ljava/lang/String;

    .line 873
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->start_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    .line 874
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    .line 875
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->driving_distance:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->drivingDistance:Ljava/lang/String;

    .line 876
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    .line 877
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->slow_speed_time:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->lowSpeedTime:Ljava/lang/String;

    .line 878
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->highway_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    .line 879
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->park_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    .line 880
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->extra_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    .line 881
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->other_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    .line 882
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->reparation_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    .line 883
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->cancle_reparation_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    .line 884
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->wx_pay_tip:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->wxPayTip:Ljava/lang/String;

    .line 885
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->balance_pay_tip:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    .line 887
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    invoke-static {v13}, Lcom/didi/car/helper/CarPushHelper;->isValidNew(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 888
    new-instance v13, Lcom/didi/car/model/CarPayment;

    invoke-direct {v13}, Lcom/didi/car/model/CarPayment;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    .line 889
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    const/4 v14, 0x1

    iput v14, v13, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 890
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    const v14, 0x7f0b02c7

    invoke-static {v14}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 891
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    iput-object v14, v13, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    .line 892
    const-string v13, "0"

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    .line 895
    :cond_0
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->fixed_price_tip:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    .line 896
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_tip:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    .line 897
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->couponFee:Ljava/lang/String;

    .line 898
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_button_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->payButtonTitle:Ljava/lang/String;

    .line 899
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_distance:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->emptyDistance:Ljava/lang/String;

    .line 900
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->empty_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    .line 901
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_distance:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->nightDistance:Ljava/lang/String;

    .line 902
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->night_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    .line 903
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->bridge_fee:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    .line 905
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_cnt:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_VOUCHER_CNT:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    .line 906
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->voucherUrl:Ljava/lang/String;

    .line 907
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->voucher_desc:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->voucherDesc:Ljava/lang/String;

    .line 908
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->penny_flag:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PENNY_FLAG:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Lcom/didi/car/model/CarFeeDetail;->pennyFlag:I

    .line 910
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->pay_type:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PAY_TYPE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Lcom/didi/car/model/CarFeeDetail;->payType:I

    .line 911
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->ext_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->extraMsg:Ljava/lang/String;

    .line 912
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->specialTitle:Ljava/lang/String;

    .line 913
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->sp_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    .line 915
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceTitle:Ljava/lang/String;

    .line 916
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->dynamic_price_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    .line 918
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->basicFeeTitle:Ljava/lang/String;

    .line 919
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->carfee_total:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->basicFeeValue:Ljava/lang/String;

    .line 920
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_title:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->favourFeeTitle:Ljava/lang/String;

    .line 921
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->favour_total:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->favourFeeValue:Ljava/lang/String;

    .line 923
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->refund_info:Lcom/didi/frame/protobuffer/RefundInfoReq;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/didi/frame/protobuffer/RefundInfoReq;

    .line 924
    .local v9, refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    if-eqz v9, :cond_1

    .line 925
    new-instance v13, Lcom/didi/car/model/CarRefund;

    invoke-direct {v13}, Lcom/didi/car/model/CarRefund;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 926
    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_status:Ljava/lang/Integer;

    sget-object v15, Lcom/didi/frame/protobuffer/RefundInfoReq;->DEFAULT_REFUND_STATUS:Ljava/lang/Integer;

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v14, Lcom/didi/car/model/CarRefund;->refundStatus:I

    .line 927
    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_title:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundTitle:Ljava/lang/String;

    .line 928
    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_link:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundLink:Ljava/lang/String;

    .line 929
    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v13, v9, Lcom/didi/frame/protobuffer/RefundInfoReq;->refund_tip:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lcom/didi/car/model/CarRefund;->refundTip:Ljava/lang/String;

    .line 932
    :cond_1
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 933
    new-instance v2, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v2}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    .line 934
    .local v2, carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_id:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 935
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->coupon_money:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    .line 936
    iput-object v2, v10, Lcom/didi/car/model/CarFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 939
    .end local v2           #carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    :cond_2
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->opera_act:Ljava/util/List;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_OPERA_ACT:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/protobuffer/OperationActivityReq;

    .line 940
    .local v1, act:Lcom/didi/frame/protobuffer/OperationActivityReq;
    new-instance v3, Lcom/didi/car/model/CarOpreratActInfo;

    iget-object v13, v1, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_doc:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/didi/frame/protobuffer/OperationActivityReq;->activity_ded:Ljava/lang/String;

    const-string v15, ""

    invoke-static {v14, v15}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v3, v13, v14}, Lcom/didi/car/model/CarOpreratActInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .local v3, couponInfo:Lcom/didi/car/model/CarOpreratActInfo;
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 865
    .end local v1           #act:Lcom/didi/frame/protobuffer/OperationActivityReq;
    .end local v3           #couponInfo:Lcom/didi/car/model/CarOpreratActInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    :catch_0
    move-exception v4

    .line 866
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 945
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->carPayments:Ljava/util/List;

    .line 946
    iget-object v13, v11, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->payments:Ljava/util/List;

    sget-object v14, Lcom/didi/frame/protobuffer/OrderTotalCountReq;->DEFAULT_PAYMENTS:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/frame/protobuffer/Payments;

    .line 947
    .local v8, payments:Lcom/didi/frame/protobuffer/Payments;
    new-instance v7, Lcom/didi/car/model/CarPayment;

    invoke-direct {v7}, Lcom/didi/car/model/CarPayment;-><init>()V

    .line 948
    .local v7, payment:Lcom/didi/car/model/CarPayment;
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->payment_mode:Ljava/lang/Integer;

    sget-object v14, Lcom/didi/frame/protobuffer/Payments;->DEFAULT_PAYMENT_MODE:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v7, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 949
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->payment_name:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 950
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->icon_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentIconUrl:Ljava/lang/String;

    .line 951
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->act_url:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentActUrl:Ljava/lang/String;

    .line 952
    iget-object v13, v8, Lcom/didi/frame/protobuffer/Payments;->extra_msg:Ljava/lang/String;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v7, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    .line 953
    invoke-virtual {v7}, Lcom/didi/car/model/CarPayment;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 954
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lcom/didi/car/model/CarFeeDetail;->carPaymentStr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/didi/car/model/CarPayment;->paymentMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->carPaymentStr:Ljava/lang/String;

    .line 955
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->carPayments:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 957
    .end local v7           #payment:Lcom/didi/car/model/CarPayment;
    .end local v8           #payments:Lcom/didi/frame/protobuffer/Payments;
    :cond_4
    iget-object v13, v10, Lcom/didi/car/model/CarFeeDetail;->carPaymentStr:Ljava/lang/String;

    const-string v14, "|"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #refundInfo:Lcom/didi/frame/protobuffer/RefundInfoReq;
    :cond_5
    move-object v5, v10

    .line 966
    .local v5, ftotalCount:Lcom/didi/car/model/CarFeeDetail;
    new-instance v13, Lcom/didi/car/helper/CarPushHelper$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v5, v0}, Lcom/didi/car/helper/CarPushHelper$14;-><init>(Lcom/didi/car/model/CarFeeDetail;Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V

    invoke-static {v13}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 975
    return-void
.end method

.method protected static onPayResultReceived(Lcom/didi/car/helper/CarPushHelper$PayResultListener;[B)V
    .locals 9
    .parameter "l"
    .parameter "data"

    .prologue
    .line 1036
    const-string v7, "onPayResultReceived "

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1038
    const/4 v5, 0x0

    .line 1039
    .local v5, paySuccReq:Lcom/didi/frame/protobuffer/OrderPaySuccReq;
    new-instance v6, Lcom/squareup/wire/Wire;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v6, v7}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 1042
    .local v6, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v7, Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    invoke-virtual {v6, p1, v7}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/didi/frame/protobuffer/OrderPaySuccReq;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    new-instance v4, Lcom/didi/car/model/CarPayResult;

    invoke-direct {v4}, Lcom/didi/car/model/CarPayResult;-><init>()V

    .line 1049
    .local v4, payResult:Lcom/didi/car/model/CarPayResult;
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_title:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    .line 1050
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_order_subtitle:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    .line 1051
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->pay_info:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lcom/didi/car/model/CarPayResult;->payInfo:Ljava/lang/String;

    .line 1052
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->oid:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v4, Lcom/didi/car/model/CarPayResult;->oid:Ljava/lang/String;

    .line 1053
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->trade_status:Ljava/lang/Integer;

    sget-object v8, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->DEFAULT_TRADE_STATUS:Ljava/lang/Integer;

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/didi/car/model/CarPayResult;->tradeStatus:I

    .line 1054
    iget-object v7, v5, Lcom/didi/frame/protobuffer/OrderPaySuccReq;->share_coupon:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1055
    .local v3, jsonCoupon:Ljava/lang/String;
    new-instance v1, Lcom/didi/car/model/CarShareCouponInfo;

    invoke-direct {v1}, Lcom/didi/car/model/CarShareCouponInfo;-><init>()V

    .line 1057
    .local v1, couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/didi/car/model/CarShareCouponInfo;->parse(Lorg/json/JSONObject;)V

    .line 1058
    iput-object v1, v4, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1063
    :goto_1
    new-instance v7, Lcom/didi/car/helper/CarPushHelper$16;

    invoke-direct {v7, v4, p0}, Lcom/didi/car/helper/CarPushHelper$16;-><init>(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V

    invoke-static {v7}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    return-void

    .line 1043
    .end local v1           #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    .end local v3           #jsonCoupon:Ljava/lang/String;
    .end local v4           #payResult:Lcom/didi/car/model/CarPayResult;
    :catch_0
    move-exception v2

    .line 1044
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1059
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    .restart local v3       #jsonCoupon:Ljava/lang/String;
    .restart local v4       #payResult:Lcom/didi/car/model/CarPayResult;
    :catch_1
    move-exception v2

    .line 1060
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static onTimelyRemindReceived(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V
    .locals 8
    .parameter "l"
    .parameter "data"

    .prologue
    .line 1189
    const-string v6, "onTimelyRemindReceived "

    invoke-static {v6}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1190
    const/4 v4, 0x0

    .line 1192
    .local v4, remindReq:Lcom/didi/frame/protobuffer/TimelyRemindReq;
    new-instance v5, Lcom/squareup/wire/Wire;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 1194
    .local v5, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v6, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    invoke-virtual {v5, p1, v6}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    new-instance v1, Lcom/didi/car/model/CarServiceMessage;

    invoke-direct {v1}, Lcom/didi/car/model/CarServiceMessage;-><init>()V

    .line 1202
    .local v1, carServiceMsg:Lcom/didi/car/model/CarServiceMessage;
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    sget-object v7, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_ID:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/didi/car/model/CarServiceMessage;->msgId:I

    .line 1203
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    sget-object v7, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_TYPE:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    .line 1204
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    .line 1205
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->orderId:Ljava/lang/String;

    .line 1206
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    .line 1207
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    .line 1208
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    .line 1209
    iget-object v6, v4, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    .line 1211
    move-object v3, v1

    .line 1212
    .local v3, fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;
    new-instance v6, Lcom/didi/car/helper/CarPushHelper$20;

    invoke-direct {v6, v3, p0}, Lcom/didi/car/helper/CarPushHelper$20;-><init>(Lcom/didi/car/model/CarServiceMessage;Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V

    invoke-static {v6}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1221
    .end local v1           #carServiceMsg:Lcom/didi/car/model/CarServiceMessage;
    .end local v3           #fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;
    :goto_0
    return-void

    .line 1195
    :catch_0
    move-exception v2

    .line 1196
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static onWxAgentReceived(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;[B)V
    .locals 7
    .parameter "l"
    .parameter "data"

    .prologue
    .line 1099
    const-string v5, "onWxAgentReceived "

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1101
    const/4 v3, 0x0

    .line 1102
    .local v3, wxAgentReq:Lcom/didi/frame/protobuffer/WxAgentReq;
    new-instance v2, Lcom/squareup/wire/Wire;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {v2, v5}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 1104
    .local v2, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v5, Lcom/didi/frame/protobuffer/WxAgentReq;

    invoke-virtual {v2, p1, v5}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/didi/frame/protobuffer/WxAgentReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_0
    new-instance v4, Lcom/didi/car/model/CarWxAgent;

    invoke-direct {v4}, Lcom/didi/car/model/CarWxAgent;-><init>()V

    .line 1111
    .local v4, wxAgentResult:Lcom/didi/car/model/CarWxAgent;
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->type:Ljava/lang/Integer;

    sget-object v6, Lcom/didi/frame/protobuffer/WxAgentReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/didi/car/model/CarWxAgent;->type:I

    .line 1112
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_title:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarWxAgent;->title:Ljava/lang/String;

    .line 1113
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_subject:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarWxAgent;->subTitle:Ljava/lang/String;

    .line 1114
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->bind_msg:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarWxAgent;->Content:Ljava/lang/String;

    .line 1115
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->button_confirm:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarWxAgent;->confirmLabel:Ljava/lang/String;

    .line 1116
    iget-object v5, v3, Lcom/didi/frame/protobuffer/WxAgentReq;->button_cancel:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarWxAgent;->cancelLabel:Ljava/lang/String;

    .line 1118
    new-instance v5, Lcom/didi/car/helper/CarPushHelper$18;

    invoke-direct {v5, p0, v4}, Lcom/didi/car/helper/CarPushHelper$18;-><init>(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;Lcom/didi/car/model/CarWxAgent;)V

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1124
    return-void

    .line 1105
    .end local v4           #wxAgentResult:Lcom/didi/car/model/CarWxAgent;
    :catch_0
    move-exception v1

    .line 1106
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerCommonMesssageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 431
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeCommonMsgReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 432
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$5;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$5;-><init>(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 439
    return-void
.end method

.method public static registerDriverPositionListener(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V
    .locals 2
    .parameter "oid"
    .parameter "l"

    .prologue
    .line 169
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 170
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/car/helper/CarPushHelper$1;-><init>(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 177
    return-void
.end method

.method public static registerDriversLocationMessageListener(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V
    .locals 2
    .parameter "driversLocationGetListener"

    .prologue
    .line 1423
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeGulfstreamPassengerDriverLocByIdsReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1424
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$23;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$23;-><init>(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 1431
    return-void
.end method

.method public static registerNearDriversMessageListener(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V
    .locals 2
    .parameter "nearDriversGetListener"

    .prologue
    .line 1293
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeGulfstreamPassengerDriverLocReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1294
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$21;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$21;-><init>(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 1301
    return-void
.end method

.method public static registerOrderHitMessageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/didi/car/helper/CarPushHelper;->registerCommonMesssageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V

    .line 1142
    return-void
.end method

.method public static registerOrderNewRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 547
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderRealtimeFeeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 548
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$8;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$8;-><init>(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 555
    return-void
.end method

.method public static registerOrderNewTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 731
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderTotalFeeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 732
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$12;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$12;-><init>(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 739
    return-void
.end method

.method public static registerOrderRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 536
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderRealtimeCountReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 537
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$7;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$7;-><init>(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 544
    return-void
.end method

.method public static registerOrderStatusListener(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 307
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypePassengerOrderStatusReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 308
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$3;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$3;-><init>(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 315
    return-void
.end method

.method public static registerOrderTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 720
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderTotalCountReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 721
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$11;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$11;-><init>(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 728
    return-void
.end method

.method public static registerPayResultMessageListener(Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1025
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderPaySuccReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1026
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$15;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$15;-><init>(Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 1033
    return-void
.end method

.method public static registerTimelyRemindListener(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1178
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTimelyRemindReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1179
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$19;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$19;-><init>(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 1186
    return-void
.end method

.method public static registerWxAgentMessageListener(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;)V
    .locals 2
    .parameter "wxAgentListener"

    .prologue
    .line 1088
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeWxAgentReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1089
    .local v0, msgType:I
    new-instance v1, Lcom/didi/car/helper/CarPushHelper$17;

    invoke-direct {v1, p0}, Lcom/didi/car/helper/CarPushHelper$17;-><init>(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 1096
    return-void
.end method

.method public static sendGetPayResultMessage(Ljava/lang/String;ILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 11
    .parameter "oid"
    .parameter "tradeStatus"
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    .line 996
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 998
    .local v5, token:Ljava/lang/String;
    new-instance v3, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;

    invoke-direct {v3}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;-><init>()V

    .line 999
    .local v3, payStatusReqBuilder:Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;
    invoke-virtual {v3, p0}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;

    .line 1000
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->trade_status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;

    .line 1001
    invoke-virtual {v3, v5}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;

    .line 1003
    sget-object v7, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerPayStatusReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/DispatchMessageType;->getValue()I

    move-result v2

    .line 1004
    .local v2, msgType:I
    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerPayStatusReq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/PassengerPayStatusReq;->toByteArray()[B

    move-result-object v4

    .line 1006
    .local v4, payload:[B
    new-instance v1, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v1}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 1007
    .local v1, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1008
    array-length v7, v4

    invoke-static {v4, v10, v7}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1010
    sget-object v7, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeDispatchSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v6

    .line 1011
    .local v6, type:I
    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v0

    .line 1012
    .local v0, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1013
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v7, v8, p2}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public static sendLocation(ZI)V
    .locals 17
    .parameter "pull"
    .parameter "state"

    .prologue
    .line 114
    const-wide/16 v3, 0x0

    .line 115
    .local v3, lat:D
    const-wide/16 v5, 0x0

    .line 118
    .local v5, lng:D
    :try_start_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, strLat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, strLng:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 121
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 128
    sget-object v14, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrCoordinateReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->getValue()I

    move-result v9

    .line 130
    .local v9, payloadType:I
    new-instance v1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    invoke-direct {v1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;-><init>()V

    .line 131
    .local v1, cdntUpBuilder:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 134
    sget-object v14, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 135
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pull_peer(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 136
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 137
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->accuracy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 138
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getProvider()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->gps_source(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 140
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 141
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    invoke-interface {v14}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 142
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    invoke-interface {v14}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 145
    :cond_0
    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->build()Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    move-result-object v0

    .line 147
    .local v0, cdntUp:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sending----- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 149
    sget-object v14, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCollectSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v8

    .line 150
    .local v8, msgType:I
    new-instance v7, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v7}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 151
    .local v7, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 152
    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->toByteArray()[B

    move-result-object v13

    .line 153
    .local v13, tmpBytes:[B
    const/4 v14, 0x0

    array-length v15, v13

    invoke-static {v13, v14, v15}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 155
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v10

    .line 156
    .local v10, pushContext:Lcom/didi/frame/push/Push;
    if-eqz v10, :cond_1

    .line 157
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v14}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;)V

    .line 159
    .end local v0           #cdntUp:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    .end local v1           #cdntUpBuilder:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .end local v7           #msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .end local v8           #msgType:I
    .end local v9           #payloadType:I
    .end local v10           #pushContext:Lcom/didi/frame/push/Push;
    .end local v11           #strLat:Ljava/lang/String;
    .end local v12           #strLng:Ljava/lang/String;
    .end local v13           #tmpBytes:[B
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;ILcom/didi/frame/protobuffer/OrderStat;)V
    .locals 18
    .parameter "business"
    .parameter "type"
    .parameter "orderStat"

    .prologue
    .line 1237
    const-wide/16 v4, 0x0

    .line 1238
    .local v4, lat:D
    const-wide/16 v6, 0x0

    .line 1240
    .local v6, lng:D
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1241
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1242
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 1247
    :goto_0
    const-wide/16 v14, 0x0

    cmpl-double v14, v4, v14

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x0

    cmpl-double v14, v6, v14

    if-nez v14, :cond_2

    .line 1286
    :cond_0
    :goto_1
    return-void

    .line 1244
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v4

    .line 1245
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v6

    goto :goto_0

    .line 1250
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendLocationCallNearDrivers DepartureHelper.isUseDepart(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lat:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lng: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " map\'s zoom: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v13

    .line 1253
    .local v13, preferences:Lcom/didi/common/config/Preferences;
    invoke-virtual {v13}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v12

    .line 1255
    .local v12, phoneNum:Ljava/lang/String;
    new-instance v10, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    invoke-direct {v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;-><init>()V

    .line 1256
    .local v10, passengerDriverLocGetBuilder:Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    invoke-virtual {v10, v12}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1257
    sget-object v14, Lcom/didi/frame/protobuffer/Role;->Passenger:Lcom/didi/frame/protobuffer/Role;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/Role;->getValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1258
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1259
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1260
    const-wide v14, 0x40b3880000000000L

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->radius(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1261
    sget-object v14, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v2

    .line 1262
    .local v2, channel:I
    sget-object v14, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 1263
    sget-object v14, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v2

    .line 1267
    :cond_3
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->channel(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1268
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1269
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->order_stat(Lcom/didi/frame/protobuffer/OrderStat;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;

    .line 1272
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendLocationCallNearDrivers phoneNum "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  ----- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1274
    sget-object v14, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByLocReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/DispatchMessageType;->getValue()I

    move-result v9

    .line 1275
    .local v9, msgType:I
    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->toByteArray()[B

    move-result-object v11

    .line 1277
    .local v11, payload:[B
    new-instance v8, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v8}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 1278
    .local v8, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1279
    const/4 v14, 0x0

    array-length v15, v11

    invoke-static {v11, v14, v15}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1281
    sget-object v14, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeDispatchSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v1

    .line 1282
    .local v1, aMsgTypekMsgTypeDispatchSvrNoRspReqValueType:I
    invoke-virtual {v8}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v3

    .line 1283
    .local v3, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1284
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto/16 :goto_1

    .line 1264
    .end local v1           #aMsgTypekMsgTypeDispatchSvrNoRspReqValueType:I
    .end local v3           #data:[B
    .end local v8           #msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .end local v9           #msgType:I
    .end local v11           #payload:[B
    :cond_4
    sget-object v14, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_3

    .line 1265
    sget-object v14, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v2

    goto/16 :goto_2
.end method

.method public static sendMsgCallDriverLocation(Lcom/didi/frame/business/Business;DDLcom/didi/frame/protobuffer/OrderStat;Ljava/util/List;)V
    .locals 14
    .parameter "business"
    .parameter "lat"
    .parameter "lng"
    .parameter "orderStat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "DD",
            "Lcom/didi/frame/protobuffer/OrderStat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p6, driverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v10, 0x0

    cmpl-double v10, p1, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v10, p3, v10

    if-nez v10, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    .line 1383
    .local v8, preferences:Lcom/didi/common/config/Preferences;
    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v7

    .line 1385
    .local v7, phoneNum:Ljava/lang/String;
    new-instance v5, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    invoke-direct {v5}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;-><init>()V

    .line 1386
    .local v5, passengerDiverLocGetByIdBuilder:Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    invoke-virtual {v5, v7}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1387
    sget-object v10, Lcom/didi/frame/protobuffer/Role;->Passenger:Lcom/didi/frame/protobuffer/Role;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/Role;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1388
    sget-object v10, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    .line 1389
    .local v1, channel:I
    sget-object v10, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v10, :cond_3

    .line 1390
    sget-object v10, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    .line 1394
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1395
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->channel(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1397
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->diverIds(Ljava/util/List;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1398
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->order_stat(Lcom/didi/frame/protobuffer/OrderStat;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;

    .line 1401
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendMsgCallDriverLocation----- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1403
    sget-object v10, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByIdReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/DispatchMessageType;->getValue()I

    move-result v4

    .line 1404
    .local v4, msgType:I
    invoke-virtual {v5}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->toByteArray()[B

    move-result-object v6

    .line 1406
    .local v6, payload:[B
    new-instance v3, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v3}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 1407
    .local v3, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1408
    const/4 v10, 0x0

    array-length v11, v6

    invoke-static {v6, v10, v11}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 1410
    sget-object v10, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeDispatchSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v9

    .line 1411
    .local v9, type:I
    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v2

    .line 1412
    .local v2, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1413
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    goto/16 :goto_0

    .line 1391
    .end local v2           #data:[B
    .end local v3           #msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .end local v4           #msgType:I
    .end local v6           #payload:[B
    .end local v9           #type:I
    :cond_3
    sget-object v10, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v10, :cond_2

    .line 1392
    sget-object v10, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    goto/16 :goto_1
.end method

.method public static sendOrderStatusMessage(Ljava/lang/String;IILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V
    .locals 23
    .parameter "oid"
    .parameter "status"
    .parameter "wait"
    .parameter "callback"

    .prologue
    .line 247
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendOrderStatusMessage-> oid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " status:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, strLat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v16

    .line 250
    .local v16, strLng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v17

    .line 251
    .local v17, token:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, phone:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 254
    .local v4, dX:D
    const-wide/16 v6, 0x0

    .line 257
    .local v6, dY:D
    :try_start_0
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 258
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 264
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sendOrderStatusMessage-> oid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " status:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dX:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dY:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 266
    sget-object v19, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/DispatchMessageType;->getValue()I

    move-result v11

    .line 268
    .local v11, msgType:I
    new-instance v12, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    invoke-direct {v12}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;-><init>()V

    .line 269
    .local v12, orderReqBuilder:Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    invoke-virtual {v12, v14}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 270
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->oid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 272
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->status(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 273
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->wait(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 275
    new-instance v3, Lcom/didi/frame/protobuffer/Coordinate$Builder;

    invoke-direct {v3}, Lcom/didi/frame/protobuffer/Coordinate$Builder;-><init>()V

    .line 276
    .local v3, cooBuilder:Lcom/didi/frame/protobuffer/Coordinate$Builder;
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->x(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;

    .line 277
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->y(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/Coordinate$Builder;

    .line 278
    sget-object v19, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/Coordinate$Builder;

    .line 279
    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/Coordinate$Builder;->build()Lcom/didi/frame/protobuffer/Coordinate;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->coordinate(Lcom/didi/frame/protobuffer/Coordinate;)Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;

    .line 281
    invoke-virtual {v12}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;->build()Lcom/didi/frame/protobuffer/PassengerOrderGetReq;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/PassengerOrderGetReq;->toByteArray()[B

    move-result-object v13

    .line 283
    .local v13, payload:[B
    new-instance v10, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v10}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 284
    .local v10, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 285
    const/16 v19, 0x0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v0, v1}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 287
    sget-object v19, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeDispatchSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v18

    .line 288
    .local v18, type:I
    invoke-virtual {v10}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v8

    .line 289
    .local v8, data:[B
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 290
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v8, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 292
    .end local v3           #cooBuilder:Lcom/didi/frame/protobuffer/Coordinate$Builder;
    .end local v8           #data:[B
    .end local v10           #msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .end local v11           #msgType:I
    .end local v12           #orderReqBuilder:Lcom/didi/frame/protobuffer/PassengerOrderGetReq$Builder;
    .end local v13           #payload:[B
    .end local v18           #type:I
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v9

    .line 260
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendPassengerPositionMessage()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    sget-object v1, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarPushHelper;->sendLocation(ZI)V

    .line 107
    return-void
.end method

.method public static unregisterCommonMesssageListener()V
    .locals 2

    .prologue
    .line 521
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeCommonMsgReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 522
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 523
    return-void
.end method

.method public static unregisterDriverPositionListener()V
    .locals 2

    .prologue
    .line 228
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 229
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 230
    return-void
.end method

.method public static unregisterDriversLocationMessageListener()V
    .locals 2

    .prologue
    .line 1480
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeGulfstreamPassengerDriverLocReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1481
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 1482
    return-void
.end method

.method public static unregisterNearDriversMessageListener()V
    .locals 2

    .prologue
    .line 1369
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeGulfstreamPassengerDriverLocReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1370
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 1371
    return-void
.end method

.method public static unregisterOrderNewRealtimeCountListener()V
    .locals 2

    .prologue
    .line 705
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderRealtimeFeeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 706
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 707
    return-void
.end method

.method public static unregisterOrderNewTotalCount()V
    .locals 2

    .prologue
    .line 989
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderTotalFeeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 990
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 991
    return-void
.end method

.method public static unregisterOrderRealtimeCountListener()V
    .locals 2

    .prologue
    .line 700
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderRealtimeCountReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 701
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 702
    return-void
.end method

.method public static unregisterOrderStatusListener()V
    .locals 2

    .prologue
    .line 419
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypePassengerOrderStatusReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 420
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 421
    return-void
.end method

.method public static unregisterOrderTotalCount()V
    .locals 2

    .prologue
    .line 984
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderTotalCountReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 985
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 986
    return-void
.end method

.method public static unregisterPayResultMessageListener()V
    .locals 2

    .prologue
    .line 1074
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeOrderPaySuccReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1075
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 1076
    return-void
.end method

.method public static unregisterTimelyRemindListener()V
    .locals 2

    .prologue
    .line 1224
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTimelyRemindReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1225
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 1226
    return-void
.end method

.method public static unregisterWxAgentMessageListener()V
    .locals 2

    .prologue
    .line 1127
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeWxAgentReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 1128
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 1129
    return-void
.end method
