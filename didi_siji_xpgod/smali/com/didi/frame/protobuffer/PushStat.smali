.class public final Lcom/didi/frame/protobuffer/PushStat;
.super Lcom/squareup/wire/Message;
.source "PushStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushStat$1;,
        Lcom/didi/frame/protobuffer/PushStat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GT60S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN10S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN1S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN30S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN3S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN60S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_IN6S_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_RECV_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_SEND_CNT:Ljava/lang/Integer;

.field public static final DEFAULT_TASK_ID:Ljava/lang/Long;


# instance fields
.field public final gt60s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in10s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in1s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in30s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in3s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in60s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final in6s_recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recv_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final send_cnt:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final task_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_TASK_ID:Ljava/lang/Long;

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_SEND_CNT:Ljava/lang/Integer;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_RECV_CNT:Ljava/lang/Integer;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN1S_RECV_CNT:Ljava/lang/Integer;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN3S_RECV_CNT:Ljava/lang/Integer;

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN6S_RECV_CNT:Ljava/lang/Integer;

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN10S_RECV_CNT:Ljava/lang/Integer;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN30S_RECV_CNT:Ljava/lang/Integer;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_IN60S_RECV_CNT:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushStat;->DEFAULT_GT60S_RECV_CNT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushStat$Builder;)V
    .locals 11
    .parameter "builder"

    .prologue
    .line 69
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->task_id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->send_cnt:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->recv_cnt:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in1s_recv_cnt:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in3s_recv_cnt:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in6s_recv_cnt:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in10s_recv_cnt:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in30s_recv_cnt:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->in60s_recv_cnt:Ljava/lang/Integer;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/PushStat$Builder;->gt60s_recv_cnt:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/didi/frame/protobuffer/PushStat;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushStat;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushStat$Builder;Lcom/didi/frame/protobuffer/PushStat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushStat;-><init>(Lcom/didi/frame/protobuffer/PushStat$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "task_id"
    .parameter "send_cnt"
    .parameter "recv_cnt"
    .parameter "in1s_recv_cnt"
    .parameter "in3s_recv_cnt"
    .parameter "in6s_recv_cnt"
    .parameter "in10s_recv_cnt"
    .parameter "in30s_recv_cnt"
    .parameter "in60s_recv_cnt"
    .parameter "gt60s_recv_cnt"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    .line 57
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    .line 58
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    .line 59
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    .line 60
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    .line 61
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    .line 62
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    .line 63
    iput-object p8, p0, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    .line 64
    iput-object p9, p0, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    .line 65
    iput-object p10, p0, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PushStat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/didi/frame/protobuffer/PushStat;

    .line 78
    .local v0, o:Lcom/didi/frame/protobuffer/PushStat;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushStat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 92
    iget v0, p0, Lcom/didi/frame/protobuffer/PushStat;->hashCode:I

    .line 93
    .local v0, result:I
    if-nez v0, :cond_1

    .line 94
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 95
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 96
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 97
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 98
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 99
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 100
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 101
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 104
    iput v0, p0, Lcom/didi/frame/protobuffer/PushStat;->hashCode:I

    .line 106
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 94
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 95
    goto :goto_1

    :cond_4
    move v2, v1

    .line 96
    goto :goto_2

    :cond_5
    move v2, v1

    .line 97
    goto :goto_3

    :cond_6
    move v2, v1

    .line 98
    goto :goto_4

    :cond_7
    move v2, v1

    .line 99
    goto :goto_5

    :cond_8
    move v2, v1

    .line 100
    goto :goto_6

    :cond_9
    move v2, v1

    .line 101
    goto :goto_7

    :cond_a
    move v2, v1

    .line 102
    goto :goto_8
.end method
