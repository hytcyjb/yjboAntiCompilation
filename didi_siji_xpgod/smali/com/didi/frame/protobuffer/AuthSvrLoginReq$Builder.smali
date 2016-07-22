.class public final Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthSvrLoginReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AuthSvrLoginReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AuthSvrLoginReq;",
        ">;"
    }
.end annotation


# instance fields
.field public phone_num:Ljava/lang/String;

.field public random_msg:Lokio/ByteString;

.field public role:Ljava/lang/Integer;

.field public secret_chap:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrLoginReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 95
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->phone_num:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->secret_chap:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->secret_chap:Lokio/ByteString;

    .line 98
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->random_msg:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->random_msg:Lokio/ByteString;

    .line 99
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->role:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AuthSvrLoginReq;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->checkRequiredFields()V

    .line 136
    new-instance v0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrLoginReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->build()Lcom/didi/frame/protobuffer/AuthSvrLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->phone_num:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public random_msg(Lokio/ByteString;)Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
    .locals 0
    .parameter "random_msg"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->random_msg:Lokio/ByteString;

    .line 125
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->role:Ljava/lang/Integer;

    .line 130
    return-object p0
.end method

.method public secret_chap(Lokio/ByteString;)Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;
    .locals 0
    .parameter "secret_chap"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginReq$Builder;->secret_chap:Lokio/ByteString;

    .line 117
    return-object p0
.end method
