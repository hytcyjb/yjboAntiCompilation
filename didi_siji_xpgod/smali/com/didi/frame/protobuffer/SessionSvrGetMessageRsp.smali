.class public final Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;
.super Lcom/squareup/wire/Message;
.source "SessionSvrGetMessageRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$1;,
        Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MID:Ljava/lang/Long;

.field public static final DEFAULT_RC:Ljava/lang/Integer;

.field public static final DEFAULT_TIME:Ljava/lang/Long;


# instance fields
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

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->DEFAULT_RC:Ljava/lang/Integer;

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->DEFAULT_MID:Ljava/lang/Long;

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->DEFAULT_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 40
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->rc:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->mid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->time:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .parameter "rc"
    .parameter "mid"
    .parameter "time"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    .line 35
    iput-object p2, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    .line 36
    iput-object p3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;

    .line 49
    .local v0, o:Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 56
    iget v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->hashCode:I

    .line 57
    .local v0, result:I
    if-nez v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 61
    iput v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->hashCode:I

    .line 63
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    :cond_3
    move v2, v1

    .line 59
    goto :goto_1
.end method
