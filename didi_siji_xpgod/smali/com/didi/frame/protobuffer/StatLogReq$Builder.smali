.class public final Lcom/didi/frame/protobuffer/StatLogReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StatLogReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/StatLogReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/StatLogReq;",
        ">;"
    }
.end annotation


# instance fields
.field public event:Ljava/lang/Integer;

.field public gap_us:Ljava/lang/Long;

.field public msg_type:Ljava/lang/Integer;

.field public task_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/StatLogReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/StatLogReq;->event:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->event:Ljava/lang/Integer;

    .line 81
    iget-object v0, p1, Lcom/didi/frame/protobuffer/StatLogReq;->task_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->task_id:Ljava/lang/Long;

    .line 82
    iget-object v0, p1, Lcom/didi/frame/protobuffer/StatLogReq;->msg_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->msg_type:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/didi/frame/protobuffer/StatLogReq;->gap_us:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->gap_us:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/StatLogReq;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->checkRequiredFields()V

    .line 109
    new-instance v0, Lcom/didi/frame/protobuffer/StatLogReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/StatLogReq;-><init>(Lcom/didi/frame/protobuffer/StatLogReq$Builder;Lcom/didi/frame/protobuffer/StatLogReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->build()Lcom/didi/frame/protobuffer/StatLogReq;

    move-result-object v0

    return-object v0
.end method

.method public event(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/StatLogReq$Builder;
    .locals 0
    .parameter "event"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->event:Ljava/lang/Integer;

    .line 88
    return-object p0
.end method

.method public gap_us(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/StatLogReq$Builder;
    .locals 0
    .parameter "gap_us"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->gap_us:Ljava/lang/Long;

    .line 103
    return-object p0
.end method

.method public msg_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/StatLogReq$Builder;
    .locals 0
    .parameter "msg_type"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->msg_type:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method

.method public task_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/StatLogReq$Builder;
    .locals 0
    .parameter "task_id"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/didi/frame/protobuffer/StatLogReq$Builder;->task_id:Ljava/lang/Long;

    .line 93
    return-object p0
.end method
