.class public final Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DispatchSvrRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DispatchSvrRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DispatchSvrRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public body:Lokio/ByteString;

.field public http_status_code:Ljava/lang/Integer;

.field public sys_code:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DispatchSvrRsp;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->sys_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->sys_code:Ljava/lang/Integer;

    .line 74
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->http_status_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->http_status_code:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DispatchSvrRsp;->body:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->body:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public body(Lokio/ByteString;)Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;
    .locals 0
    .parameter "body"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->body:Lokio/ByteString;

    .line 90
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/DispatchSvrRsp;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->checkRequiredFields()V

    .line 96
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchSvrRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DispatchSvrRsp;-><init>(Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;Lcom/didi/frame/protobuffer/DispatchSvrRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->build()Lcom/didi/frame/protobuffer/DispatchSvrRsp;

    move-result-object v0

    return-object v0
.end method

.method public http_status_code(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;
    .locals 0
    .parameter "http_status_code"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->http_status_code:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method

.method public sys_code(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;
    .locals 0
    .parameter "sys_code"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DispatchSvrRsp$Builder;->sys_code:Ljava/lang/Integer;

    .line 80
    return-object p0
.end method
