.class public final Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
.super Lcom/squareup/wire/Message;
.source "MessageSvrSendObjectRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$1;,
        Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FID:Ljava/lang/String; = ""

.field public static final DEFAULT_MID:Ljava/lang/Long;

.field public static final DEFAULT_RC:Ljava/lang/Integer;

.field public static final DEFAULT_TIME:Ljava/lang/Long;


# instance fields
.field public final fid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_RC:Ljava/lang/Integer;

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_MID:Ljava/lang/Long;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->DEFAULT_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 46
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->rc:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->mid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->fid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .parameter "rc"
    .parameter "mid"
    .parameter "time"
    .parameter "fid"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    .line 40
    iput-object p2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    .line 41
    iput-object p3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    .line 42
    iput-object p4, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    .line 55
    .local v0, o:Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 63
    iget v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->hashCode:I

    .line 64
    .local v0, result:I
    if-nez v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 66
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 67
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 69
    iput v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->hashCode:I

    .line 71
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    :cond_3
    move v2, v1

    .line 66
    goto :goto_1

    :cond_4
    move v2, v1

    .line 67
    goto :goto_2
.end method
