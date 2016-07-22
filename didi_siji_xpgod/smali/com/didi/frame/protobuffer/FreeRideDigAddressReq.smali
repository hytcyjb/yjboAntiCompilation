.class public final Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;
.super Lcom/squareup/wire/Message;
.source "FreeRideDigAddressReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$1;,
        Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ADDRESS:Ljava/lang/String; = ""

.field public static final DEFAULT_ALERTTEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_EXPIRETIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_LAT:Ljava/lang/Double; = null

.field public static final DEFAULT_LNG:Ljava/lang/Double; = null

.field public static final DEFAULT_PUSHTIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;


# instance fields
.field public final address:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final alertText:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final expireTime:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pushTime:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->DEFAULT_LNG:Ljava/lang/Double;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->DEFAULT_LAT:Ljava/lang/Double;

    .line 18
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->DEFAULT_PUSHTIME:Ljava/lang/Integer;

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->DEFAULT_EXPIRETIME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    .line 93
    iget-object v1, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lng:Ljava/lang/Double;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->lat:Ljava/lang/Double;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->address:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->text:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->alertText:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->pushTime:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;->expireTime:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;-><init>(Lcom/didi/frame/protobuffer/FreeRideDigAddressReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lcom/didi/frame/protobuffer/CoordinateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "lng"
    .parameter "lat"
    .parameter "type"
    .parameter "address"
    .parameter "title"
    .parameter "text"
    .parameter "alertText"
    .parameter "pushTime"
    .parameter "expireTime"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    .line 82
    iput-object p2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    .line 83
    iput-object p3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 84
    iput-object p4, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    .line 87
    iput-object p7, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    .line 88
    iput-object p8, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    .line 89
    iput-object p9, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;

    .line 102
    .local v0, o:Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 115
    iget v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->hashCode:I

    .line 116
    .local v0, result:I
    if-nez v0, :cond_1

    .line 117
    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 118
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 119
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 120
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 121
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 122
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 123
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->alertText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 124
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->pushTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 125
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->expireTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 126
    iput v0, p0, Lcom/didi/frame/protobuffer/FreeRideDigAddressReq;->hashCode:I

    .line 128
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 117
    goto :goto_0

    :cond_3
    move v2, v1

    .line 118
    goto :goto_1

    :cond_4
    move v2, v1

    .line 119
    goto :goto_2

    :cond_5
    move v2, v1

    .line 120
    goto :goto_3

    :cond_6
    move v2, v1

    .line 121
    goto :goto_4

    :cond_7
    move v2, v1

    .line 122
    goto :goto_5

    :cond_8
    move v2, v1

    .line 123
    goto :goto_6

    :cond_9
    move v2, v1

    .line 124
    goto :goto_7
.end method
