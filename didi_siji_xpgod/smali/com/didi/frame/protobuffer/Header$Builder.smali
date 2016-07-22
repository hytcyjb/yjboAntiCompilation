.class public final Lcom/didi/frame/protobuffer/Header$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/Header;",
        ">;"
    }
.end annotation


# instance fields
.field public auth_user_id:Ljava/lang/Long;

.field public log_id:Lokio/ByteString;

.field public msg_id:Ljava/lang/Long;

.field public timestamp:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;

.field public user_agent:Lcom/didi/frame/protobuffer/UserAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Header;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 105
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->type:Ljava/lang/Integer;

    .line 107
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->msg_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->msg_id:Ljava/lang/Long;

    .line 108
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->auth_user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->auth_user_id:Ljava/lang/Long;

    .line 109
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->log_id:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->log_id:Lokio/ByteString;

    .line 110
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    .line 111
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Header;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Header$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public auth_user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "auth_user_id"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->auth_user_id:Ljava/lang/Long;

    .line 132
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/Header;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Header$Builder;->checkRequiredFields()V

    .line 156
    new-instance v0, Lcom/didi/frame/protobuffer/Header;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/Header;-><init>(Lcom/didi/frame/protobuffer/Header$Builder;Lcom/didi/frame/protobuffer/Header$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Header$Builder;->build()Lcom/didi/frame/protobuffer/Header;

    move-result-object v0

    return-object v0
.end method

.method public log_id(Lokio/ByteString;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "log_id"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->log_id:Lokio/ByteString;

    .line 137
    return-object p0
.end method

.method public msg_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->msg_id:Ljava/lang/Long;

    .line 127
    return-object p0
.end method

.method public timestamp(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->timestamp:Ljava/lang/Long;

    .line 150
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->type:Ljava/lang/Integer;

    .line 119
    return-object p0
.end method

.method public user_agent(Lcom/didi/frame/protobuffer/UserAgent;)Lcom/didi/frame/protobuffer/Header$Builder;
    .locals 0
    .parameter "user_agent"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Header$Builder;->user_agent:Lcom/didi/frame/protobuffer/UserAgent;

    .line 145
    return-object p0
.end method
