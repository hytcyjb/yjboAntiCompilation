.class public final Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrAddRelationRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public relations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;"
        }
    .end annotation
.end field

.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 68
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;->relations:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->relations:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->checkRequiredFields()V

    .line 87
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;-><init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp;

    move-result-object v0

    return-object v0
.end method

.method public relations(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->relations:Ljava/util/List;

    .line 81
    return-object p0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 73
    return-object p0
.end method
