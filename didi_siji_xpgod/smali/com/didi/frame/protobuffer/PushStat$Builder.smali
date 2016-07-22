.class public final Lcom/didi/frame/protobuffer/PushStat$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushStat;",
        ">;"
    }
.end annotation


# instance fields
.field public gt60s_recv_cnt:Ljava/lang/Integer;

.field public in10s_recv_cnt:Ljava/lang/Integer;

.field public in1s_recv_cnt:Ljava/lang/Integer;

.field public in30s_recv_cnt:Ljava/lang/Integer;

.field public in3s_recv_cnt:Ljava/lang/Integer;

.field public in60s_recv_cnt:Ljava/lang/Integer;

.field public in6s_recv_cnt:Ljava/lang/Integer;

.field public recv_cnt:Ljava/lang/Integer;

.field public send_cnt:Ljava/lang/Integer;

.field public task_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushStat;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 127
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->task_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->task_id:Ljava/lang/Long;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->send_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->send_cnt:Ljava/lang/Integer;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->recv_cnt:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in1s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in1s_recv_cnt:Ljava/lang/Integer;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in3s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in3s_recv_cnt:Ljava/lang/Integer;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in6s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in6s_recv_cnt:Ljava/lang/Integer;

    .line 134
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in10s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in10s_recv_cnt:Ljava/lang/Integer;

    .line 135
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in30s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in30s_recv_cnt:Ljava/lang/Integer;

    .line 136
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->in60s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in60s_recv_cnt:Ljava/lang/Integer;

    .line 137
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushStat;->gt60s_recv_cnt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->gt60s_recv_cnt:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushStat;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushStat$Builder;->checkRequiredFields()V

    .line 193
    new-instance v0, Lcom/didi/frame/protobuffer/PushStat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushStat;-><init>(Lcom/didi/frame/protobuffer/PushStat$Builder;Lcom/didi/frame/protobuffer/PushStat$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushStat$Builder;->build()Lcom/didi/frame/protobuffer/PushStat;

    move-result-object v0

    return-object v0
.end method

.method public gt60s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "gt60s_recv_cnt"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->gt60s_recv_cnt:Ljava/lang/Integer;

    .line 187
    return-object p0
.end method

.method public in10s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in10s_recv_cnt"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in10s_recv_cnt:Ljava/lang/Integer;

    .line 172
    return-object p0
.end method

.method public in1s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in1s_recv_cnt"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in1s_recv_cnt:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public in30s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in30s_recv_cnt"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in30s_recv_cnt:Ljava/lang/Integer;

    .line 177
    return-object p0
.end method

.method public in3s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in3s_recv_cnt"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in3s_recv_cnt:Ljava/lang/Integer;

    .line 162
    return-object p0
.end method

.method public in60s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in60s_recv_cnt"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in60s_recv_cnt:Ljava/lang/Integer;

    .line 182
    return-object p0
.end method

.method public in6s_recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "in6s_recv_cnt"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->in6s_recv_cnt:Ljava/lang/Integer;

    .line 167
    return-object p0
.end method

.method public recv_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "recv_cnt"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->recv_cnt:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public send_cnt(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "send_cnt"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->send_cnt:Ljava/lang/Integer;

    .line 147
    return-object p0
.end method

.method public task_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PushStat$Builder;
    .locals 0
    .parameter "task_id"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushStat$Builder;->task_id:Ljava/lang/Long;

    .line 142
    return-object p0
.end method
