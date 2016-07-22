.class public final Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;
.super Lcom/squareup/wire/Message;
.source "PassengerOrderStatusReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$1;,
        Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONSULT_STATUS:Ljava/lang/Integer; = null

.field public static final DEFAULT_COUNT_DOWN_TIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_DRIVER_NUM:Ljava/lang/Integer; = null

.field public static final DEFAULT_IS_ARRIVED:Ljava/lang/Integer; = null

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_PUSH_PASSENGER_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Ljava/lang/Integer;

.field public static final DEFAULT_STRIVE_ORDER_DRIVER_NUM:Ljava/lang/Integer;

.field public static final DEFAULT_SUB_STATUS:Ljava/lang/Integer;

.field public static final DEFAULT_TIME_OUT:Ljava/lang/Integer;


# instance fields
.field public final consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public final consult_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final count_down_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_info:Lcom/didi/frame/protobuffer/DriverInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final driver_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_pos:Lcom/didi/frame/protobuffer/DriverPos;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final is_arrived:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final push_passenger_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final strive_order_driver_num:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final time_out:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_STATUS:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_DRIVER_NUM:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_TIME_OUT:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_IS_ARRIVED:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_CONSULT_STATUS:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_SUB_STATUS:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_STRIVE_ORDER_DRIVER_NUM:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->DEFAULT_COUNT_DOWN_TIME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    .line 99
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->status:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->oid:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_num:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->time_out:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->is_arrived:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_status:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->sub_status:Ljava/lang/Integer;

    iget-object v11, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->strive_order_driver_num:Ljava/lang/Integer;

    iget-object v12, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->count_down_time:Ljava/lang/Integer;

    iget-object v13, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;->push_passenger_msg:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/DriverInfo;Lcom/didi/frame/protobuffer/DriverPos;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/ConsultInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;-><init>(Lcom/didi/frame/protobuffer/PassengerOrderStatusReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/DriverInfo;Lcom/didi/frame/protobuffer/DriverPos;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/ConsultInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "oid"
    .parameter "driver_num"
    .parameter "driver_info"
    .parameter "driver_pos"
    .parameter "time_out"
    .parameter "is_arrived"
    .parameter "consult_status"
    .parameter "consult_info"
    .parameter "sub_status"
    .parameter "strive_order_driver_num"
    .parameter "count_down_time"
    .parameter "push_passenger_msg"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    .line 84
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    .line 86
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    .line 87
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    .line 88
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    .line 89
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    .line 90
    iput-object p8, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    .line 91
    iput-object p9, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    .line 92
    iput-object p10, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    .line 93
    iput-object p11, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    .line 94
    iput-object p12, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    .line 95
    iput-object p13, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;

    .line 108
    .local v0, o:Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 125
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->hashCode:I

    .line 126
    .local v0, result:I
    if-nez v0, :cond_1

    .line 127
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 128
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_num:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_info:Lcom/didi/frame/protobuffer/DriverInfo;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/DriverInfo;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 131
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->driver_pos:Lcom/didi/frame/protobuffer/DriverPos;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/DriverPos;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 132
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->time_out:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 133
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->is_arrived:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 134
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 135
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->consult_info:Lcom/didi/frame/protobuffer/ConsultInfo;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/ConsultInfo;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 136
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->sub_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 137
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->strive_order_driver_num:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 138
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->count_down_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->push_passenger_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 140
    iput v0, p0, Lcom/didi/frame/protobuffer/PassengerOrderStatusReq;->hashCode:I

    .line 142
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 127
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 128
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 129
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 130
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 131
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 132
    goto :goto_5

    :cond_8
    move v2, v1

    .line 133
    goto :goto_6

    :cond_9
    move v2, v1

    .line 134
    goto :goto_7

    :cond_a
    move v2, v1

    .line 135
    goto :goto_8

    :cond_b
    move v2, v1

    .line 136
    goto :goto_9

    :cond_c
    move v2, v1

    .line 137
    goto :goto_a

    :cond_d
    move v2, v1

    .line 138
    goto :goto_b
.end method
