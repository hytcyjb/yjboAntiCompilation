.class public final Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrGetRelationRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;",
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

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 78
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 80
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->relations:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->relations:Ljava/util/List;

    .line 81
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->checkRequiredFields()V

    .line 108
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;-><init>(Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp;

    move-result-object v0

    return-object v0
.end method

.method public relations(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->relations:Ljava/util/List;

    .line 94
    return-object p0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 86
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrGetRelationRsp$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 102
    return-object p0
.end method
