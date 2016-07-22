.class public final Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;
.super Lcom/squareup/wire/Message;
.source "OrderRealtimeFeeReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$1;,
        Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;
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

.field public static final DEFAULT_FEE_BOTTOM:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeBottom;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FEE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OID:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Integer; = null

.field public static final DEFAULT_TOTAL_FEE:Ljava/lang/String; = ""


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

.field public final fee_bottom:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/FeeBottom;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeBottom;",
            ">;"
        }
    .end annotation
.end field

.field public final fee_info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/FeeInfoItem;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;"
        }
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

.field public final total_fee:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_DRIVING_TRACK:Ljava/util/List;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_FEE_INFO:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_TIMESTAMP:Ljava/lang/Integer;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->DEFAULT_FEE_BOTTOM:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 72
    iget-object v1, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->driving_track:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_info:Ljava/util/List;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->oid:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->timestamp:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->total_fee:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;->fee_bottom:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;-><init>(Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter "oid"
    .parameter "timestamp"
    .parameter "total_fee"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/LocationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeInfoItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/FeeBottom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, driving_track:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/LocationInfo;>;"
    .local p2, fee_info:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeInfoItem;>;"
    .local p6, fee_bottom:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/FeeBottom;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    .line 64
    invoke-static {p2}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    .line 67
    iput-object p5, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    .line 68
    invoke-static {p6}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    .line 69
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 78
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;

    .line 81
    .local v0, o:Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 91
    iget v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->hashCode:I

    .line 92
    .local v0, result:I
    if-nez v0, :cond_2

    .line 93
    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->driving_track:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 94
    :goto_0
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_info:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 95
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->oid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 96
    mul-int/lit8 v4, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 97
    mul-int/lit8 v2, v0, 0x25

    iget-object v4, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->total_fee:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v2, v3

    .line 98
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->fee_bottom:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    .line 99
    iput v0, p0, Lcom/didi/frame/protobuffer/OrderRealtimeFeeReq;->hashCode:I

    .line 101
    :cond_2
    return v0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0

    :cond_4
    move v2, v1

    .line 94
    goto :goto_1

    :cond_5
    move v2, v3

    .line 95
    goto :goto_2

    :cond_6
    move v2, v3

    .line 96
    goto :goto_3
.end method
