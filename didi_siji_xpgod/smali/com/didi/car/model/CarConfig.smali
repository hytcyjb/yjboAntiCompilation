.class public Lcom/didi/car/model/CarConfig;
.super Lcom/didi/common/model/BaseObject;
.source "CarConfig.java"


# static fields
.field public static final CANCELTIP_DELIMITER:Ljava/lang/String; = "#"

.field public static final CANCELTIP_ESCAPE_CHAR:Ljava/lang/String; = "\\"

.field public static final CANCELTIP_OPTION_REMARK_DELIMITER:Ljava/lang/String; = "|"

.field public static final serialVersionUID:J = 0x1ff5760e770fd35bL


# instance fields
.field public bad:Ljava/lang/String;

.field public badCmtTips:Ljava/lang/String;

.field public commentTips:Ljava/lang/String;

.field public complaintType:Ljava/lang/String;

.field public driver_icon_url:Ljava/lang/String;

.field public fast_car_icon:Ljava/lang/String;

.field public good:Ljava/lang/String;

.field public goodCmtTips:Ljava/lang/String;

.field public invoiceType:Ljava/lang/String;

.field public project_icon_url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 40
    .parameter "obj"

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 58
    const-string v36, "errno"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1

    const-string v36, "errno"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v36, "project_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 62
    .local v27, object:Lorg/json/JSONObject;
    if-eqz v27, :cond_3

    .line 63
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v19

    .line 64
    .local v19, height:I
    const/16 v36, 0x5dc

    move/from16 v0, v19

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 65
    const-string v36, "project_icon_android"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->project_icon_url:Ljava/lang/String;

    .line 66
    const-string v36, "driver_icon_android"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    .line 74
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->project_icon_url:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setActivityIcon(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setActivityIconCar(Ljava/lang/String;)V

    .line 76
    const-string v36, "fast_car_icon"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->fast_car_icon:Ljava/lang/String;

    .line 78
    new-instance v25, Ljava/util/ArrayList;

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v25, listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 80
    new-instance v21, Lcom/didi/common/model/Icon;

    invoke-direct/range {v21 .. v21}, Lcom/didi/common/model/Icon;-><init>()V

    .line 81
    .local v21, icon:Lcom/didi/common/model/Icon;
    const-string v36, "activity"

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->type:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->urlNormal:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    .line 84
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v21           #icon:Lcom/didi/common/model/Icon;
    :cond_2
    invoke-static/range {v25 .. v25}, Lcom/didi/activity/ActivityIconHelper;->saveIcons(Ljava/util/List;)V

    .line 88
    .end local v19           #height:I
    .end local v25           #listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    :cond_3
    const-string v36, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/car/model/CarConfig;->version:I

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/car/model/CarConfig;->version:I

    move/from16 v36, v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/didi/common/config/Preferences;->getCarConfigVersion()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    .line 92
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/car/model/CarConfig;->version:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarConfigVersion(I)V

    .line 94
    const-string v36, "p_order_get_req"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 95
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    const-string v37, "p_order_get_req"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarConfigOrderStatus(I)V

    .line 98
    :cond_4
    const-string v36, "p_pay_status_req"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 99
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    const-string v37, "p_pay_status_req"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarConfigPayResult(I)V

    .line 102
    :cond_5
    const-string v36, "p_push_reconnect"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 103
    const-string v36, "p_push_reconnect"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    const/16 v24, 0x1

    .line 104
    .local v24, isRePush:Z
    :goto_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPushReConnConfigResult(Z)V

    .line 107
    .end local v24           #isRePush:Z
    :cond_6
    const-string v36, "p_get_order_status_spare"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 108
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    const-string v37, "p_get_order_status_spare"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setQueryCarOrderStatus(I)V

    .line 111
    :cond_7
    const-string v36, "p_get_order_status_spare_open"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 112
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    const-string v37, "p_get_order_status_spare_open"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarOrderStatusSwitch(I)V

    .line 115
    :cond_8
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    const-string v37, "service_phone"

    const-string v38, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setServicePhone(Ljava/lang/String;)V

    .line 117
    const-string v36, "invoiceType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    .line 118
    const-string v36, "complaintType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_9

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "\""

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    .line 122
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "\""

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    .line 125
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_b

    .line 126
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->invoiceType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarInvoiceType(Ljava/lang/String;)V

    .line 128
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_c

    .line 129
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->complaintType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarComplaintType(Ljava/lang/String;)V

    .line 133
    :cond_c
    const-string v36, "commentType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 134
    const-string v36, "commentType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 135
    .local v10, commnetObj:Lorg/json/JSONObject;
    const-string v36, "commentTips"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->commentTips:Ljava/lang/String;

    .line 136
    const-string v36, "goodCmtTips"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->goodCmtTips:Ljava/lang/String;

    .line 137
    const-string v36, "badCmtTips"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->badCmtTips:Ljava/lang/String;

    .line 138
    const-string v36, "good"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 139
    .local v4, arrayGood:Lorg/json/JSONArray;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_d

    .line 140
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "\""

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->good:Ljava/lang/String;

    .line 142
    :cond_d
    const-string v36, "bad"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 143
    .local v3, arrayBad:Lorg/json/JSONArray;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_e

    .line 144
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "\""

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->bad:Ljava/lang/String;

    .line 147
    :cond_e
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->commentTips:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarCommentTips(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->goodCmtTips:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarGoodCmtTips(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->badCmtTips:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarBadCmtTips(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->good:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->good:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarGoodComment(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->bad:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/car/model/CarConfig;->bad:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarBadComment(Ljava/lang/String;)V

    .line 154
    .end local v3           #arrayBad:Lorg/json/JSONArray;
    .end local v4           #arrayGood:Lorg/json/JSONArray;
    .end local v10           #commnetObj:Lorg/json/JSONObject;
    :cond_f
    const-string v36, "cancelType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_17

    .line 155
    const-string v36, "cancelType"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    .local v6, cancelObj:Lorg/json/JSONObject;
    const-string v36, "tips"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 158
    .local v8, cancelTipObj:Lorg/json/JSONObject;
    const-string v36, "neworder"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 159
    .local v31, realTimeTip:Ljava/lang/String;
    const-string v36, "preorder"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, bookingTip:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCarCancelTripRealtimeTip(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/didi/common/config/Preferences;->setCarCancelTripBookingTip(Ljava/lang/String;)V

    .line 164
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v35, textOptionArray:Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v23, iconOptionArray:Ljava/lang/StringBuilder;
    const-string v36, "select"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 167
    .local v7, cancelOptionObjArray:Lorg/json/JSONArray;
    if-eqz v7, :cond_17

    .line 168
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 169
    .local v29, optionIndex:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 170
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    .line 171
    .local v30, optionObj:Lorg/json/JSONObject;
    if-eqz v30, :cond_11

    .line 172
    const-string v36, "icon1"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "#"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v36, "text"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v36, "remark"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 175
    .local v32, remark:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_10

    .line 176
    const-string v36, "|"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_10
    const-string v36, "#"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v32           #remark:Ljava/lang/String;
    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 67
    .end local v5           #bookingTip:Ljava/lang/String;
    .end local v6           #cancelObj:Lorg/json/JSONObject;
    .end local v7           #cancelOptionObjArray:Lorg/json/JSONArray;
    .end local v8           #cancelTipObj:Lorg/json/JSONObject;
    .end local v20           #i:I
    .end local v23           #iconOptionArray:Ljava/lang/StringBuilder;
    .end local v29           #optionIndex:I
    .end local v30           #optionObj:Lorg/json/JSONObject;
    .end local v31           #realTimeTip:Ljava/lang/String;
    .end local v35           #textOptionArray:Ljava/lang/StringBuilder;
    .restart local v19       #height:I
    :cond_12
    const/16 v36, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v36

    if-le v0, v1, :cond_13

    .line 68
    const-string v36, "project_icon_android_sp"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->project_icon_url:Ljava/lang/String;

    .line 69
    const-string v36, "driver_icon_android_sp"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 71
    :cond_13
    const-string v36, "project_icon_android_third"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->project_icon_url:Ljava/lang/String;

    .line 72
    const-string v36, "driver_icon_android_third"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/car/model/CarConfig;->driver_icon_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 103
    .end local v19           #height:I
    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 181
    .restart local v5       #bookingTip:Ljava/lang/String;
    .restart local v6       #cancelObj:Lorg/json/JSONObject;
    .restart local v7       #cancelOptionObjArray:Lorg/json/JSONArray;
    .restart local v8       #cancelTipObj:Lorg/json/JSONObject;
    .restart local v20       #i:I
    .restart local v23       #iconOptionArray:Ljava/lang/StringBuilder;
    .restart local v29       #optionIndex:I
    .restart local v31       #realTimeTip:Ljava/lang/String;
    .restart local v35       #textOptionArray:Ljava/lang/StringBuilder;
    :cond_15
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v36

    if-eqz v36, :cond_16

    .line 182
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarCancelTripIconOption(Ljava/lang/String;)V

    .line 186
    :cond_16
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v36

    if-eqz v36, :cond_17

    .line 187
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/common/config/Preferences;->setCarCancelTripTextOption(Ljava/lang/String;)V

    .line 193
    .end local v5           #bookingTip:Ljava/lang/String;
    .end local v6           #cancelObj:Lorg/json/JSONObject;
    .end local v7           #cancelOptionObjArray:Lorg/json/JSONArray;
    .end local v8           #cancelTipObj:Lorg/json/JSONObject;
    .end local v20           #i:I
    .end local v23           #iconOptionArray:Ljava/lang/StringBuilder;
    .end local v29           #optionIndex:I
    .end local v31           #realTimeTip:Ljava/lang/String;
    .end local v35           #textOptionArray:Ljava/lang/StringBuilder;
    :cond_17
    const-string v36, "not_use_local_cache"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_18

    .line 194
    const-string v36, "not_use_local_cache"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    const/16 v26, 0x1

    .line 195
    .local v26, notUseLocalCache:Z
    :goto_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setNotUseLocalCache(Z)V

    .line 198
    .end local v26           #notUseLocalCache:Z
    :cond_18
    const-string v36, "flier_normal_icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 199
    .local v17, flierNormalIcon:Ljava/lang/String;
    const-string v36, "flier_normal_md5"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, flierNormalMD5:Ljava/lang/String;
    const-string v36, "flier_light_icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, flierLightIcon:Ljava/lang/String;
    const-string v36, "flier_light_md5"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, flierLightMD5:Ljava/lang/String;
    const-string v36, "fast_car_invoice_switch"

    const/16 v37, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 203
    .local v13, fastCarInvoiceSwitch:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Lcom/didi/common/config/Preferences;->setFlierInvoiceSwitch(I)V

    .line 205
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v22, iconList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    invoke-static/range {v17 .. v17}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_19

    invoke-static {v15}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_19

    .line 207
    new-instance v21, Lcom/didi/common/model/Icon;

    invoke-direct/range {v21 .. v21}, Lcom/didi/common/model/Icon;-><init>()V

    .line 208
    .restart local v21       #icon:Lcom/didi/common/model/Icon;
    const-string v36, "flier"

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->type:Ljava/lang/String;

    .line 209
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->urlNormal:Ljava/lang/String;

    .line 210
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    .line 211
    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/didi/common/model/Icon;->urlLight:Ljava/lang/String;

    .line 212
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/didi/common/model/Icon;->md5Light:Ljava/lang/String;

    .line 213
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v21           #icon:Lcom/didi/common/model/Icon;
    :cond_19
    invoke-static/range {v22 .. v22}, Lcom/didi/flier/business/FlierIconHelper;->saveIcons(Ljava/util/List;)V

    .line 218
    const-string v36, "get_estimate_price_url"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 219
    .local v12, estimatePriceUrl:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_1a

    .line 220
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Lcom/didi/common/config/Preferences;->setEstimatePriceUrl(Ljava/lang/String;)V

    .line 223
    :cond_1a
    const-string v36, "dynamic_price_tips"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, dynamicPriceTips:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_1b

    .line 225
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/didi/common/config/Preferences;->setDynamicPriceTips(Ljava/lang/String;)V

    .line 228
    :cond_1b
    const-string v36, "estimate_price_default_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 229
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    const-string v37, "estimate_price_default_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/car/config/CarPreferences;->setCarPollDynamicPriceTime(I)V

    .line 231
    :cond_1c
    const-string v36, "estimate_price_fast_car_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 232
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    const-string v37, "estimate_price_fast_car_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/car/config/CarPreferences;->setFlierPollDynamicPriceTime(I)V

    .line 234
    :cond_1d
    const-string v36, "estimate_price_threshold"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 235
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    const-string v37, "estimate_price_threshold"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/didi/car/config/CarPreferences;->setEstimatePriceThreshold(I)V

    .line 238
    :cond_1e
    const-string v36, "special_car_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 239
    const-string v36, "special_car_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 240
    .local v9, carLevelObjArray:Lorg/json/JSONArray;
    if-eqz v9, :cond_22

    .line 241
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 242
    .restart local v29       #optionIndex:I
    const/16 v33, 0x0

    .line 243
    .local v33, resultCarType:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_21

    .line 244
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 245
    .local v28, optionCarLevelObj:Lorg/json/JSONObject;
    if-eqz v28, :cond_1f

    const-string v36, "level_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 246
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    const-string v37, "level_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    const-string v38, "level_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Lcom/didi/car/config/CarPreferences;->setCarLevelType(II)V

    .line 248
    const-string v36, "level_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    or-int v33, v33, v36

    .line 243
    :cond_1f
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 194
    .end local v9           #carLevelObjArray:Lorg/json/JSONArray;
    .end local v11           #dynamicPriceTips:Ljava/lang/String;
    .end local v12           #estimatePriceUrl:Ljava/lang/String;
    .end local v13           #fastCarInvoiceSwitch:I
    .end local v15           #flierLightIcon:Ljava/lang/String;
    .end local v16           #flierLightMD5:Ljava/lang/String;
    .end local v17           #flierNormalIcon:Ljava/lang/String;
    .end local v18           #flierNormalMD5:Ljava/lang/String;
    .end local v20           #i:I
    .end local v22           #iconList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    .end local v28           #optionCarLevelObj:Lorg/json/JSONObject;
    .end local v29           #optionIndex:I
    .end local v33           #resultCarType:I
    :cond_20
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 251
    .restart local v9       #carLevelObjArray:Lorg/json/JSONArray;
    .restart local v11       #dynamicPriceTips:Ljava/lang/String;
    .restart local v12       #estimatePriceUrl:Ljava/lang/String;
    .restart local v13       #fastCarInvoiceSwitch:I
    .restart local v15       #flierLightIcon:Ljava/lang/String;
    .restart local v16       #flierLightMD5:Ljava/lang/String;
    .restart local v17       #flierNormalIcon:Ljava/lang/String;
    .restart local v18       #flierNormalMD5:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v22       #iconList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    .restart local v29       #optionIndex:I
    .restart local v33       #resultCarType:I
    :cond_21
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/didi/car/config/CarPreferences;->setCarConfigLevelType(I)V

    .line 255
    .end local v9           #carLevelObjArray:Lorg/json/JSONArray;
    .end local v20           #i:I
    .end local v29           #optionIndex:I
    .end local v33           #resultCarType:I
    :cond_22
    const-string v36, "fast_car_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 256
    const-string v36, "fast_car_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 257
    .local v14, flierLevelObjArray:Lorg/json/JSONArray;
    if-eqz v14, :cond_0

    .line 258
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 259
    .restart local v29       #optionIndex:I
    const/16 v34, 0x0

    .line 260
    .local v34, resultFlierType:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 261
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 262
    .restart local v28       #optionCarLevelObj:Lorg/json/JSONObject;
    if-eqz v28, :cond_23

    const-string v36, "level_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_23

    .line 263
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    const-string v37, "level_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v37

    const-string v38, "level_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Lcom/didi/car/config/CarPreferences;->setCarLevelType(II)V

    .line 265
    const-string v36, "level_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    or-int v34, v34, v36

    .line 260
    :cond_23
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 268
    .end local v28           #optionCarLevelObj:Lorg/json/JSONObject;
    :cond_24
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/didi/car/config/CarPreferences;->setFlierConfigLevelType(I)V

    goto/16 :goto_0
.end method
