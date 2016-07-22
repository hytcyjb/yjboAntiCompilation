.class public final Lcom/didi/frame/protobuffer/DispatchSvrReq;
.super Lcom/squareup/wire/Message;
.source "DispatchSvrReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DispatchSvrReq$1;,
        Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_POST_DATA:Lokio/ByteString;

.field public static final DEFAULT_QUERY_PARAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Param;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final content_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final post_data:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final query_params:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/Param;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->DEFAULT_QUERY_PARAMS:Ljava/util/List;

    .line 21
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->DEFAULT_POST_DATA:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 43
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->query_params:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->content_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;->post_data:Lokio/ByteString;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DispatchSvrReq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;Lcom/didi/frame/protobuffer/DispatchSvrReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DispatchSvrReq;-><init>(Lcom/didi/frame/protobuffer/DispatchSvrReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1
    .parameter "path"
    .parameter
    .parameter "content_type"
    .parameter "post_data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/Param;",
            ">;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, query_params:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/Param;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    .line 40
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 49
    if-ne p1, p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DispatchSvrReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;

    .line 52
    .local v0, o:Lcom/didi/frame/protobuffer/DispatchSvrReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 60
    iget v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->hashCode:I

    .line 61
    .local v0, result:I
    if-nez v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 63
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->query_params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 64
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->content_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 65
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->post_data:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 66
    iput v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrReq;->hashCode:I

    .line 68
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 64
    goto :goto_2
.end method
