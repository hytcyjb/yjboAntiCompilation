.class public final Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrCheckObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;",
        ">;"
    }
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public sid:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 74
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->fid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->checkRequiredFields()V

    .line 96
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq;

    move-result-object v0

    return-object v0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->fid:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 80
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrCheckObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method
