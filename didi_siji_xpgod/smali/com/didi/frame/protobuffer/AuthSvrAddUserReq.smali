.class public final Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;
.super Lcom/squareup/wire/Message;
.source "AuthSvrAddUserReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$1;,
        Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_TOKEN:Lokio/ByteString;

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final token:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 21
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->DEFAULT_TOKEN:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 49
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->user_id:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->token:Lokio/ByteString;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->phone_num:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;-><init>(Ljava/lang/Long;Lokio/ByteString;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lokio/ByteString;Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"
    .parameter "token"
    .parameter "phone_num"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    .line 44
    iput-object p2, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    .line 45
    iput-object p3, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;

    .line 58
    .local v0, o:Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 65
    iget v0, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->hashCode:I

    .line 66
    .local v0, result:I
    if-nez v0, :cond_1

    .line 67
    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 68
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 70
    iput v0, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->hashCode:I

    .line 72
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    :cond_3
    move v2, v1

    .line 68
    goto :goto_1
.end method