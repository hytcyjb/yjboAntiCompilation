.class public final Lcom/didi/frame/protobuffer/FileSvrUploadReq;
.super Lcom/squareup/wire/Message;
.source "FileSvrUploadReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/FileSvrUploadReq$1;,
        Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT:Lokio/ByteString; = null

.field public static final DEFAULT_FID:Ljava/lang/String; = ""

.field public static final DEFAULT_SID:Ljava/lang/Long;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final content:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final fid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->DEFAULT_SID:Ljava/lang/Long;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 20
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->DEFAULT_CONTENT:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 45
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->fid:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->sid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;->content:Lokio/ByteString;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lokio/ByteString;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;Lcom/didi/frame/protobuffer/FileSvrUploadReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;-><init>(Lcom/didi/frame/protobuffer/FileSvrUploadReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lokio/ByteString;)V
    .locals 0
    .parameter "fid"
    .parameter "sid"
    .parameter "type"
    .parameter "content"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    .line 40
    iput-object p3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    .line 41
    iput-object p4, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/FileSvrUploadReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;

    .line 54
    .local v0, o:Lcom/didi/frame/protobuffer/FileSvrUploadReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 62
    iget v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->hashCode:I

    .line 63
    .local v0, result:I
    if-nez v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->fid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->sid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 66
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->content:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 68
    iput v0, p0, Lcom/didi/frame/protobuffer/FileSvrUploadReq;->hashCode:I

    .line 70
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    :cond_3
    move v2, v1

    .line 65
    goto :goto_1

    :cond_4
    move v2, v1

    .line 66
    goto :goto_2
.end method
