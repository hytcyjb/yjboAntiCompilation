.class public final Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushSvrReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushSvrReq;",
        ">;"
    }
.end annotation


# instance fields
.field public expire_seconds:Ljava/lang/Integer;

.field public log_str:Ljava/lang/String;

.field public old_role:Lcom/didi/frame/protobuffer/OldRole;

.field public phone_num:Ljava/lang/String;

.field public push_msg:Lcom/didi/frame/protobuffer/PushMsg;

.field public push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

.field public role:Ljava/lang/Integer;

.field public sms_msg:Ljava/lang/String;

.field public timeout_to_sms:Ljava/lang/Integer;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushSvrReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 153
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 155
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->phone_num:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 157
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 158
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->user_id:Ljava/lang/Long;

    .line 159
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->expire_seconds:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->expire_seconds:Ljava/lang/Integer;

    .line 160
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->log_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->log_str:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->role:Ljava/lang/Integer;

    .line 162
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->sms_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->sms_msg:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrReq;->timeout_to_sms:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushSvrReq;
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->checkRequiredFields()V

    .line 243
    new-instance v0, Lcom/didi/frame/protobuffer/PushSvrReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushSvrReq;-><init>(Lcom/didi/frame/protobuffer/PushSvrReq$Builder;Lcom/didi/frame/protobuffer/PushSvrReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->build()Lcom/didi/frame/protobuffer/PushSvrReq;

    move-result-object v0

    return-object v0
.end method

.method public expire_seconds(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "expire_seconds"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->expire_seconds:Ljava/lang/Integer;

    .line 208
    return-object p0
.end method

.method public log_str(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "log_str"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->log_str:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public old_role(Lcom/didi/frame/protobuffer/OldRole;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "old_role"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 171
    return-object p0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->phone_num:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public push_msg(Lcom/didi/frame/protobuffer/PushMsg;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "push_msg"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_msg:Lcom/didi/frame/protobuffer/PushMsg;

    .line 187
    return-object p0
.end method

.method public push_strategy(Lcom/didi/frame/protobuffer/PushStrategy;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "push_strategy"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->push_strategy:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 192
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->role:Ljava/lang/Integer;

    .line 221
    return-object p0
.end method

.method public sms_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "sms_msg"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->sms_msg:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public timeout_to_sms(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "timeout_to_sms"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->timeout_to_sms:Ljava/lang/Integer;

    .line 237
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PushSvrReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrReq$Builder;->user_id:Ljava/lang/Long;

    .line 200
    return-object p0
.end method
