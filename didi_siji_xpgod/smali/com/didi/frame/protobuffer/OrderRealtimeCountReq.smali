.class public final Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;
.super Lcom/squareup/wire/Message;
.source "OrderRealtimeCountReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$1;,
        Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DRIVING_TRACK:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer;


# instance fields
.field public final driving_track:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/LocationInfo;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation
.end field

.field public final oid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->DEFAULT_DRIVING_TRACK:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 56
    iget-object v0, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->driving_track:Ljava/util/List;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->oid:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;->timestamp:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;-><init>(Ljava/util/List;Lcom/didi/frame/protobuffer/DrivingFeeInfo;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;-><init>(Lcom/didi/frame/protobuffer/OrderRealtimeCountReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/didi/frame/protobuffer/DrivingFeeInfo;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "fee_info"
    .parameter "oid"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;",
            "Lcom/didi/frame/protobuffer/DrivingFeeInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, driving_track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/LocationInfo;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    .line 51
    iput-object p3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 62
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;

    .line 65
    .local v0, o:Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 73
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->hashCode:I

    .line 74
    .local v0, result:I
    if-nez v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->driving_track:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 76
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->fee_info:Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 77
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 78
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 79
    iput v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeCountReq;->hashCode:I

    .line 81
    :cond_1
    return v0

    .line 75
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 76
    goto :goto_1

    :cond_4
    move v1, v2

    .line 77
    goto :goto_2
.end method
