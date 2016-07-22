.class public final Lcom/didi/frame/protobuffer/DriverInfo;
.super Lcom/squareup/wire/Message;
.source "DriverInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DriverInfo$1;,
        Lcom/didi/frame/protobuffer/DriverInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CAR_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CNT_ORDER:Ljava/lang/Integer; = null

.field public static final DEFAULT_CNT_POSITIVE:Ljava/lang/Integer; = null

.field public static final DEFAULT_DRIVER_CARD:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_COMPANY:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_HEADPIC:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_DRIVER_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_PHONE:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_PROTECT:Ljava/lang/Integer;

.field public static final DEFAULT_IS_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_LEVEL:Ljava/lang/Integer;

.field public static final DEFAULT_LEVEL_NEW:Ljava/lang/Float;


# instance fields
.field public final car_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cnt_order:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cnt_positive:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_card:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_company:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_headPic:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_phone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_protect:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final level:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final level_new:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_DRIVER_ID:Ljava/lang/Long;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_CNT_ORDER:Ljava/lang/Integer;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_CNT_POSITIVE:Ljava/lang/Integer;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_LEVEL:Ljava/lang/Integer;

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_LEVEL_NEW:Ljava/lang/Float;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_IS_PROTECT:Ljava/lang/Integer;

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DriverInfo;->DEFAULT_IS_TIMEOUT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DriverInfo$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    .line 95
    iget-object v1, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_company:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_headPic:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_phone:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->driver_id:Ljava/lang/Long;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->car_type:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_order:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->cnt_positive:Ljava/lang/Integer;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level:Ljava/lang/Integer;

    iget-object v11, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->level_new:Ljava/lang/Float;

    iget-object v12, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_protect:Ljava/lang/Integer;

    iget-object v13, p1, Lcom/didi/frame/protobuffer/DriverInfo$Builder;->is_timeout:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/didi/frame/protobuffer/DriverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/DriverInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DriverInfo$Builder;Lcom/didi/frame/protobuffer/DriverInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DriverInfo;-><init>(Lcom/didi/frame/protobuffer/DriverInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "driver_name"
    .parameter "driver_card"
    .parameter "driver_company"
    .parameter "driver_headPic"
    .parameter "driver_phone"
    .parameter "driver_id"
    .parameter "car_type"
    .parameter "cnt_order"
    .parameter "cnt_positive"
    .parameter "level"
    .parameter "level_new"
    .parameter "is_protect"
    .parameter "is_timeout"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    .line 85
    iput-object p7, p0, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    .line 87
    iput-object p9, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    .line 88
    iput-object p10, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    .line 89
    iput-object p11, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    .line 90
    iput-object p12, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    .line 91
    iput-object p13, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DriverInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/didi/frame/protobuffer/DriverInfo;

    .line 104
    .local v0, o:Lcom/didi/frame/protobuffer/DriverInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DriverInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 121
    iget v0, p0, Lcom/didi/frame/protobuffer/DriverInfo;->hashCode:I

    .line 122
    .local v0, result:I
    if-nez v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 124
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_card:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 125
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_company:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_headPic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->driver_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->car_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_order:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 131
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->cnt_positive:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 132
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 133
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->level_new:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 134
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_protect:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 135
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DriverInfo;->is_timeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 136
    iput v0, p0, Lcom/didi/frame/protobuffer/DriverInfo;->hashCode:I

    .line 138
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 123
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 124
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 125
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 126
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 127
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 128
    goto :goto_5

    :cond_8
    move v2, v1

    .line 129
    goto :goto_6

    :cond_9
    move v2, v1

    .line 130
    goto :goto_7

    :cond_a
    move v2, v1

    .line 131
    goto :goto_8

    :cond_b
    move v2, v1

    .line 132
    goto :goto_9

    :cond_c
    move v2, v1

    .line 133
    goto :goto_a

    :cond_d
    move v2, v1

    .line 134
    goto :goto_b
.end method
