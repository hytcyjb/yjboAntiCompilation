.class public final Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrSendTextRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;",
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
    .line 66
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->rc:Ljava/lang/Integer;

    .line 73
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->mid:Ljava/lang/Long;

    .line 74
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->checkRequiredFields()V

    .line 95
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp;

    move-result-object v0

    return-object v0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->mid:Ljava/lang/Long;

    .line 84
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->rc:Ljava/lang/Integer;

    .line 79
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextRsp$Builder;->time:Ljava/lang/Long;

    .line 89
    return-object p0
.end method
