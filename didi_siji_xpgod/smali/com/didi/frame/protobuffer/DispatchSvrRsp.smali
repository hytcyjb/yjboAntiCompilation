.class public final Lcom/didi/frame/protobuffer/DispatchSvrRsp;
.super Lcom/squareup/wire/Message;
.source "DispatchSvrRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/DispatchSvrRsp$1;,
        Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BODY:Lokio/ByteString;

.field public static final DEFAULT_HTTP_STATUS_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_SYS_CODE:Ljava/lang/Integer;


# instance fields
.field public final body:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final http_status_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sys_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->DEFAULT_SYS_CODE:Ljava/lang/Integer;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->DEFAULT_HTTP_STATUS_CODE:Ljava/lang/Integer;

    .line 17
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->DEFAULT_BODY:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 35
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->sys_code:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->http_status_code:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->body:Lokio/ByteString;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;Lcom/didi/frame/protobuffer/DispatchSvrRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;-><init>(Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V
    .locals 0
    .parameter "sys_code"
    .parameter "http_status_code"
    .parameter "body"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    .line 31
    iput-object p3, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;

    .line 44
    .local v0, o:Lcom/didi/frame/protobuffer/DispatchSvrRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 51
    iget v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 55
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 56
    iput v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->hashCode:I

    .line 58
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0

    :cond_3
    move v2, v1

    .line 54
    goto :goto_1
.end method
