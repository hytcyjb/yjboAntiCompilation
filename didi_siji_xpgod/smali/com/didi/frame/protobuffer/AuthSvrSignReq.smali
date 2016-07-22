.class public final Lcom/didi/frame/protobuffer/AuthSvrSignReq;
.super Lcom/squareup/wire/Message;
.source "AuthSvrSignReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/AuthSvrSignReq$1;,
        Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT:Lokio/ByteString;


# instance fields
.field public final content:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->DEFAULT_CONTENT:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 27
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;->content:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/AuthSvrSignReq;-><init>(Lokio/ByteString;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrSignReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/AuthSvrSignReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 33
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 35
    .end local p1
    :goto_0
    return v0

    .line 34
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/AuthSvrSignReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    check-cast p1, Lcom/didi/frame/protobuffer/AuthSvrSignReq;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->hashCode:I

    .line 41
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
