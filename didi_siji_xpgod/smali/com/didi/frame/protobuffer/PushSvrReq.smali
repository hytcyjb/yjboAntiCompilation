.class public final Lcom/didi/frame/protobuffer/PushSvrReq;
.super Lcom/squareup/wire/Message;
.source "PushSvrReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushSvrReq$1;,
        Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXPIRE_SECONDS:Ljava/lang/Integer; = null

.field public static final DEFAULT_LOG_STR:Ljava/lang/String; = ""

.field public static final DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole; = null

.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_PUSH_STRATEGY:Lcom/didi/frame/protobuffer/PushStrategy; = null

.field public static final DEFAULT_ROLE:Ljava/lang/Integer; = null

.field public static final DEFAULT_SMS_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_TIMEOUT_TO_SMS:Ljava/lang/Integer;

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final expire_seconds:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final log_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final old_role:Lcom/didi/frame/protobuffer/OldRole;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final push_msg:Lcom/didi/frame/protobuffer/PushMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation
.end field

.field public final push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sms_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timeout_to_sms:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    sget-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldUnknown:Lcom/didi/frame/protobuffer/OldRole;

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole;

    .line 19
    sget-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyNoResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_PUSH_STRATEGY:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_EXPIRE_SECONDS:Ljava/lang/Integer;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_ROLE:Ljava/lang/Integer;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrReq;->DEFAULT_TIMEOUT_TO_SMS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OldRole;Ljava/lang/String;Lcom/didi/frame/protobuffer/PushMsg;Lcom/didi/frame/protobuffer/PushStrategy;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "old_role"
    .parameter "phone_num"
    .parameter "push_msg"
    .parameter "push_strategy"
    .parameter "user_id"
    .parameter "expire_seconds"
    .parameter "log_str"
    .parameter "role"
    .parameter "sms_msg"
    .parameter "timeout_to_sms"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 83
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 85
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 86
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    .line 87
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    .line 88
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    .line 90
    iput-object p9, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushSvrReq$Builder;)V
    .locals 11
    .parameter "builder"

    .prologue
    .line 95
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->phone_num:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->user_id:Ljava/lang/Long;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->expire_seconds:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->log_str:Ljava/lang/String;

    iget-object v8, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->role:Ljava/lang/Integer;

    iget-object v9, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->sms_msg:Ljava/lang/String;

    iget-object v10, p1, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/didi/frame/protobuffer/PushSvrReq;-><init>(Lcom/didi/frame/protobuffer/OldRole;Ljava/lang/String;Lcom/didi/frame/protobuffer/PushMsg;Lcom/didi/frame/protobuffer/PushStrategy;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushSvrReq$Builder;Lcom/didi/frame/protobuffer/PushSvrReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrReq;-><init>(Lcom/didi/frame/protobuffer/PushSvrReq$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PushSvrReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/didi/frame/protobuffer/PushSvrReq;

    .line 104
    .local v0, o:Lcom/didi/frame/protobuffer/PushSvrReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 118
    iget v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->hashCode:I

    .line 119
    .local v0, result:I
    if-nez v0, :cond_1

    .line 120
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/OldRole;->hashCode()I

    move-result v0

    .line 121
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 122
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/PushMsg;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 123
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/PushStrategy;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 124
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 125
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 130
    iput v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq;->hashCode:I

    .line 132
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 120
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 121
    goto :goto_1

    :cond_4
    move v2, v1

    .line 122
    goto :goto_2

    :cond_5
    move v2, v1

    .line 123
    goto :goto_3

    :cond_6
    move v2, v1

    .line 124
    goto :goto_4

    :cond_7
    move v2, v1

    .line 125
    goto :goto_5

    :cond_8
    move v2, v1

    .line 126
    goto :goto_6

    :cond_9
    move v2, v1

    .line 127
    goto :goto_7

    :cond_a
    move v2, v1

    .line 128
    goto :goto_8
.end method
