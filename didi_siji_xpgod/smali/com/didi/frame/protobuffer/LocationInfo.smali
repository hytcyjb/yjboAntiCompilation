.class public final Lcom/didi/frame/protobuffer/LocationInfo;
.super Lcom/squareup/wire/Message;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/LocationInfo$1;,
        Lcom/didi/frame/protobuffer/LocationInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float;

.field public static final DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float;

.field public static final DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float;

.field public static final DEFAULT_ACCURACY:Ljava/lang/Double;

.field public static final DEFAULT_DIRECTION:Ljava/lang/Double;

.field public static final DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float;

.field public static final DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float;

.field public static final DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float;

.field public static final DEFAULT_LOCTYPE:Lcom/didi/frame/protobuffer/LocationType;

.field public static final DEFAULT_SPEED:Ljava/lang/Double;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final DEFAULT_X:Ljava/lang/Double;

.field public static final DEFAULT_Y:Ljava/lang/Double;


# instance fields
.field public final acceleratedSpeedX:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final acceleratedSpeedY:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final acceleratedSpeedZ:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final direction:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAnglePitch:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAngleRoll:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final includedAngleYaw:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final locType:Lcom/didi/frame/protobuffer/LocationType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final speed:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final x:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final y:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_X:Ljava/lang/Double;

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_Y:Ljava/lang/Double;

    .line 21
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCURACY:Ljava/lang/Double;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_DIRECTION:Ljava/lang/Double;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_SPEED:Ljava/lang/Double;

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDX:Ljava/lang/Float;

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDY:Ljava/lang/Float;

    .line 27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_ACCELERATEDSPEEDZ:Ljava/lang/Float;

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEYAW:Ljava/lang/Float;

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEROLL:Ljava/lang/Float;

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_INCLUDEDANGLEPITCH:Ljava/lang/Float;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 32
    sget-object v0, Lcom/didi/frame/protobuffer/LocationType;->LOC_GPS:Lcom/didi/frame/protobuffer/LocationType;

    sput-object v0, Lcom/didi/frame/protobuffer/LocationInfo;->DEFAULT_LOCTYPE:Lcom/didi/frame/protobuffer/LocationType;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/LocationInfo$Builder;)V
    .locals 16
    .parameter "builder"

    .prologue
    .line 127
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->x:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->y:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->accuracy:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->direction:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->speed:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedX:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedY:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->acceleratedSpeedZ:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleYaw:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAngleRoll:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->includedAnglePitch:Ljava/lang/Float;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->timestamp:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/LocationInfo$Builder;->locType:Lcom/didi/frame/protobuffer/LocationType;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/didi/frame/protobuffer/LocationInfo;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/LocationType;)V

    .line 128
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/LocationInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/LocationInfo$Builder;Lcom/didi/frame/protobuffer/LocationInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/LocationInfo;-><init>(Lcom/didi/frame/protobuffer/LocationInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/LocationType;)V
    .locals 0
    .parameter "x"
    .parameter "y"
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
    .parameter "timestamp"
    .parameter "locType"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    .line 111
    iput-object p2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    .line 112
    iput-object p3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 113
    iput-object p4, p0, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    .line 114
    iput-object p5, p0, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    .line 115
    iput-object p6, p0, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    .line 116
    iput-object p7, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    .line 117
    iput-object p8, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    .line 118
    iput-object p9, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    .line 119
    iput-object p10, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    .line 120
    iput-object p11, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    .line 121
    iput-object p12, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    .line 122
    iput-object p13, p0, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    .line 123
    iput-object p14, p0, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    .line 124
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/LocationInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/didi/frame/protobuffer/LocationInfo;

    .line 136
    .local v0, o:Lcom/didi/frame/protobuffer/LocationInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/LocationInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 154
    iget v0, p0, Lcom/didi/frame/protobuffer/LocationInfo;->hashCode:I

    .line 155
    .local v0, result:I
    if-nez v0, :cond_1

    .line 156
    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->x:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 157
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->y:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 158
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 159
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->accuracy:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->direction:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->speed:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 162
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 163
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedY:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 164
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->acceleratedSpeedZ:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 165
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleYaw:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 166
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAngleRoll:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 167
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->includedAnglePitch:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 168
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/LocationInfo;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v3, v2

    .line 169
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/LocationInfo;->locType:Lcom/didi/frame/protobuffer/LocationType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/LocationType;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 170
    iput v0, p0, Lcom/didi/frame/protobuffer/LocationInfo;->hashCode:I

    .line 172
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 156
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 157
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 158
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 159
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 160
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 161
    goto/16 :goto_5

    :cond_8
    move v2, v1

    .line 162
    goto :goto_6

    :cond_9
    move v2, v1

    .line 163
    goto :goto_7

    :cond_a
    move v2, v1

    .line 164
    goto :goto_8

    :cond_b
    move v2, v1

    .line 165
    goto :goto_9

    :cond_c
    move v2, v1

    .line 166
    goto :goto_a

    :cond_d
    move v2, v1

    .line 167
    goto :goto_b

    :cond_e
    move v2, v1

    .line 168
    goto :goto_c
.end method
