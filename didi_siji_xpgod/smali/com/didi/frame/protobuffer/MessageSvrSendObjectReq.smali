.class public final Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;
.super Lcom/squareup/wire/Message;
.source "MessageSvrSendObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$1;,
        Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FID:Ljava/lang/String; = ""

.field public static final DEFAULT_META:Lokio/ByteString; = null

.field public static final DEFAULT_REQUEST_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_SID:Ljava/lang/Long; = null

.field public static final DEFAULT_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final fid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final meta:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final request_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->DEFAULT_SID:Ljava/lang/Long;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->DEFAULT_REQUEST_ID:Ljava/lang/Long;

    .line 22
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->DEFAULT_META:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 55
    iget-object v1, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->sid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->fid:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->token:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->request_id:Ljava/lang/Long;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->meta:Lokio/ByteString;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lokio/ByteString;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lokio/ByteString;)V
    .locals 0
    .parameter "sid"
    .parameter "type"
    .parameter "fid"
    .parameter "token"
    .parameter "request_id"
    .parameter "meta"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    .line 47
    iput-object p2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    .line 48
    iput-object p3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    .line 51
    iput-object p6, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;

    .line 64
    .local v0, o:Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->hashCode:I

    .line 75
    .local v0, result:I
    if-nez v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 78
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 79
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 80
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 81
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 82
    iput v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->hashCode:I

    .line 84
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

    :cond_4
    move v2, v1

    .line 78
    goto :goto_2

    :cond_5
    move v2, v1

    .line 79
    goto :goto_3

    :cond_6
    move v2, v1

    .line 80
    goto :goto_4
.end method
