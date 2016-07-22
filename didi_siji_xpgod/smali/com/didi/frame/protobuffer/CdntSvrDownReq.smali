.class public final Lcom/didi/frame/protobuffer/CdntSvrDownReq;
.super Lcom/squareup/wire/Message;
.source "CdntSvrDownReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CdntSvrDownReq$1;,
        Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PEER_COORDINATE_INFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final peer_coordinate_infos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->DEFAULT_PEER_COORDINATE_INFOS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 32
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;->peer_coordinate_infos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;-><init>(Ljava/util/List;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrDownReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, peer_coordinate_infos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateInfo;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    .line 29
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 38
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 40
    .end local p1
    :goto_0
    return v0

    .line 39
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    check-cast p1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->hashCode:I

    .line 46
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
