.class public final Lcom/didi/frame/protobuffer/PeerCoordinateRelation;
.super Lcom/squareup/wire/Message;
.source "PeerCoordinateRelation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PeerCoordinateRelation$1;,
        Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/Integer; = null

.field public static final DEFAULT_CREATE_TIME:Ljava/lang/Integer; = null

.field public static final DEFAULT_INACTIVE_EXPIRE_SECONDS:Ljava/lang/Integer; = null

.field public static final DEFAULT_LAST_ACTIVE_TIMESTAMP:Ljava/lang/Integer; = null

.field public static final DEFAULT_LOCAL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/RelationType;

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final biz_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final create_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final inactive_expire_seconds:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final last_active_timestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final local_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/RelationType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_INACTIVE_EXPIRE_SECONDS:Ljava/lang/Integer;

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_LAST_ACTIVE_TIMESTAMP:Ljava/lang/Integer;

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_CREATE_TIME:Ljava/lang/Integer;

    .line 21
    sget-object v0, Lcom/didi/frame/protobuffer/RelationType;->kRelationTypeRealTime:Lcom/didi/frame/protobuffer/RelationType;

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/RelationType;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->DEFAULT_BIZ_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    .line 77
    iget-object v1, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->local_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->user_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->inactive_expire_seconds:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->last_active_timestamp:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->create_time:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->type:Lcom/didi/frame/protobuffer/RelationType;

    iget-object v7, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->biz_type:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/RelationType;Ljava/lang/Integer;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;Lcom/didi/frame/protobuffer/PeerCoordinateRelation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;-><init>(Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/didi/frame/protobuffer/RelationType;Ljava/lang/Integer;)V
    .locals 0
    .parameter "local_id"
    .parameter "user_id"
    .parameter "inactive_expire_seconds"
    .parameter "last_active_timestamp"
    .parameter "create_time"
    .parameter "type"
    .parameter "biz_type"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    .line 69
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    .line 70
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    .line 71
    iput-object p5, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    .line 72
    iput-object p6, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    .line 73
    iput-object p7, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    .line 74
    return-void
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
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;

    .line 86
    .local v0, o:Lcom/didi/frame/protobuffer/PeerCoordinateRelation;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 97
    iget v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->hashCode:I

    .line 98
    .local v0, result:I
    if-nez v0, :cond_1

    .line 99
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 100
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 101
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 102
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 103
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 104
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/RelationType;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 105
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 106
    iput v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->hashCode:I

    .line 108
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_0

    :cond_3
    move v2, v1

    .line 100
    goto :goto_1

    :cond_4
    move v2, v1

    .line 101
    goto :goto_2

    :cond_5
    move v2, v1

    .line 102
    goto :goto_3

    :cond_6
    move v2, v1

    .line 103
    goto :goto_4

    :cond_7
    move v2, v1

    .line 104
    goto :goto_5
.end method
