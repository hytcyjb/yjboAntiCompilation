.class public final Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnMasterGetIfOnlineReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;",
        ">;"
    }
.end annotation


# instance fields
.field public user_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 51
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->user_id:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;->user_id:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq;

    move-result-object v0

    return-object v0
.end method

.method public user_id(Ljava/util/List;)Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, user_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetIfOnlineReq$Builder;->user_id:Ljava/util/List;

    .line 57
    return-object p0
.end method
