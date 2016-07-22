.class public final Lcom/didi/frame/protobuffer/InstantMessageMessage;
.super Lcom/squareup/wire/Message;
.source "InstantMessageMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/InstantMessageMessage$1;,
        Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FID:Ljava/lang/String; = ""

.field public static final DEFAULT_META:Lokio/ByteString; = null

.field public static final DEFAULT_MID:Ljava/lang/Long; = null

.field public static final DEFAULT_REQUEST_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_TIME:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_UID:Ljava/lang/Long;


# instance fields
.field public final fid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final meta:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final request_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final uid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
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

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_MID:Ljava/lang/Long;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_TIME:Ljava/lang/Long;

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_UID:Ljava/lang/Long;

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_REQUEST_ID:Ljava/lang/Long;

    .line 24
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->DEFAULT_META:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    .line 74
    iget-object v1, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->mid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->time:Ljava/lang/Long;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->uid:Ljava/lang/Long;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->text:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->fid:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->request_id:Ljava/lang/Long;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;->meta:Lokio/ByteString;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/didi/frame/protobuffer/InstantMessageMessage;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lokio/ByteString;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;Lcom/didi/frame/protobuffer/InstantMessageMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageMessage;-><init>(Lcom/didi/frame/protobuffer/InstantMessageMessage$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lokio/ByteString;)V
    .locals 0
    .parameter "mid"
    .parameter "type"
    .parameter "time"
    .parameter "uid"
    .parameter "text"
    .parameter "fid"
    .parameter "request_id"
    .parameter "meta"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    .line 64
    iput-object p2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    .line 65
    iput-object p3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    .line 66
    iput-object p4, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    .line 67
    iput-object p5, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    .line 70
    iput-object p8, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

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
    instance-of v3, p1, Lcom/didi/frame/protobuffer/InstantMessageMessage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;

    .line 83
    .local v0, o:Lcom/didi/frame/protobuffer/InstantMessageMessage;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 95
    iget v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->hashCode:I

    .line 96
    .local v0, result:I
    if-nez v0, :cond_1

    .line 97
    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->mid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 98
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 99
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 100
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 101
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->fid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->request_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->meta:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 105
    iput v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessage;->hashCode:I

    .line 107
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 97
    goto :goto_0

    :cond_3
    move v2, v1

    .line 98
    goto :goto_1

    :cond_4
    move v2, v1

    .line 99
    goto :goto_2

    :cond_5
    move v2, v1

    .line 100
    goto :goto_3

    :cond_6
    move v2, v1

    .line 101
    goto :goto_4

    :cond_7
    move v2, v1

    .line 102
    goto :goto_5

    :cond_8
    move v2, v1

    .line 103
    goto :goto_6
.end method
