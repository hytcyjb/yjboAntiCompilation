.class public final Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrDownReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrDownReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrDownReq;",
        ">;"
    }
.end annotation


# instance fields
.field public peer_coordinate_infos:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDownReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 58
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrDownReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;->peer_coordinate_infos:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrDownReq;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrDownReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    move-result-object v0

    return-object v0
.end method

.method public peer_coordinate_infos(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateInfo;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, peer_coordinate_infos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateInfo;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDownReq$Builder;->peer_coordinate_infos:Ljava/util/List;

    .line 64
    return-object p0
.end method
