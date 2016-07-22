.class public final Lcom/didi/frame/protobuffer/TaxiOrder;
.super Lcom/squareup/wire/Message;
.source "TaxiOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiOrder$1;,
        Lcom/didi/frame/protobuffer/TaxiOrder$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIST:Ljava/lang/Integer; = null

.field public static final DEFAULT_EXTRAINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_FROM:Ljava/lang/String; = ""

.field public static final DEFAULT_FROMLATITUDE:Ljava/lang/Double; = null

.field public static final DEFAULT_FROMLONGITUDE:Ljava/lang/Double; = null

.field public static final DEFAULT_MEDIATYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDERID:Ljava/lang/String; = ""

.field public static final DEFAULT_PHONE:Ljava/lang/String; = ""

.field public static final DEFAULT_SETOFFTIME:Ljava/lang/Long; = null

.field public static final DEFAULT_TIMELINESSTYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_TIP:Ljava/lang/Integer; = null

.field public static final DEFAULT_TO:Ljava/lang/String; = ""

.field public static final DEFAULT_TOLATITUDE:Ljava/lang/Double; = null

.field public static final DEFAULT_TOLONGITUDE:Ljava/lang/Double; = null

.field public static final DEFAULT_VOICEURL:Ljava/lang/String; = ""


# instance fields
.field public final dist:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extraInfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final from:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fromLatitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fromLongitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mediaType:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final orderId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final setOffTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timeLinessType:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tip:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final to:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final toLatitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final toLongitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final voiceUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_MEDIATYPE:Ljava/lang/Integer;

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_TIMELINESSTYPE:Ljava/lang/Integer;

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_SETOFFTIME:Ljava/lang/Long;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_FROMLATITUDE:Ljava/lang/Double;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_FROMLONGITUDE:Ljava/lang/Double;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_TOLATITUDE:Ljava/lang/Double;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_TOLONGITUDE:Ljava/lang/Double;

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_TIP:Ljava/lang/Integer;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiOrder;->DEFAULT_DIST:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiOrder$Builder;)V
    .locals 17
    .parameter "builder"

    .prologue
    .line 125
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->orderId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->phone:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->mediaType:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->timeLinessType:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->setOffTime:Ljava/lang/Long;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->from:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->to:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLatitude:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->fromLongitude:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLatitude:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->toLongitude:Ljava/lang/Double;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->extraInfo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->tip:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->dist:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/frame/protobuffer/TaxiOrder$Builder;->voiceUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/didi/frame/protobuffer/TaxiOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p1}, Lcom/didi/frame/protobuffer/TaxiOrder;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiOrder$Builder;Lcom/didi/frame/protobuffer/TaxiOrder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiOrder;-><init>(Lcom/didi/frame/protobuffer/TaxiOrder$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"
    .parameter "phone"
    .parameter "mediaType"
    .parameter "timeLinessType"
    .parameter "setOffTime"
    .parameter "from"
    .parameter "to"
    .parameter "fromLatitude"
    .parameter "fromLongitude"
    .parameter "toLatitude"
    .parameter "toLongitude"
    .parameter "extraInfo"
    .parameter "tip"
    .parameter "dist"
    .parameter "voiceUrl"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    .line 110
    iput-object p4, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    .line 111
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    .line 112
    iput-object p6, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    .line 114
    iput-object p8, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    .line 115
    iput-object p9, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    .line 116
    iput-object p10, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    .line 117
    iput-object p11, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    .line 118
    iput-object p12, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    .line 119
    iput-object p13, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    .line 120
    iput-object p14, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    .line 121
    iput-object p15, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p1, p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiOrder;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 133
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiOrder;

    .line 134
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiOrder;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiOrder;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 153
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->hashCode:I

    .line 154
    .local v0, result:I
    if-nez v0, :cond_1

    .line 155
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->orderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 157
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->mediaType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 158
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->timeLinessType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 159
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->setOffTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 160
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->from:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 161
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->to:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 162
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLatitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 163
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->fromLongitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 164
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLatitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 165
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->toLongitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v3, v2

    .line 166
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->extraInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v3, v2

    .line 167
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->tip:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v3, v2

    .line 168
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->dist:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v3, v2

    .line 169
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->voiceUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 170
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiOrder;->hashCode:I

    .line 172
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 155
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 156
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 157
    goto/16 :goto_2

    :cond_5
    move v2, v1

    .line 158
    goto/16 :goto_3

    :cond_6
    move v2, v1

    .line 159
    goto/16 :goto_4

    :cond_7
    move v2, v1

    .line 160
    goto/16 :goto_5

    :cond_8
    move v2, v1

    .line 161
    goto/16 :goto_6

    :cond_9
    move v2, v1

    .line 162
    goto :goto_7

    :cond_a
    move v2, v1

    .line 163
    goto :goto_8

    :cond_b
    move v2, v1

    .line 164
    goto :goto_9

    :cond_c
    move v2, v1

    .line 165
    goto :goto_a

    :cond_d
    move v2, v1

    .line 166
    goto :goto_b

    :cond_e
    move v2, v1

    .line 167
    goto :goto_c

    :cond_f
    move v2, v1

    .line 168
    goto :goto_d
.end method
