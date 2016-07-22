.class public final Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthSvrQueryUserReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;",
        ">;"
    }
.end annotation


# instance fields
.field public phone_num:Ljava/lang/String;

.field public role:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->phone_num:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->role:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->checkRequiredFields()V

    .line 95
    new-instance v0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->build()Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq;

    move-result-object v0

    return-object v0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->phone_num:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrQueryUserReq$Builder;->role:Ljava/lang/Integer;

    .line 89
    return-object p0
.end method
