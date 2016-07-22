.class public final Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrGetSessionsReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;",
        ">;"
    }
.end annotation


# instance fields
.field public sid:Ljava/util/List;
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
    .line 49
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 54
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;->sid:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;->sid:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq;

    move-result-object v0

    return-object v0
.end method

.method public sid(Ljava/util/List;)Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, sid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetSessionsReq$Builder;->sid:Ljava/util/List;

    .line 63
    return-object p0
.end method
