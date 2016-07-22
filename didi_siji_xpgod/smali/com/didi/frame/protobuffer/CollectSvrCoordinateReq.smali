.class public final Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
.super Lcom/squareup/wire/Message;
.source "CollectSvrCoordinateReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$1;,
        Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float; = null

.field public static final DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float; = null

.field public static final DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float; = null

.field public static final DEFAULT_ACCURACY:Ljava/lang/Double; = null

.field public static final DEFAULT_DIRECTION:Ljava/lang/Double; = null

.field public static final DEFAULT_GPS_SOURCE:Ljava/lang/Integer; = null

.field public static final DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float; = null

.field public static final DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float; = null

.field public static final DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float; = null

.field public static final DEFAULT_LAT:Ljava/lang/Double; = null

.field public static final DEFAULT_LNG:Ljava/lang/Double; = null

.field public static final DEFAULT_PHONE:Ljava/lang/String; = ""

.field public static final DEFAULT_PRE_LAT:Ljava/lang/Double;

.field public static final DEFAULT_PRE_LNG:Ljava/lang/Double;

.field public static final DEFAULT_PULL_PEER:Ljava/lang/Boolean;

.field public static final DEFAULT_SPEED:Ljava/lang/Double;

.field public static final DEFAULT_STATE:Ljava/lang/Integer;

.field public static final DEFAULT_STATE_EXT:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;


# instance fields
.field public final acceleratedSpeedX:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final acceleratedSpeedY:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final acceleratedSpeedZ:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final direction:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final gps_source:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAnglePitch:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAngleRoll:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAngleYaw:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pre_lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pre_lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pull_peer:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final speed:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final state:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final state_ext:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_LNG:Ljava/lang/Double;

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_LAT:Ljava/lang/Double;

    .line 24
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_ACCURACY:Ljava/lang/Double;

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_DIRECTION:Ljava/lang/Double;

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_SPEED:Ljava/lang/Double;

    .line 28
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float;

    .line 29
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float;

    .line 30
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float;

    .line 31
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float;

    .line 32
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float;

    .line 33
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float;

    .line 34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_PULL_PEER:Ljava/lang/Boolean;

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_PRE_LNG:Ljava/lang/Double;

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_PRE_LAT:Ljava/lang/Double;

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_STATE:Ljava/lang/Integer;

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_GPS_SOURCE:Ljava/lang/Integer;

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->DEFAULT_STATE_EXT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;)V
    .locals 21
    .parameter "builder"

    .prologue
    .line 179
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->phone:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lng:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lat:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->accuracy:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->direction:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->speed:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleYaw:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAngleRoll:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->includedAnglePitch:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pull_peer:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lng:Ljava/lang/Double;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lat:Ljava/lang/Double;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state:Ljava/lang/Integer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->gps_source:Ljava/lang/Integer;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state_ext:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v20}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 180
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;-><init>(Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .parameter "phone"
    .parameter "lng"
    .parameter "lat"
    .parameter "type"
    .parameter "accuracy"
    .parameter "direction"
    .parameter "speed"
    .parameter "acceleratedSpeedX"
    .parameter "acceleratedSpeedY"
    .parameter "acceleratedSpeedZ"
    .parameter "includedAngleYaw"
    .parameter "includedAngleRoll"
    .parameter "includedAnglePitch"
    .parameter "pull_peer"
    .parameter "pre_lng"
    .parameter "pre_lat"
    .parameter "state"
    .parameter "gps_source"
    .parameter "state_ext"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    .line 159
    iput-object p3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    .line 160
    iput-object p4, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 161
    iput-object p5, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    .line 162
    iput-object p6, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    .line 163
    iput-object p7, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    .line 164
    iput-object p8, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    .line 165
    iput-object p9, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    .line 166
    iput-object p10, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 167
    iput-object p11, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    .line 168
    iput-object p12, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    .line 169
    iput-object p13, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    .line 170
    iput-object p14, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    .line 171
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    .line 172
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    .line 173
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    .line 174
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    .line 175
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    .line 176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 187
    check-cast v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    .line 188
    .local v0, o:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 211
    iget v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->hashCode:I

    .line 212
    .local v0, result:I
    if-nez v0, :cond_1

    .line 213
    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 214
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 215
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 216
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 217
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->accuracy:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 218
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->direction:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 219
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->speed:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 220
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 221
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedY:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 222
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->acceleratedSpeedZ:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 223
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleYaw:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 224
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAngleRoll:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 225
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->includedAnglePitch:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v3, v2

    .line 226
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pull_peer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v3, v2

    .line 227
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v3, v2

    .line 228
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->pre_lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_f
    add-int v0, v3, v2

    .line 229
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_10
    add-int v0, v3, v2

    .line 230
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->gps_source:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_11
    add-int v0, v3, v2

    .line 231
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->state_ext:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 232
    iput v0, p0, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->hashCode:I

    .line 234
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 213
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 214
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 215
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 216
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 217
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 218
    goto/16 :goto_5

    :cond_8
    move v2, v1

    .line 219
    goto/16 :goto_6

    :cond_9
    move v2, v1

    .line 220
    goto/16 :goto_7

    :cond_a
    move v2, v1

    .line 221
    goto/16 :goto_8

    :cond_b
    move v2, v1

    .line 222
    goto/16 :goto_9

    :cond_c
    move v2, v1

    .line 223
    goto/16 :goto_a

    :cond_d
    move v2, v1

    .line 224
    goto/16 :goto_b

    :cond_e
    move v2, v1

    .line 225
    goto :goto_c

    :cond_f
    move v2, v1

    .line 226
    goto :goto_d

    :cond_10
    move v2, v1

    .line 227
    goto :goto_e

    :cond_11
    move v2, v1

    .line 228
    goto :goto_f

    :cond_12
    move v2, v1

    .line 229
    goto :goto_10

    :cond_13
    move v2, v1

    .line 230
    goto :goto_11
.end method
