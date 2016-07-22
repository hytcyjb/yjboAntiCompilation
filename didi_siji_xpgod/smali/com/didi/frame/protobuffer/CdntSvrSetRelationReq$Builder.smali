.class public final Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrSetRelationReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;",
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

.field public type:Lcom/didi/frame/protobuffer/CoordinateType;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 86
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 88
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;->relations:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->relations:Ljava/util/List;

    .line 89
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->checkRequiredFields()V

    .line 119
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq;

    move-result-object v0

    return-object v0
.end method

.method public relations(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->relations:Ljava/util/List;

    .line 105
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 113
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrSetRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 97
    return-object p0
.end method
