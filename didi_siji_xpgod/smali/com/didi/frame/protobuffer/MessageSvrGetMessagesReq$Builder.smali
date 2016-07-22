.class public final Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrGetMessagesReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;",
        ">;"
    }
.end annotation


# instance fields
.field public count:Ljava/lang/Integer;

.field public last:Ljava/lang/Long;

.field public mid:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 88
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->sid:Ljava/lang/Long;

    .line 90
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->mid:Ljava/lang/Long;

    .line 91
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;->last:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->last:Ljava/lang/Long;

    .line 92
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;->count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->count:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->checkRequiredFields()V

    .line 127
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
    .locals 0
    .parameter "count"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->count:Ljava/lang/Integer;

    .line 121
    return-object p0
.end method

.method public last(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
    .locals 0
    .parameter "last"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->last:Ljava/lang/Long;

    .line 113
    return-object p0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->mid:Ljava/lang/Long;

    .line 105
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesReq$Builder;->sid:Ljava/lang/Long;

    .line 97
    return-object p0
.end method
