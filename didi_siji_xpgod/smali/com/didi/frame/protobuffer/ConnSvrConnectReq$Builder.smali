.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrConnectReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrConnectReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrConnectReq;",
        ">;"
    }
.end annotation


# instance fields
.field public old_role:Lcom/didi/frame/protobuffer/OldRole;

.field public phone_num:Ljava/lang/String;

.field public role:Ljava/lang/Integer;

.field public secret_chap:Lokio/ByteString;

.field public user_agent:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 109
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->phone_num:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 112
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->secret_chap:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->secret_chap:Lokio/ByteString;

    .line 113
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->user_agent:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->user_agent:Lokio/ByteString;

    .line 114
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->role:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrConnectReq;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->checkRequiredFields()V

    .line 160
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrConnectReq;

    move-result-object v0

    return-object v0
.end method

.method public old_role(Lcom/didi/frame/protobuffer/OldRole;)Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    .locals 0
    .parameter "old_role"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 130
    return-object p0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->phone_num:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->role:Ljava/lang/Integer;

    .line 154
    return-object p0
.end method

.method public secret_chap(Lokio/ByteString;)Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    .locals 0
    .parameter "secret_chap"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->secret_chap:Lokio/ByteString;

    .line 138
    return-object p0
.end method

.method public user_agent(Lokio/ByteString;)Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;
    .locals 0
    .parameter "user_agent"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectReq$Builder;->user_agent:Lokio/ByteString;

    .line 146
    return-object p0
.end method
