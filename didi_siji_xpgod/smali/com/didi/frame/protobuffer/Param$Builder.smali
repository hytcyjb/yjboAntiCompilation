.class public final Lcom/didi/frame/protobuffer/Param$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Param.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/Param;",
        ">;"
    }
.end annotation


# instance fields
.field public data:Lokio/ByteString;

.field public key:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Param;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Param;->key:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Param$Builder;->key:Lokio/ByteString;

    .line 74
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Param;->data:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Param$Builder;->data:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/Param;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Param$Builder;->checkRequiredFields()V

    .line 90
    new-instance v0, Lcom/didi/frame/protobuffer/Param;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/Param;-><init>(Lcom/didi/frame/protobuffer/Param$Builder;Lcom/didi/frame/protobuffer/Param$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Param$Builder;->build()Lcom/didi/frame/protobuffer/Param;

    move-result-object v0

    return-object v0
.end method

.method public data(Lokio/ByteString;)Lcom/didi/frame/protobuffer/Param$Builder;
    .locals 0
    .parameter "data"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Param$Builder;->data:Lokio/ByteString;

    .line 84
    return-object p0
.end method

.method public key(Lokio/ByteString;)Lcom/didi/frame/protobuffer/Param$Builder;
    .locals 0
    .parameter "key"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Param$Builder;->key:Lokio/ByteString;

    .line 79
    return-object p0
.end method
