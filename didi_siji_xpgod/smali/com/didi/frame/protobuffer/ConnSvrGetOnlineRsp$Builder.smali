.class public final Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrGetOnlineRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

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
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 72
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;->user_id:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->user_id:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->checkRequiredFields()V

    .line 91
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;-><init>(Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp;

    move-result-object v0

    return-object v0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 77
    return-object p0
.end method

.method public user_id(Ljava/util/List;)Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, user_id:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineRsp$Builder;->user_id:Ljava/util/List;

    .line 85
    return-object p0
.end method
