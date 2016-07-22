.class public final Lcom/didi/frame/protobuffer/AuthSvrLoginReq;
.super Lcom/squareup/wire/Message;
.source "AuthSvrLoginReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/AuthSvrLoginReq$1;,
        Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_RANDOM_MSG:Lokio/ByteString;

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;

.field public static final DEFAULT_SECRET_CHAP:Lokio/ByteString;


# instance fields
.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final random_msg:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->DEFAULT_SECRET_CHAP:Lokio/ByteString;

    .line 21
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->DEFAULT_RANDOM_MSG:Lokio/ByteString;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 55
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->secret_chap:Lokio/ByteString;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->random_msg:Lokio/ByteString;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->role:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;-><init>(Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrLoginReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/lang/Integer;)V
    .locals 0
    .parameter "phone_num"
    .parameter "secret_chap"
    .parameter "random_msg"
    .parameter "role"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    .line 50
    iput-object p3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    .line 51
    iput-object p4, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

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
    instance-of v3, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;

    .line 64
    .local v0, o:Lcom/didi/frame/protobuffer/AuthSvrLoginReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 72
    iget v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->hashCode:I

    .line 73
    .local v0, result:I
    if-nez v0, :cond_1

    .line 74
    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 75
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 76
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 78
    iput v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->hashCode:I

    .line 80
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 74
    goto :goto_0

    :cond_3
    move v2, v1

    .line 75
    goto :goto_1

    :cond_4
    move v2, v1

    .line 76
    goto :goto_2
.end method
