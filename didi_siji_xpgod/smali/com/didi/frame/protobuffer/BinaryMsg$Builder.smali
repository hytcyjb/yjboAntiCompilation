.class public final Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BinaryMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/BinaryMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/BinaryMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public payload:Lokio/ByteString;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/BinaryMsg;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BinaryMsg;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type:Ljava/lang/Integer;

    .line 72
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BinaryMsg;->payload:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/BinaryMsg;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->checkRequiredFields()V

    .line 94
    new-instance v0, Lcom/didi/frame/protobuffer/BinaryMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/BinaryMsg;-><init>(Lcom/didi/frame/protobuffer/BinaryMsg$Builder;Lcom/didi/frame/protobuffer/BinaryMsg$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v0

    return-object v0
.end method

.method public payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .locals 0
    .parameter "payload"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload:Lokio/ByteString;

    .line 88
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type:Ljava/lang/Integer;

    .line 80
    return-object p0
.end method
