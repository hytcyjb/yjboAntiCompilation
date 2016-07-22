.class public final Lcom/didi/frame/protobuffer/Param;
.super Lcom/squareup/wire/Message;
.source "Param.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/Param$1;,
        Lcom/didi/frame/protobuffer/Param$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATA:Lokio/ByteString;

.field public static final DEFAULT_KEY:Lokio/ByteString;


# instance fields
.field public final data:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final key:Lokio/ByteString;
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
    .line 23
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/Param;->DEFAULT_KEY:Lokio/ByteString;

    .line 24
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/Param;->DEFAULT_DATA:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/Param$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 38
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Param$Builder;->key:Lokio/ByteString;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/Param$Builder;->data:Lokio/ByteString;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/protobuffer/Param;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/Param;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/Param$Builder;Lcom/didi/frame/protobuffer/Param$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/Param;-><init>(Lcom/didi/frame/protobuffer/Param$Builder;)V

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokio/ByteString;)V
    .locals 0
    .parameter "key"
    .parameter "data"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    .line 34
    iput-object p2, p0, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/Param;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/didi/frame/protobuffer/Param;

    .line 47
    .local v0, o:Lcom/didi/frame/protobuffer/Param;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Param;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/Param;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 53
    iget v0, p0, Lcom/didi/frame/protobuffer/Param;->hashCode:I

    .line 54
    .local v0, result:I
    if-nez v0, :cond_1

    .line 55
    iget-object v2, p0, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    move-result v0

    .line 56
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 57
    iput v0, p0, Lcom/didi/frame/protobuffer/Param;->hashCode:I

    .line 59
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 55
    goto :goto_0
.end method
