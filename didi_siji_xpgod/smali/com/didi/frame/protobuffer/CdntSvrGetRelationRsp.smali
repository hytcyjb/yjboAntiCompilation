.class public final Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;
.super Lcom/squareup/wire/Message;
.source "CdntSvrGetRelationRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$1;,
        Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;
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

.field public final rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation
.end field

.field public final type:Lcom/didi/frame/protobuffer/CoordinateType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->DEFAULT_RELATIONS:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/didi/frame/protobuffer/CoordinateType;->BD_09:Lcom/didi/frame/protobuffer/CoordinateType;

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->DEFAULT_TYPE:Lcom/didi/frame/protobuffer/CoordinateType;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 41
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->relations:Ljava/util/List;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;-><init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/util/List;Lcom/didi/frame/protobuffer/CoordinateType;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;-><init>(Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RspMsg;Ljava/util/List;Lcom/didi/frame/protobuffer/CoordinateType;)V
    .locals 1
    .parameter "rsp_msg"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;",
            "Lcom/didi/frame/protobuffer/CoordinateType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 36
    invoke-static {p2}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 38
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 47
    if-ne p1, p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;

    .line 50
    .local v0, o:Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 57
    iget v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->hashCode:I

    .line 58
    .local v0, result:I
    if-nez v0, :cond_1

    .line 59
    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/RspMsg;->hashCode()I

    move-result v0

    .line 60
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 61
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/CoordinateType;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 62
    iput v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
