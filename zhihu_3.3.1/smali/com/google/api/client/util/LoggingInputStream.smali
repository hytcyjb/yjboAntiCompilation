.class public Lcom/google/api/client/util/LoggingInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggingInputStream.java"


# instance fields
.field private final logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    new-instance v0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 67
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 68
    return-void
.end method

.method public final getLogStream()Lcom/google/api/client/util/LoggingByteArrayOutputStream;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    return-object v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write(I)V

    .line 52
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 58
    if-lez v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write([BII)V

    .line 61
    :cond_0
    return v0
.end method
