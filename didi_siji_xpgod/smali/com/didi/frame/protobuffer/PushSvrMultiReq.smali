.class public final Lcom/didi/frame/protobuffer/PushSvrMultiReq;
.super Lcom/squareup/wire/Message;
.source "PushSvrMultiReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushSvrMultiReq$1;,
        Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;,
        Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXPIRE_SECONDS:Ljava/lang/Integer; = null

.field public static final DEFAULT_LOG_STR:Ljava/lang/String; = ""

.field public static final DEFAULT_PUSH_STRATEGY:Lcom/didi/frame/protobuffer/PushStrategy; = null

.field public static final DEFAULT_SMS_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMEOUT_TO_SMS:Ljava/lang/Integer;

.field public static final DEFAULT_USERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final expire_seconds:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final log_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final push_msg:Lcom/didi/frame/protobuffer/PushMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation
.end field

.field public final push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sms_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timeout_to_sms:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final users:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->DEFAULT_USERS:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyNoResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->DEFAULT_PUSH_STRATEGY:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->DEFAULT_EXPIRE_SECONDS:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->DEFAULT_TIMEOUT_TO_SMS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 77
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->users:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->expire_seconds:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->log_str:Ljava/lang/String;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->sms_msg:Ljava/lang/String;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;-><init>(Ljava/util/List;Lcom/didi/frame/protobuffer/PushMsg;Lcom/didi/frame/protobuffer/PushStrategy;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/didi/frame/protobuffer/PushMsg;Lcom/didi/frame/protobuffer/PushStrategy;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "push_msg"
    .parameter "push_strategy"
    .parameter "expire_seconds"
    .parameter "log_str"
    .parameter "sms_msg"
    .parameter "timeout_to_sms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
            ">;",
            "Lcom/didi/frame/protobuffer/PushMsg;",
            "Lcom/didi/frame/protobuffer/PushStrategy;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 69
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 70
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    .line 71
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;

    .line 86
    .local v0, o:Lcom/didi/frame/protobuffer/PushSvrMultiReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 97
    iget v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->hashCode:I

    .line 98
    .local v0, result:I
    if-nez v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 100
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMsg;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 101
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushStrategy;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v3, v1

    .line 104
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v3, v1

    .line 105
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 106
    iput v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->hashCode:I

    .line 108
    :cond_1
    return v0

    .line 99
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 100
    goto :goto_1

    :cond_4
    move v1, v2

    .line 101
    goto :goto_2

    :cond_5
    move v1, v2

    .line 102
    goto :goto_3

    :cond_6
    move v1, v2

    .line 103
    goto :goto_4

    :cond_7
    move v1, v2

    .line 104
    goto :goto_5
.end method
