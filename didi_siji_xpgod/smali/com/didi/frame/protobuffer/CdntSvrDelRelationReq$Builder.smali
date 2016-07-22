.class public final Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CdntSvrDelRelationReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;",
        ">;"
    }
.end annotation


# instance fields
.field public local_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 74
    iget-object v0, p1, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->local_ids:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->local_ids:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->checkRequiredFields()V

    .line 93
    new-instance v0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;-><init>(Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->build()Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq;

    move-result-object v0

    return-object v0
.end method

.method public local_ids(Ljava/util/List;)Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, local_ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->local_ids:Ljava/util/List;

    .line 87
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/frame/protobuffer/CdntSvrDelRelationReq$Builder;->user_id:Ljava/lang/Long;

    .line 79
    return-object p0
.end method
