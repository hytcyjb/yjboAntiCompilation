.class public final Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushSvrMultiRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrMultiRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushSvrMultiRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 53
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->rsps:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;->rsps:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushSvrMultiRsp;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;->build()Lcom/didi/frame/protobuffer/PushSvrMultiRsp;

    move-result-object v0

    return-object v0
.end method

.method public rsps(Ljava/util/List;)Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/RspMsg;",
            ">;)",
            "Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, rsps:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/RspMsg;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiRsp$Builder;->rsps:Ljava/util/List;

    .line 62
    return-object p0
.end method
