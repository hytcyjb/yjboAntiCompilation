.class public final Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;
.super Lcom/squareup/wire/Message;
.source "CollectSvrOrderFilterReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$1;,
        Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FILTER_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_ORDER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SEND_INFO:Lokio/ByteString;

.field public static final DEFAULT_SUB_ORDER_ID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final filter_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final order_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final send_info:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sub_order_id:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->DEFAULT_FILTER_TYPE:Ljava/lang/Integer;

    .line 20
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->DEFAULT_SEND_INFO:Lokio/ByteString;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->DEFAULT_SUB_ORDER_ID:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 57
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->order_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->filter_type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->send_info:Lokio/ByteString;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;->sub_order_id:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;Ljava/util/List;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;-><init>(Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;Ljava/util/List;)V
    .locals 1
    .parameter "order_id"
    .parameter "filter_type"
    .parameter "send_info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lokio/ByteString;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, sub_order_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    .line 52
    iput-object p3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    .line 53
    invoke-static {p4}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 63
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;

    .line 66
    .local v0, o:Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    .line 74
    iget v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->hashCode:I

    .line 75
    .local v0, result:I
    if-nez v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->order_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->filter_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->send_info:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->sub_order_id:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v2, v1

    .line 80
    iput v0, p0, Lcom/didi/frame/protobuffer/CollectSvrOrderFilterReq;->hashCode:I

    .line 82
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    :cond_3
    move v2, v1

    .line 77
    goto :goto_1

    .line 79
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method
