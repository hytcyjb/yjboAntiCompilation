.class public final Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrAddRelationReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;",
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
    .line 78
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 83
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 85
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->relations:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->relations:Ljava/util/List;

    .line 86
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->checkRequiredFields()V

    .line 113
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq;

    move-result-object v0

    return-object v0
.end method

.method public relations(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, relations:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PeerCoordinateRelation;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->relations:Ljava/util/List;

    .line 99
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->type:Lcom/didi/frame/protobuffer/CoordinateType;

    .line 107
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrAddRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 94
    return-object p0
.end method
