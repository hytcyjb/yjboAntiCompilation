.class public Lcom/google/api/client/http/protobuf/ProtoHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "ProtoHttpContent.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private final message:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "application/x-protobuf"

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    .line 61
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getMessage()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/protobuf/ProtoHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/protobuf/ProtoHttpContent;
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpContent;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 71
    return-void
.end method
