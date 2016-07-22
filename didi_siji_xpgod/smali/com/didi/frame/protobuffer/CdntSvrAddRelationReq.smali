.class public final Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;
.super Lcom/squareup/wire/Message;
.source "CdntSvrAddRelationReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$1;,
        Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_RELATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final relations:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/PeerCoordinateRelation;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->DEFAULT_RELATIONS:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 46
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->user_id:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->relations:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;-><init>(Ljava/lang/Long;Ljava/util/List;Lcom/didi/frame/protobuffer/CoordinateType;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/List;Lcom/didi/frame/protobuffer/CoordinateType;)V
    .locals 1
    .parameter "user_id"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;",
            "Lcom/didi/frame/protobuffer/CoordinateType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    .line 41
    invoke-static {p2}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 43
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 52
    if-ne p1, p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;

    .line 55
    .local v0, o:Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->hashCode:I

    .line 63
    .local v0, result:I
    if-nez v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 66
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 67
    iput v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->hashCode:I

    .line 69
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
