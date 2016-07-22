.class public final Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;
.super Lcom/squareup/wire/Message;
.source "PassengerDiverLocGetByIdReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$1;,
        Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL:Ljava/lang/Integer; = null

.field public static final DEFAULT_DIVERIDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LAT:Ljava/lang/Double; = null

.field public static final DEFAULT_LNG:Ljava/lang/Double; = null

.field public static final DEFAULT_ORDER_STAT:Lcom/didi/frame/protobuffer/OrderStat; = null

.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final channel:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final diverIds:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_stat:Lcom/didi/frame/protobuffer/OrderStat;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
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

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_CHANNEL:Ljava/lang/Integer;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_DIVERIDS:Ljava/util/List;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 29
    sget-object v0, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_ORDER_STAT:Lcom/didi/frame/protobuffer/OrderStat;

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_LAT:Ljava/lang/Double;

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->DEFAULT_LNG:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    .line 76
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->role:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->channel:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->diverIds:Ljava/util/List;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->type:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->timestamp:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lat:Ljava/lang/Double;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;->lng:Ljava/lang/Double;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/OrderStat;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;-><init>(Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/OrderStat;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .parameter "phone_num"
    .parameter "role"
    .parameter "channel"
    .parameter
    .parameter "type"
    .parameter "timestamp"
    .parameter "order_stat"
    .parameter "lat"
    .parameter "lng"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/didi/frame/protobuffer/OrderStat;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, diverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    .line 66
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    .line 67
    invoke-static {p4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    .line 68
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    .line 69
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    .line 70
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 71
    iput-object p8, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    .line 72
    iput-object p9, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    .line 73
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;

    .line 85
    .local v0, o:Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 98
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->hashCode:I

    .line 99
    .local v0, result:I
    if-nez v0, :cond_1

    .line 100
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 101
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->role:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->channel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->diverIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 105
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 106
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->order_stat:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/OrderStat;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 107
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->lng:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 109
    iput v0, p0, Lcom/didi/frame/protobuffer/PassengerDiverLocGetByIdReq;->hashCode:I

    .line 111
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    :cond_3
    move v2, v1

    .line 101
    goto :goto_1

    :cond_4
    move v2, v1

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move v2, v1

    .line 104
    goto :goto_4

    :cond_7
    move v2, v1

    .line 105
    goto :goto_5

    :cond_8
    move v2, v1

    .line 106
    goto :goto_6

    :cond_9
    move v2, v1

    .line 107
    goto :goto_7
.end method
