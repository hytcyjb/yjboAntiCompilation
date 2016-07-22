.class public final Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrNewMessageRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public mid:Ljava/lang/Long;

.field public product:Ljava/lang/Long;

.field public rc:Ljava/lang/Integer;

.field public time:Ljava/lang/Long;

.field public uid:Ljava/util/List;
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
    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 90
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->rc:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->mid:Ljava/lang/Long;

    .line 93
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->uid:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->uid:Ljava/util/List;

    .line 94
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->time:Ljava/lang/Long;

    .line 95
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;->product:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->product:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->checkRequiredFields()V

    .line 126
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp;

    move-result-object v0

    return-object v0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->mid:Ljava/lang/Long;

    .line 105
    return-object p0
.end method

.method public product(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->product:Ljava/lang/Long;

    .line 120
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->rc:Ljava/lang/Integer;

    .line 100
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->time:Ljava/lang/Long;

    .line 115
    return-object p0
.end method

.method public uid(Ljava/util/List;)Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, uid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrNewMessageRsp$Builder;->uid:Ljava/util/List;

    .line 110
    return-object p0
.end method
