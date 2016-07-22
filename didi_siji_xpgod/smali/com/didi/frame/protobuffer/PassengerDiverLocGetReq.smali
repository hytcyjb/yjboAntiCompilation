.class public final Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;
.super Lcom/squareup/wire/Message;
.source "PassengerDiverLocGetReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$1;,
        Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL:Ljava/lang/Integer; = null

.field public static final DEFAULT_LAT:Ljava/lang/Double; = null

.field public static final DEFAULT_LNG:Ljava/lang/Double; = null

.field public static final DEFAULT_ORDER_STAT:Lcom/didi/frame/protobuffer/OrderStat; = null

.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_RADIUS:Ljava/lang/Double;

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final channel:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_stat:Lcom/didi/frame/protobuffer/OrderStat;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final radius:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_LAT:Ljava/lang/Double;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_LNG:Ljava/lang/Double;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_RADIUS:Ljava/lang/Double;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_CHANNEL:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 27
    sget-object v0, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->DEFAULT_ORDER_STAT:Lcom/didi/frame/protobuffer/OrderStat;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    .line 69
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->role:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lat:Ljava/lang/Double;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->lng:Ljava/lang/Double;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->radius:Ljava/lang/Double;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->channel:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->type:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->timestamp:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/OrderStat;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;-><init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/OrderStat;)V
    .locals 0
    .parameter "phone_num"
    .parameter "role"
    .parameter "lat"
    .parameter "lng"
    .parameter "radius"
    .parameter "channel"
    .parameter "type"
    .parameter "timestamp"
    .parameter "order_stat"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    .line 59
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    .line 60
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    .line 61
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    .line 62
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    .line 63
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    .line 64
    iput-object p8, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    .line 65
    iput-object p9, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;

    .line 78
    .local v0, o:Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->hashCode:I

    .line 92
    .local v0, result:I
    if-nez v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 94
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->role:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 95
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 96
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 97
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->radius:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 98
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->channel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 99
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 100
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 101
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/OrderStat;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 102
    iput v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetReq;->hashCode:I

    .line 104
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0

    :cond_3
    move v2, v1

    .line 94
    goto :goto_1

    :cond_4
    move v2, v1

    .line 95
    goto :goto_2

    :cond_5
    move v2, v1

    .line 96
    goto :goto_3

    :cond_6
    move v2, v1

    .line 97
    goto :goto_4

    :cond_7
    move v2, v1

    .line 98
    goto :goto_5

    :cond_8
    move v2, v1

    .line 99
    goto :goto_6

    :cond_9
    move v2, v1

    .line 100
    goto :goto_7
.end method
