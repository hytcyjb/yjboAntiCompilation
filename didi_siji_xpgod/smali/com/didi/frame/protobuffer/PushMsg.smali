.class public final Lcom/didi/frame/protobuffer/PushMsg;
.super Lcom/squareup/wire/Message;
.source "PushMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushMsg$1;,
        Lcom/didi/frame/protobuffer/PushMsg$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MSG_ID:Lokio/ByteString;

.field public static final DEFAULT_NEED_RSP:Ljava/lang/Boolean;

.field public static final DEFAULT_PAYLOAD:Lokio/ByteString;

.field public static final DEFAULT_PRODUCT:Ljava/lang/Integer;

.field public static final DEFAULT_TASK_ID:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final msg_id:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final need_rsp:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payload:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final product:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final task_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 18
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_PAYLOAD:Lokio/ByteString;

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_TASK_ID:Ljava/lang/Long;

    .line 20
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_MSG_ID:Lokio/ByteString;

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_NEED_RSP:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushMsg;->DEFAULT_PRODUCT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushMsg$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 74
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->payload:Lokio/ByteString;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->task_id:Ljava/lang/Long;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->msg_id:Lokio/ByteString;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->need_rsp:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PushMsg$Builder;->product:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/PushMsg;-><init>(Ljava/lang/Integer;Lokio/ByteString;Ljava/lang/Long;Lokio/ByteString;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushMsg;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushMsg$Builder;Lcom/didi/frame/protobuffer/PushMsg$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushMsg;-><init>(Lcom/didi/frame/protobuffer/PushMsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lokio/ByteString;Ljava/lang/Long;Lokio/ByteString;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"
    .parameter "payload"
    .parameter "task_id"
    .parameter "msg_id"
    .parameter "need_rsp"
    .parameter "product"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    .line 66
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    .line 67
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    .line 68
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    .line 69
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    .line 70
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PushMsg;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/didi/frame/protobuffer/PushMsg;

    .line 83
    .local v0, o:Lcom/didi/frame/protobuffer/PushMsg;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 93
    iget v0, p0, Lcom/didi/frame/protobuffer/PushMsg;->hashCode:I

    .line 94
    .local v0, result:I
    if-nez v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 96
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 97
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 98
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 99
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 100
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 101
    iput v0, p0, Lcom/didi/frame/protobuffer/PushMsg;->hashCode:I

    .line 103
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 95
    goto :goto_0

    :cond_3
    move v2, v1

    .line 96
    goto :goto_1

    :cond_4
    move v2, v1

    .line 97
    goto :goto_2

    :cond_5
    move v2, v1

    .line 98
    goto :goto_3

    :cond_6
    move v2, v1

    .line 99
    goto :goto_4
.end method
