.class public final Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
.super Lcom/squareup/wire/Message;
.source "TaxiDriverShareTripLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$1;,
        Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;,
        Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_COMMON_TRIP_ITEMS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMMON_TRIP_TOTAL:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_OTHER_FEE:Ljava/lang/Integer;

.field public static final DEFAULT_SELF_TRIP_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SELF_TRIP_TOTAL:Ljava/lang/Integer;

.field public static final DEFAULT_TIP:Ljava/lang/Integer;

.field public static final DEFAULT_TRIP_TOTAL:Ljava/lang/Integer;


# instance fields
.field public final common_trip_items:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public final common_trip_total:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final other_fee:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final self_trip_items:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public final self_trip_total:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tip:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final trip_total:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_TRIP_TOTAL:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_SELF_TRIP_TOTAL:Ljava/lang/Integer;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_SELF_TRIP_ITEMS:Ljava/util/List;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_COMMON_TRIP_TOTAL:Ljava/lang/Integer;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_COMMON_TRIP_ITEMS:Ljava/util/List;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_TIP:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_OTHER_FEE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    .line 86
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->trip_total:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_total:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->self_trip_items:Ljava/util/List;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_total:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->common_trip_items:Ljava/util/List;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->tip:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;->other_fee:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .parameter "order_id"
    .parameter "trip_total"
    .parameter "self_trip_total"
    .parameter
    .parameter "common_trip_total"
    .parameter
    .parameter "tip"
    .parameter "other_fee"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, self_trip_items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;>;"
    .local p6, common_trip_items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    .line 77
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    .line 78
    invoke-static {p4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    .line 79
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    .line 80
    invoke-static {p6}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    .line 81
    iput-object p7, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    .line 82
    iput-object p8, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 92
    if-ne p1, p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    .line 95
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->hashCode:I

    .line 108
    .local v0, result:I
    if-nez v0, :cond_2

    .line 109
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 110
    :goto_0
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 111
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 112
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 113
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v4, v2

    .line 114
    mul-int/lit8 v2, v0, 0x25

    iget-object v4, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v2, v3

    .line 115
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 116
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    .line 117
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->hashCode:I

    .line 119
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 109
    goto :goto_0

    :cond_4
    move v2, v1

    .line 110
    goto :goto_1

    :cond_5
    move v2, v1

    .line 111
    goto :goto_2

    :cond_6
    move v2, v3

    .line 112
    goto :goto_3

    :cond_7
    move v2, v1

    .line 113
    goto :goto_4

    :cond_8
    move v2, v1

    .line 115
    goto :goto_5
.end method
