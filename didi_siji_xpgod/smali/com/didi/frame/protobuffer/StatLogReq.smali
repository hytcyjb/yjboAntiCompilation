.class public final Lcom/didi/frame/protobuffer/StatLogReq;
.super Lcom/squareup/wire/Message;
.source "StatLogReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/StatLogReq$1;,
        Lcom/didi/frame/protobuffer/StatLogReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_EVENT:Ljava/lang/Integer;

.field public static final DEFAULT_GAP_US:Ljava/lang/Long;

.field public static final DEFAULT_MSG_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_TASK_ID:Ljava/lang/Long;


# instance fields
.field public final event:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final gap_us:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final task_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/StatLogReq;->DEFAULT_EVENT:Ljava/lang/Integer;

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/StatLogReq;->DEFAULT_TASK_ID:Ljava/lang/Long;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/StatLogReq;->DEFAULT_MSG_TYPE:Ljava/lang/Integer;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/StatLogReq;->DEFAULT_GAP_US:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/StatLogReq$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 39
    iget-object v0, p1, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->event:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->task_id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->msg_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->gap_us:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/StatLogReq;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/StatLogReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/StatLogReq$Builder;Lcom/didi/frame/protobuffer/StatLogReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/StatLogReq;-><init>(Lcom/didi/frame/protobuffer/StatLogReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0
    .parameter "event"
    .parameter "task_id"
    .parameter "msg_type"
    .parameter "gap_us"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    .line 33
    iput-object p2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    .line 34
    iput-object p3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    .line 35
    iput-object p4, p0, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/StatLogReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/didi/frame/protobuffer/StatLogReq;

    .line 48
    .local v0, o:Lcom/didi/frame/protobuffer/StatLogReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/StatLogReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/StatLogReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/StatLogReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/StatLogReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/StatLogReq;->hashCode:I

    .line 57
    .local v0, result:I
    if-nez v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 60
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 61
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 62
    iput v0, p0, Lcom/didi/frame/protobuffer/StatLogReq;->hashCode:I

    .line 64
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

    :cond_4
    move v2, v1

    .line 60
    goto :goto_2
.end method
