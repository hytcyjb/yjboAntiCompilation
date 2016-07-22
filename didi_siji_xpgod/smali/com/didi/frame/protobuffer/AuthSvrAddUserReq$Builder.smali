.class public final Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthSvrAddUserReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;",
        ">;"
    }
.end annotation


# instance fields
.field public phone_num:Ljava/lang/String;

.field public token:Lokio/ByteString;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 86
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->user_id:Ljava/lang/Long;

    .line 88
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->token:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->token:Lokio/ByteString;

    .line 89
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->phone_num:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->checkRequiredFields()V

    .line 119
    new-instance v0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->build()Lcom/didi/frame/protobuffer/AuthSvrAddUserReq;

    move-result-object v0

    return-object v0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->phone_num:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public token(Lokio/ByteString;)Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;
    .locals 0
    .parameter "token"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->token:Lokio/ByteString;

    .line 105
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrAddUserReq$Builder;->user_id:Ljava/lang/Long;

    .line 97
    return-object p0
.end method
