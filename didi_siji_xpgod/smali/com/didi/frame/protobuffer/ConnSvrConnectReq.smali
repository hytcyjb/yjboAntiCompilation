.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectReq;
.super Lcom/squareup/wire/Message;
.source "ConnSvrConnectReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnSvrConnectReq$1;,
        Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole; = null

.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;

.field public static final DEFAULT_SECRET_CHAP:Lokio/ByteString;

.field public static final DEFAULT_USER_AGENT:Lokio/ByteString;


# instance fields
.field public final old_role:Lcom/didi/frame/protobuffer/OldRole;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final secret_chap:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_agent:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldUnknown:Lcom/didi/frame/protobuffer/OldRole;

    sput-object v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole;

    .line 23
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->DEFAULT_SECRET_CHAP:Lokio/ByteString;

    .line 24
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->DEFAULT_USER_AGENT:Lokio/ByteString;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 66
    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->secret_chap:Lokio/ByteString;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->user_agent:Lokio/ByteString;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->role:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;-><init>(Ljava/lang/String;Lcom/didi/frame/protobuffer/OldRole;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/didi/frame/protobuffer/OldRole;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V
    .locals 0
    .parameter "phone_num"
    .parameter "old_role"
    .parameter "secret_chap"
    .parameter "user_agent"
    .parameter "role"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 60
    iput-object p3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    .line 61
    iput-object p4, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    .line 62
    iput-object p5, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p1, p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;

    .line 75
    .local v0, o:Lcom/didi/frame/protobuffer/ConnSvrConnectReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 84
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->hashCode:I

    .line 85
    .local v0, result:I
    if-nez v0, :cond_1

    .line 86
    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/OldRole;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 88
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 89
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 90
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 91
    iput v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->hashCode:I

    .line 93
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 86
    goto :goto_0

    :cond_3
    move v2, v1

    .line 87
    goto :goto_1

    :cond_4
    move v2, v1

    .line 88
    goto :goto_2

    :cond_5
    move v2, v1

    .line 89
    goto :goto_3
.end method
