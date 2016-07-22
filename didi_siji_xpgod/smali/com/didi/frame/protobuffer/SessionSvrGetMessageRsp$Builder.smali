.class public final Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrGetMessageRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public mid:Ljava/lang/Long;

.field public rc:Ljava/lang/Integer;

.field public time:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->rc:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->mid:Ljava/lang/Long;

    .line 80
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->checkRequiredFields()V

    .line 107
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;-><init>(Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp;

    move-result-object v0

    return-object v0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->mid:Ljava/lang/Long;

    .line 93
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->rc:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrGetMessageRsp$Builder;->time:Ljava/lang/Long;

    .line 101
    return-object p0
.end method
