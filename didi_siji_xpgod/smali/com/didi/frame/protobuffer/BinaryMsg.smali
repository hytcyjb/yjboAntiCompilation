.class public final Lcom/didi/frame/protobuffer/BinaryMsg;
.super Lcom/squareup/wire/Message;
.source "BinaryMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/BinaryMsg$1;,
        Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PAYLOAD:Lokio/ByteString;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final payload:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
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
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/BinaryMsg;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 16
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/BinaryMsg;->DEFAULT_PAYLOAD:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/BinaryMsg$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 36
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload:Lokio/ByteString;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/BinaryMsg;-><init>(Ljava/lang/Integer;Lokio/ByteString;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/BinaryMsg;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/BinaryMsg$Builder;Lcom/didi/frame/protobuffer/BinaryMsg$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/BinaryMsg;-><init>(Lcom/didi/frame/protobuffer/BinaryMsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lokio/ByteString;)V
    .locals 0
    .parameter "type"
    .parameter "payload"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    .line 32
    iput-object p2, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p1, p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/BinaryMsg;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/didi/frame/protobuffer/BinaryMsg;

    .line 45
    .local v0, o:Lcom/didi/frame/protobuffer/BinaryMsg;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BinaryMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/BinaryMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->hashCode:I

    .line 52
    .local v0, result:I
    if-nez v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 55
    iput v0, p0, Lcom/didi/frame/protobuffer/BinaryMsg;->hashCode:I

    .line 57
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0
.end method
