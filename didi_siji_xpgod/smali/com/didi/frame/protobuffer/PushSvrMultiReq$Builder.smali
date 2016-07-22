.class public final Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushSvrMultiReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrMultiReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushSvrMultiReq;",
        ">;"
    }
.end annotation


# instance fields
.field public expire_seconds:Ljava/lang/Integer;

.field public log_str:Ljava/lang/String;

.field public push_msg:Lcom/didi/frame/protobuffer/PushMsg;

.field public push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

.field public sms_msg:Ljava/lang/String;

.field public timeout_to_sms:Ljava/lang/Integer;

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 126
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->users:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/PushSvrMultiReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->users:Ljava/util/List;

    .line 128
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->expire_seconds:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->expire_seconds:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->log_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->log_str:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->sms_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->sms_msg:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq;->timeout_to_sms:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushSvrMultiReq;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->checkRequiredFields()V

    .line 189
    new-instance v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->build()Lcom/didi/frame/protobuffer/PushSvrMultiReq;

    move-result-object v0

    return-object v0
.end method

.method public expire_seconds(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "expire_seconds"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->expire_seconds:Ljava/lang/Integer;

    .line 159
    return-object p0
.end method

.method public log_str(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "log_str"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->log_str:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public push_msg(Lcom/didi/frame/protobuffer/PushMsg;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "push_msg"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 146
    return-object p0
.end method

.method public push_strategy(Lcom/didi/frame/protobuffer/PushStrategy;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "push_strategy"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 151
    return-object p0
.end method

.method public sms_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "sms_msg"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->sms_msg:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public timeout_to_sms(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 0
    .parameter "timeout_to_sms"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    .line 183
    return-object p0
.end method

.method public users(Ljava/util/List;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
            ">;)",
            "Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$Builder;->users:Ljava/util/List;

    .line 138
    return-object p0
.end method
