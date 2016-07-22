.class public final Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrGetMessagesRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
            ">;"
        }
    .end annotation
.end field

.field public mid:Ljava/lang/Long;

.field public rc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->rc:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->messages:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->messages:Ljava/util/List;

    .line 80
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->mid:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->checkRequiredFields()V

    .line 104
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;-><init>(Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp;

    move-result-object v0

    return-object v0
.end method

.method public messages(Ljava/util/List;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/InstantMessageMessage;",
            ">;)",
            "Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/InstantMessageMessage;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->messages:Ljava/util/List;

    .line 90
    return-object p0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->mid:Ljava/lang/Long;

    .line 98
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrGetMessagesRsp$Builder;->rc:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method
