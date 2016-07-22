.class public Lcom/didi/frame/business/OrderHelper;
.super Ljava/lang/Object;
.source "OrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/business/OrderHelper$1;
    }
.end annotation


# static fields
.field private static activityOrder:Lcom/didi/activity/model/ActivityOrder;

.field private static business:Lcom/didi/frame/business/Business;

.field private static carOrder:Lcom/didi/car/model/CarOrder;

.field private static ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field private static flierOrder:Lcom/didi/flier/model/FlierOrder;

.field private static mNeedResetSendable:Z

.field private static sendable:Lcom/didi/frame/Sendable;

.field private static taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sput-object v0, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static buildOrderByParams(Lorg/json/JSONObject;)Z
    .locals 40
    .parameter "object"

    .prologue
    .line 678
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "buildOrderByParams order json: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 680
    const-string v35, "order_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v31

    .line 681
    .local v31, order_type:I
    const-string v35, "order_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 683
    .local v30, order_time:I
    new-instance v12, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v12}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 684
    .local v12, common:Lcom/didi/common/model/CommonAttributes;
    const-string v35, "area"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 685
    const-string v35, "time"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 686
    sget-object v35, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 687
    const-string v35, "traffic_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v12, Lcom/didi/common/model/CommonAttributes;->traffic_type:I

    .line 688
    const-string v35, "traffic_num"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->traffic_num:Ljava/lang/String;

    .line 690
    iget-object v11, v12, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 691
    .local v11, cityName:Ljava/lang/String;
    invoke-static {v11}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_9

    .line 692
    invoke-static {v11}, Lcom/didi/common/database/CityListHelper;->getTaxiCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v9

    .line 693
    .local v9, city:Lcom/didi/common/model/City;
    if-eqz v9, :cond_0

    .line 694
    iget-object v11, v9, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    .line 700
    :cond_0
    iput-object v11, v12, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 701
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v12, Lcom/didi/common/model/CommonAttributes;->is_html:I

    .line 702
    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    .line 703
    iget-object v0, v12, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 704
    .local v34, time:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/didi/common/util/TimeUtil;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 705
    .local v14, dt:Ljava/util/Date;
    if-eqz v14, :cond_3

    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 707
    .local v5, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 708
    .local v27, now:Ljava/util/Calendar;
    invoke-virtual {v5, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 709
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 710
    .local v15, dtLong:J
    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    .line 711
    .local v28, nowLong:J
    cmp-long v35, v15, v28

    if-lez v35, :cond_3

    .line 712
    const/4 v13, 0x0

    .line 714
    .local v13, days:I
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v35

    const/16 v36, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 715
    const/16 v35, 0x6

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v35

    const/16 v36, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v36

    sub-int v13, v35, v36

    .line 730
    :cond_1
    :goto_0
    const/16 v20, 0x1

    .line 731
    .local v20, isDays:Z
    packed-switch v13, :pswitch_data_0

    .line 742
    const/16 v20, 0x0

    .line 746
    :goto_1
    if-eqz v20, :cond_2

    .line 747
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%02d:%02d"

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xb

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0xc

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 750
    :cond_2
    move-object/from16 v0, v34

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 753
    .end local v5           #calendar:Ljava/util/Calendar;
    .end local v13           #days:I
    .end local v15           #dtLong:J
    .end local v20           #isDays:Z
    .end local v27           #now:Ljava/util/Calendar;
    .end local v28           #nowLong:J
    :cond_3
    sget-object v35, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 758
    .end local v14           #dt:Ljava/util/Date;
    .end local v34           #time:Ljava/lang/String;
    :goto_2
    iget-object v0, v12, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 759
    .local v10, cityId:Ljava/lang/String;
    new-instance v32, Lcom/didi/common/model/Address;

    invoke-direct/range {v32 .. v32}, Lcom/didi/common/model/Address;-><init>()V

    .line 760
    .local v32, start:Lcom/didi/common/model/Address;
    move-object/from16 v0, v32

    iput-object v10, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 761
    iget-object v0, v12, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 762
    const-string v35, "from_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 763
    const-string v35, "from_displayname"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 764
    const-string v35, "from_lat"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 765
    const-string v35, "from_lng"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 766
    invoke-static/range {v32 .. v32}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 776
    new-instance v17, Lcom/didi/common/model/Address;

    invoke-direct/range {v17 .. v17}, Lcom/didi/common/model/Address;-><init>()V

    .line 777
    .local v17, end:Lcom/didi/common/model/Address;
    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 778
    iget-object v0, v12, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 779
    const-string v35, "to_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 780
    const-string v35, "to_displayname"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 781
    const-string v35, "to_lat"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 782
    const-string v35, "to_lng"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 783
    invoke-static/range {v17 .. v17}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 785
    const/16 v21, 0x1

    .line 787
    .local v21, isValid:Z
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_4

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 789
    :cond_4
    const/16 v21, 0x0

    .line 792
    :cond_5
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 793
    :cond_6
    const/16 v21, 0x0

    .line 796
    :cond_7
    if-nez v21, :cond_d

    .line 797
    const v35, 0x7f0b0428

    invoke-static/range {v35 .. v35}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 838
    .end local v9           #city:Lcom/didi/common/model/City;
    .end local v10           #cityId:Ljava/lang/String;
    .end local v17           #end:Lcom/didi/common/model/Address;
    .end local v21           #isValid:Z
    .end local v32           #start:Lcom/didi/common/model/Address;
    :cond_8
    :goto_3
    return v21

    .line 697
    :cond_9
    const v35, 0x7f0b04f2

    invoke-static/range {v35 .. v35}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 698
    const/16 v21, 0x0

    goto :goto_3

    .line 717
    .restart local v5       #calendar:Ljava/util/Calendar;
    .restart local v9       #city:Lcom/didi/common/model/City;
    .restart local v13       #days:I
    .restart local v14       #dt:Ljava/util/Date;
    .restart local v15       #dtLong:J
    .restart local v27       #now:Ljava/util/Calendar;
    .restart local v28       #nowLong:J
    .restart local v34       #time:Ljava/lang/String;
    :cond_a
    sub-long v3, v15, v28

    .line 718
    .local v3, between:J
    const-wide/32 v35, 0x5265c00

    div-long v35, v3, v35

    move-wide/from16 v0, v35

    long-to-int v13, v0

    .line 719
    const/16 v35, 0xb

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v35

    rsub-int/lit8 v18, v35, 0x17

    .line 720
    .local v18, hours:I
    const/16 v35, 0xc

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v35

    rsub-int/lit8 v24, v35, 0x3c

    .line 721
    .local v24, minutes:I
    const/16 v35, 0x3c

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 722
    add-int/lit8 v18, v18, 0x1

    .line 723
    const/16 v24, 0x0

    .line 725
    :cond_b
    const-wide/32 v35, 0x5265c00

    rem-long v35, v3, v35

    mul-int/lit8 v37, v18, 0x3c

    mul-int/lit8 v37, v37, 0x3c

    move/from16 v0, v37

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v37, v0

    mul-int/lit8 v38, v24, 0x3c

    move/from16 v0, v38

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    cmp-long v35, v35, v37

    if-lez v35, :cond_1

    .line 726
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 733
    .end local v3           #between:J
    .end local v18           #hours:I
    .end local v24           #minutes:I
    .restart local v20       #isDays:Z
    :pswitch_0
    const-string v34, "\u4eca\u5929"

    .line 734
    goto/16 :goto_1

    .line 736
    :pswitch_1
    const-string v34, "\u660e\u5929"

    .line 737
    goto/16 :goto_1

    .line 739
    :pswitch_2
    const-string v34, "\u540e\u5929"

    .line 740
    goto/16 :goto_1

    .line 755
    .end local v5           #calendar:Ljava/util/Calendar;
    .end local v13           #days:I
    .end local v14           #dt:Ljava/util/Date;
    .end local v15           #dtLong:J
    .end local v20           #isDays:Z
    .end local v27           #now:Ljava/util/Calendar;
    .end local v28           #nowLong:J
    .end local v34           #time:Ljava/lang/String;
    :cond_c
    sget-object v35, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_2

    .line 802
    .restart local v10       #cityId:Ljava/lang/String;
    .restart local v17       #end:Lcom/didi/common/model/Address;
    .restart local v21       #isValid:Z
    .restart local v32       #start:Lcom/didi/common/model/Address;
    :cond_d
    if-nez v31, :cond_e

    .line 803
    sget-object v35, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static/range {v35 .. v35}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v33

    check-cast v33, Lcom/didi/taxi/model/TaxiOrder;

    .line 804
    .local v33, taxi:Lcom/didi/taxi/model/TaxiOrder;
    sget-object v35, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    .line 805
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 806
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 807
    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 809
    sput-object v33, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    .line 812
    .end local v33           #taxi:Lcom/didi/taxi/model/TaxiOrder;
    :cond_e
    const/16 v35, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 813
    sget-object v35, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static/range {v35 .. v35}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v6

    check-cast v6, Lcom/didi/car/model/CarOrder;

    .line 814
    .local v6, car:Lcom/didi/car/model/CarOrder;
    sget-object v35, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    move-object/from16 v0, v35

    iput-object v0, v12, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    .line 815
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 816
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 817
    iput-object v12, v6, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 819
    const-string v35, "car_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, carType:Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_10

    .line 821
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v26, models:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarModel;>;"
    const-string v35, ","

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 823
    .local v7, carLevels:[Ljava/lang/String;
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v0, v2

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    aget-object v23, v2, v19

    .line 824
    .local v23, level:Ljava/lang/String;
    new-instance v25, Lcom/didi/car/model/CarModel;

    invoke-direct/range {v25 .. v25}, Lcom/didi/car/model/CarModel;-><init>()V

    .line 825
    .local v25, model:Lcom/didi/car/model/CarModel;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lcom/didi/car/model/CarModel;->cLevel:I

    .line 826
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 828
    .end local v23           #level:Ljava/lang/String;
    .end local v25           #model:Lcom/didi/car/model/CarModel;
    :cond_f
    move-object/from16 v0, v26

    iput-object v0, v6, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 831
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #carLevels:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v22           #len$:I
    .end local v26           #models:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarModel;>;"
    :cond_10
    sput-object v6, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto/16 :goto_3

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static checkBusiness(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "targetBusiness"

    .prologue
    .line 261
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 262
    .local v0, b:Lcom/didi/frame/business/Business;
    if-eq v0, p0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static clearTip()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 369
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/model/TaxiOrder;->setTip(I)V

    goto :goto_0

    .line 375
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput v2, v0, Lcom/didi/car/model/CarOrder;->tip:I

    goto :goto_0

    .line 379
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput v2, v0, Lcom/didi/flier/model/FlierOrder;->tip:I

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static clearWaitTime()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setWaitTime(I)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static copyImplSerializable(Lcom/didi/common/model/BaseObject;)Ljava/lang/Object;
    .locals 12
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TaxiOrder:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/didi/common/model/BaseObject;",
            ")TTaxiOrder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 548
    .local v8, oos:Ljava/io/ObjectOutputStream;
    const/4 v0, 0x0

    .line 549
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 551
    .local v6, ois:Ljava/io/ObjectInputStream;
    const/4 v5, 0x0

    .line 554
    .local v5, o:Ljava/lang/Object;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 556
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .local v9, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 557
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 558
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 560
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .local v7, ois:Ljava/io/ObjectInputStream;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v5

    .line 566
    if-eqz v3, :cond_0

    .line 567
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 569
    :cond_0
    if-eqz v9, :cond_1

    .line 570
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V

    .line 572
    :cond_1
    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 575
    :cond_2
    if-eqz v7, :cond_3

    .line 576
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 580
    :cond_3
    :goto_0
    return-object v5

    .line 562
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    .line 563
    .local v4, e:Ljava/lang/Exception;
    :goto_1
    :try_start_6
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "this have not the object"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 565
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 566
    :goto_2
    if-eqz v2, :cond_4

    .line 567
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 569
    :cond_4
    if-eqz v8, :cond_5

    .line 570
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 572
    :cond_5
    if-eqz v0, :cond_6

    .line 573
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 575
    :cond_6
    if-eqz v6, :cond_7

    .line 576
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 580
    :cond_7
    :goto_3
    throw v10

    .line 578
    :catch_1
    move-exception v11

    goto :goto_3

    .line 565
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v10

    move-object v6, v7

    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 562
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v4

    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 578
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v10

    goto :goto_0
.end method

.method public static getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 619
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBusiness()Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    return-object v0
.end method

.method public static getBusinessFlierStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, isFlier:Z
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 155
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 156
    const-string v1, "flier_"

    .line 159
    :goto_1
    return-object v1

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    const-string v0, ""

    .line 625
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEndPlace()Lcom/didi/common/model/Address;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 613
    :cond_0
    :goto_0
    return-object v0

    .line 603
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 605
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 607
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    invoke-virtual {v0}, Lcom/didi/activity/model/ActivityOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 609
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 611
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getLastRemark()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 459
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 461
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getLastRemark()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    goto :goto_0

    .line 465
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->lastRemark:Ljava/lang/String;

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLastTip()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 471
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 473
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getLastTip()I

    move-result v0

    goto :goto_0

    .line 475
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iget v0, v0, Lcom/didi/car/model/CarOrder;->lastTip:I

    goto :goto_0

    .line 477
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget v0, v0, Lcom/didi/flier/model/FlierOrder;->lastTip:I

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLastWaitTime()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 483
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 489
    :cond_0
    :goto_0
    return v0

    .line 485
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getLastWaitTime()I

    move-result v0

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getOid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 629
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 639
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 631
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 637
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrderType()Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRemark()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 335
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getRemark()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    goto :goto_0

    .line 339
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->remark:Ljava/lang/String;

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSendable()Lcom/didi/frame/Sendable;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    return-object v0
.end method

.method public static getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;
    .locals 3
    .parameter "business"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/didi/frame/Sendable;",
            ">(",
            "Lcom/didi/frame/business/Business;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 225
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-nez v1, :cond_0

    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 229
    .local v0, attrs:Lcom/didi/common/model/CommonAttributes;
    :goto_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    return-object v1

    .line 225
    .end local v0           #attrs:Lcom/didi/common/model/CommonAttributes;
    :cond_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    goto :goto_0

    .line 231
    .restart local v0       #attrs:Lcom/didi/common/model/CommonAttributes;
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Lcom/didi/car/model/CarOrder;

    invoke-direct {v1}, Lcom/didi/car/model/CarOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 233
    :cond_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 234
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 238
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v1, :cond_2

    .line 239
    new-instance v1, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v1}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 240
    :cond_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 241
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 244
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-nez v1, :cond_3

    .line 245
    new-instance v1, Lcom/didi/flier/model/FlierOrder;

    invoke-direct {v1}, Lcom/didi/flier/model/FlierOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    .line 246
    :cond_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object v0, v1, Lcom/didi/flier/model/FlierOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 247
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 250
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-nez v1, :cond_4

    .line 251
    new-instance v1, Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {v1}, Lcom/didi/ddrive/model/DDriveOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 252
    :cond_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v1, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 253
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 643
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 645
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 647
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getSid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_4
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getBtsSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getStartPlace()Lcom/didi/common/model/Address;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 585
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 587
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 591
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    invoke-virtual {v0}, Lcom/didi/activity/model/ActivityOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 593
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 595
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTip()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 321
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 323
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTip()I

    move-result v0

    goto :goto_0

    .line 325
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iget v0, v0, Lcom/didi/car/model/CarOrder;->tip:I

    goto :goto_0

    .line 327
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget v0, v0, Lcom/didi/flier/model/FlierOrder;->tip:I

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getUseDepart()Z
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getUseDepart()Z

    move-result v0

    goto :goto_0
.end method

.method public static getWaitTime()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 311
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 313
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v0

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static hasBeenSent()Z
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 533
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 525
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 529
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 531
    :pswitch_4
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static hasBeenSent(Lcom/didi/frame/business/Business;)Z
    .locals 3
    .parameter "business"

    .prologue
    const/4 v0, 0x0

    .line 445
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 447
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 449
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 451
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 453
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->hasBeenSent()Z

    move-result v0

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isBooking()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 345
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 347
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    .line 349
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isBooking()Z

    move-result v0

    goto :goto_0

    .line 351
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    .line 353
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v0

    goto :goto_0

    .line 355
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    .line 357
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v0

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static isModified()Z
    .locals 2

    .prologue
    .line 505
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 507
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_1

    .line 508
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isModified()Z

    move-result v0

    goto :goto_0

    .line 510
    :cond_1
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_2

    .line 511
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->isModified()Z

    move-result v0

    goto :goto_0

    .line 513
    :cond_2
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_3

    .line 514
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->isModified()Z

    move-result v0

    goto :goto_0

    .line 516
    :cond_3
    :pswitch_4
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->isModified()Z

    move-result v0

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isTaxi()Z
    .locals 2

    .prologue
    .line 365
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTipModified()Z
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 501
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 495
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isTipModified()Z

    move-result v0

    goto :goto_0

    .line 497
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->isTipModified()Z

    move-result v0

    goto :goto_0

    .line 499
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->isTipModified()Z

    move-result v0

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static resetSendable()V
    .locals 3

    .prologue
    .line 184
    sget-boolean v1, Lcom/didi/frame/business/OrderHelper;->mNeedResetSendable:Z

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x0

    sput-boolean v1, Lcom/didi/frame/business/OrderHelper;->mNeedResetSendable:Z

    .line 222
    .local v0, attrs:Lcom/didi/common/model/CommonAttributes;
    :goto_0
    return-void

    .line 189
    .end local v0           #attrs:Lcom/didi/common/model/CommonAttributes;
    :cond_0
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 190
    .restart local v0       #attrs:Lcom/didi/common/model/CommonAttributes;
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_1

    .line 191
    new-instance v1, Lcom/didi/car/model/CarOrder;

    invoke-direct {v1}, Lcom/didi/car/model/CarOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 192
    :cond_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v1}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 194
    :cond_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_3

    .line 195
    new-instance v1, Lcom/didi/flier/model/FlierOrder;

    invoke-direct {v1}, Lcom/didi/flier/model/FlierOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    .line 196
    :cond_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_4

    .line 197
    new-instance v1, Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {v1}, Lcom/didi/ddrive/model/DDriveOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 198
    :cond_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v2, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    goto :goto_0

    .line 200
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_5

    .line 201
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 202
    :cond_5
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 206
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_6

    .line 207
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 208
    :cond_6
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 211
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_7

    .line 212
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object v0, v1, Lcom/didi/flier/model/FlierOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 213
    :cond_7
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 216
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_8

    .line 217
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v1, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 218
    :cond_8
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setEndPlace(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "endPlace"

    .prologue
    .line 429
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0, p0}, Lcom/didi/frame/Sendable;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 430
    return-void
.end method

.method public static setNotNeedResetSendable(Z)V
    .locals 0
    .parameter "needResetSendable"

    .prologue
    .line 177
    sput-boolean p0, Lcom/didi/frame/business/OrderHelper;->mNeedResetSendable:Z

    .line 178
    return-void
.end method

.method public static setOid(Ljava/lang/String;)V
    .locals 2
    .parameter "oid"

    .prologue
    .line 657
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 659
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 663
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_0

    .line 665
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p0, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 667
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object p0, v0, Lcom/didi/flier/model/FlierOrder;->oid:Ljava/lang/String;

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V
    .locals 2
    .parameter "b"
    .parameter "send"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_1
    :pswitch_0
    sput-object p1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    .line 132
    sput-object p0, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 119
    check-cast v0, Lcom/didi/car/model/CarOrder;

    sput-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    goto :goto_1

    :pswitch_2
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    sput-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    goto :goto_1

    :pswitch_3
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    sput-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    goto :goto_1

    :pswitch_4
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    sput-object v0, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setRemark(Ljava/lang/String;)V
    .locals 2
    .parameter "remark"

    .prologue
    .line 397
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 399
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/model/TaxiOrder;->setRemark(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p0, v0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    goto :goto_0

    .line 407
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object p0, v0, Lcom/didi/flier/model/FlierOrder;->remark:Ljava/lang/String;

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setSendable(Lcom/didi/frame/Sendable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 169
    sput-object p0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    .line 170
    return-void
.end method

.method public static setStartPlace(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "startPlace"

    .prologue
    .line 425
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0, p0}, Lcom/didi/frame/Sendable;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 426
    return-void
.end method

.method public static setTip(I)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 283
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/model/TaxiOrder;->setTip(I)V

    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput p0, v0, Lcom/didi/car/model/CarOrder;->tip:I

    goto :goto_0

    .line 291
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput p0, v0, Lcom/didi/flier/model/FlierOrder;->tip:I

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setTripType(I)V
    .locals 2
    .parameter "tripType"

    .prologue
    .line 414
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 416
    :pswitch_0
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/model/TaxiOrder;->setTrip_type(I)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static setUseDepart(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 433
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v0, p0}, Lcom/didi/frame/Sendable;->setUseDepart(Z)V

    goto :goto_0
.end method

.method public static setWaitTime(I)V
    .locals 2
    .parameter "waitTime"

    .prologue
    .line 297
    sget-object v0, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    sget-object v1, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/model/TaxiOrder;->setWaitTime(I)V

    goto :goto_0

    .line 302
    :pswitch_2
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput p0, v0, Lcom/didi/car/model/CarOrder;->waitTime:I

    goto :goto_0

    .line 305
    :pswitch_3
    sget-object v0, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput p0, v0, Lcom/didi/flier/model/FlierOrder;->waitTime:I

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static shouldEnableWaitTime()Z
    .locals 1

    .prologue
    .line 847
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isTaxi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static switchTo(Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 69
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    if-nez v1, :cond_0

    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 70
    .local v0, attrs:Lcom/didi/common/model/CommonAttributes;
    :goto_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper$1;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {p0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_1
    sput-object p0, Lcom/didi/frame/business/OrderHelper;->business:Lcom/didi/frame/business/Business;

    .line 110
    iput-object p0, v0, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    .line 111
    return-void

    .line 69
    .end local v0           #attrs:Lcom/didi/common/model/CommonAttributes;
    :cond_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    goto :goto_0

    .line 72
    .restart local v0       #attrs:Lcom/didi/common/model/CommonAttributes;
    :pswitch_0
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Lcom/didi/car/model/CarOrder;

    invoke-direct {v1}, Lcom/didi/car/model/CarOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 74
    :cond_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 75
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->retreiveLatestAddress()V

    .line 76
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->carOrder:Lcom/didi/car/model/CarOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 80
    :pswitch_1
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v1, :cond_2

    .line 81
    new-instance v1, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v1}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 82
    :cond_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 83
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->retreiveLatestAddress()V

    .line 84
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 88
    :pswitch_2
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    if-nez v1, :cond_3

    .line 89
    new-instance v1, Lcom/didi/activity/model/ActivityOrder;

    invoke-direct {v1}, Lcom/didi/activity/model/ActivityOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    .line 90
    :cond_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    invoke-virtual {v1, v0}, Lcom/didi/activity/model/ActivityOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 91
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    invoke-virtual {v1}, Lcom/didi/activity/model/ActivityOrder;->retreiveLatestAddress()V

    .line 92
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->activityOrder:Lcom/didi/activity/model/ActivityOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 95
    :pswitch_3
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-nez v1, :cond_4

    .line 96
    new-instance v1, Lcom/didi/flier/model/FlierOrder;

    invoke-direct {v1}, Lcom/didi/flier/model/FlierOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    .line 97
    :cond_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object v0, v1, Lcom/didi/flier/model/FlierOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 98
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->retreiveLatestAddress()V

    .line 99
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->sendable:Lcom/didi/frame/Sendable;

    goto :goto_1

    .line 102
    :pswitch_4
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-nez v1, :cond_5

    .line 103
    new-instance v1, Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {v1}, Lcom/didi/ddrive/model/DDriveOrder;-><init>()V

    sput-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 104
    :cond_5
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v1, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 105
    sget-object v1, Lcom/didi/frame/business/OrderHelper;->ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/DDriveOrder;->retreiveLatestAddress()V

    goto/16 :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getOrderTypeInt()I
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 277
    .local v0, type:Lcom/didi/frame/business/OrderType;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, -0x1

    .line 279
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    goto :goto_0
.end method
