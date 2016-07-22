.class public final Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrSendObjectRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public mid:Ljava/lang/Long;

.field public rc:Ljava/lang/Integer;

.field public time:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 86
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->rc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->rc:Ljava/lang/Integer;

    .line 88
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->mid:Ljava/lang/Long;

    .line 89
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->time:Ljava/lang/Long;

    .line 90
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->fid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->checkRequiredFields()V

    .line 122
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp;

    move-result-object v0

    return-object v0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->fid:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->mid:Ljava/lang/Long;

    .line 100
    return-object p0
.end method

.method public rc(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
    .locals 0
    .parameter "rc"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->rc:Ljava/lang/Integer;

    .line 95
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectRsp$Builder;->time:Ljava/lang/Long;

    .line 108
    return-object p0
.end method
