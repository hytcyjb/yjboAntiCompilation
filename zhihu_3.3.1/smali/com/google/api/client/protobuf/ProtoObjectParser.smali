.class public Lcom/google/api/client/protobuf/ProtoObjectParser;
.super Ljava/lang/Object;
.source "ProtoObjectParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1, p3}, Lcom/google/api/client/protobuf/ProtocolBuffers;->parseAndClose(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    instance-of v0, p3, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 57
    check-cast p3, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/protobuf/ProtoObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dataType must be of Class<? extends MessageList>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "protocol buffers must be read from a binary stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "protocol buffers must be read from a binary stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
