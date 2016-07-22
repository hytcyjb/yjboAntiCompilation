.class public final Lcom/didi/frame/protobuffer/DrivingFeeInfo;
.super Lcom/squareup/wire/Message;
.source "DrivingFeeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DrivingFeeInfo$1;,
        Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTUAL_FEE:Ljava/lang/Float; = null

.field public static final DEFAULT_COMBO_FEE:Ljava/lang/Float; = null

.field public static final DEFAULT_COMBO_REMAIN_DISTANCE:Ljava/lang/Float; = null

.field public static final DEFAULT_COMBO_REMAIN_TIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_COMBO_TIPS:Ljava/lang/String; = ""

.field public static final DEFAULT_COMBO_USE_DISTANCE:Ljava/lang/Float; = null

.field public static final DEFAULT_COMBO_USE_TIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_CUR_DISTANCE:Ljava/lang/Float; = null

.field public static final DEFAULT_DISPLAY_FEE:Ljava/lang/Float; = null

.field public static final DEFAULT_DYNAMIC_PRICE_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_DYNAMIC_PRICE_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_EMPTY_ACT_FEE:Ljava/lang/Float;

.field public static final DEFAULT_EMPTY_DISTANCE:Ljava/lang/Float;

.field public static final DEFAULT_EMPTY_FEE:Ljava/lang/Float;

.field public static final DEFAULT_FASTCAR_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_FASTCAR_TIME_FEE:Ljava/lang/Float;

.field public static final DEFAULT_NIGHT_ACT_FEE:Ljava/lang/Float;

.field public static final DEFAULT_NIGHT_DISTANCE:Ljava/lang/Float;

.field public static final DEFAULT_NIGHT_FEE:Ljava/lang/Float;

.field public static final DEFAULT_NORMAL_ACT_FEE:Ljava/lang/Float;

.field public static final DEFAULT_NORMAL_DISTANCE:Ljava/lang/Float;

.field public static final DEFAULT_NORMAL_FEE:Ljava/lang/Float;

.field public static final DEFAULT_SLOW_CUR_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_SLOW_FEE:Ljava/lang/Float;

.field public static final DEFAULT_SLOW_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_START_FEE:Ljava/lang/Float;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;


# instance fields
.field public final actual_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_remain_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_remain_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_tips:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_use_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final combo_use_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cur_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final display_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dynamic_price_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final dynamic_price_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final empty_act_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final empty_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final empty_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fastcar_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fastcar_time_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final night_act_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final night_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final night_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final normal_act_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final normal_distance:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final normal_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slow_cur_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slow_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slow_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final start_fee:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NORMAL_DISTANCE:Ljava/lang/Float;

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_CUR_DISTANCE:Ljava/lang/Float;

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_EMPTY_DISTANCE:Ljava/lang/Float;

    .line 21
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NIGHT_DISTANCE:Ljava/lang/Float;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_SLOW_TIME:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_SLOW_CUR_TIME:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NORMAL_FEE:Ljava/lang/Float;

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NORMAL_ACT_FEE:Ljava/lang/Float;

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_EMPTY_FEE:Ljava/lang/Float;

    .line 27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_EMPTY_ACT_FEE:Ljava/lang/Float;

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NIGHT_FEE:Ljava/lang/Float;

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_NIGHT_ACT_FEE:Ljava/lang/Float;

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_SLOW_FEE:Ljava/lang/Float;

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_DISPLAY_FEE:Ljava/lang/Float;

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_ACTUAL_FEE:Ljava/lang/Float;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_START_FEE:Ljava/lang/Float;

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_COMBO_FEE:Ljava/lang/Float;

    .line 36
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_COMBO_USE_DISTANCE:Ljava/lang/Float;

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_COMBO_USE_TIME:Ljava/lang/Integer;

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_COMBO_REMAIN_DISTANCE:Ljava/lang/Float;

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_COMBO_REMAIN_TIME:Ljava/lang/Integer;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_FASTCAR_TIME:Ljava/lang/Integer;

    .line 42
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->DEFAULT_FASTCAR_TIME_FEE:Ljava/lang/Float;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;)V
    .locals 29
    .parameter "builder"

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_distance:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->cur_distance:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_distance:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_distance:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_time:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_cur_time:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_act_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_act_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_act_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->display_fee:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->actual_fee:Ljava/lang/Float;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->timestamp:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->start_fee:Ljava/lang/Float;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_fee:Ljava/lang/Float;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_distance:Ljava/lang/Float;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_time:Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_distance:Ljava/lang/Float;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_time:Ljava/lang/Integer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_tips:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time:Ljava/lang/Integer;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time_fee:Ljava/lang/Float;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_title:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_msg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v28}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;Lcom/didi/frame/protobuffer/DrivingFeeInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;-><init>(Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "normal_distance"
    .parameter "cur_distance"
    .parameter "empty_distance"
    .parameter "night_distance"
    .parameter "slow_time"
    .parameter "slow_cur_time"
    .parameter "normal_fee"
    .parameter "normal_act_fee"
    .parameter "empty_fee"
    .parameter "empty_act_fee"
    .parameter "night_fee"
    .parameter "night_act_fee"
    .parameter "slow_fee"
    .parameter "display_fee"
    .parameter "actual_fee"
    .parameter "timestamp"
    .parameter "start_fee"
    .parameter "combo_fee"
    .parameter "combo_use_distance"
    .parameter "combo_use_time"
    .parameter "combo_remain_distance"
    .parameter "combo_remain_time"
    .parameter "combo_tips"
    .parameter "fastcar_time"
    .parameter "fastcar_time_fee"
    .parameter "dynamic_price_title"
    .parameter "dynamic_price_msg"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    .line 210
    iput-object p2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    .line 211
    iput-object p3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    .line 212
    iput-object p4, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    .line 213
    iput-object p5, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    .line 214
    iput-object p6, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    .line 215
    iput-object p7, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    .line 216
    iput-object p8, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    .line 217
    iput-object p9, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    .line 218
    iput-object p10, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    .line 219
    iput-object p11, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    .line 220
    iput-object p12, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    .line 221
    iput-object p13, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    .line 222
    iput-object p14, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    .line 223
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    .line 224
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    .line 225
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    .line 226
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    .line 227
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    .line 228
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    .line 229
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    .line 230
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    .line 231
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    .line 233
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    .line 234
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-ne p1, p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 247
    check-cast v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    .line 248
    .local v0, o:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 279
    iget v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->hashCode:I

    .line 280
    .local v0, result:I
    if-nez v0, :cond_1

    .line 281
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v0

    .line 282
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 283
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 284
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 285
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 286
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 287
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 288
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 289
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 290
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 291
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 292
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 293
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v3, v2

    .line 294
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v3, v2

    .line 295
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v3, v2

    .line 296
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_f
    add-int v0, v3, v2

    .line 297
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_10
    add-int v0, v3, v2

    .line 298
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_11
    add-int v0, v3, v2

    .line 299
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_12
    add-int v0, v3, v2

    .line 300
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_13
    add-int v0, v3, v2

    .line 301
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_14
    add-int v0, v3, v2

    .line 302
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_15
    add-int v0, v3, v2

    .line 303
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int v0, v3, v2

    .line 304
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 305
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_18
    add-int v0, v3, v2

    .line 306
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v3, v2

    .line 307
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 308
    iput v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->hashCode:I

    .line 310
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 281
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 282
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 283
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 284
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 285
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 286
    goto/16 :goto_5

    :cond_8
    move v2, v1

    .line 287
    goto/16 :goto_6

    :cond_9
    move v2, v1

    .line 288
    goto/16 :goto_7

    :cond_a
    move v2, v1

    .line 289
    goto/16 :goto_8

    :cond_b
    move v2, v1

    .line 290
    goto/16 :goto_9

    :cond_c
    move v2, v1

    .line 291
    goto/16 :goto_a

    :cond_d
    move v2, v1

    .line 292
    goto/16 :goto_b

    :cond_e
    move v2, v1

    .line 293
    goto/16 :goto_c

    :cond_f
    move v2, v1

    .line 294
    goto/16 :goto_d

    :cond_10
    move v2, v1

    .line 295
    goto/16 :goto_e

    :cond_11
    move v2, v1

    .line 296
    goto/16 :goto_f

    :cond_12
    move v2, v1

    .line 297
    goto/16 :goto_10

    :cond_13
    move v2, v1

    .line 298
    goto/16 :goto_11

    :cond_14
    move v2, v1

    .line 299
    goto/16 :goto_12

    :cond_15
    move v2, v1

    .line 300
    goto/16 :goto_13

    :cond_16
    move v2, v1

    .line 301
    goto/16 :goto_14

    :cond_17
    move v2, v1

    .line 302
    goto/16 :goto_15

    :cond_18
    move v2, v1

    .line 303
    goto :goto_16

    :cond_19
    move v2, v1

    .line 304
    goto :goto_17

    :cond_1a
    move v2, v1

    .line 305
    goto :goto_18

    :cond_1b
    move v2, v1

    .line 306
    goto :goto_19
.end method
