.class public abstract Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;
.super Lcom/avos/avoscloud/java_websocket/AbstractWrappedByteChannel;
.source "AbstractClientProxyChannel.java"


# instance fields
.field protected final proxyHandshake:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/AbstractWrappedByteChannel;-><init>(Ljava/nio/channels/ByteChannel;)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;->buildHandShake()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract buildHandShake()Ljava/lang/String;
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/avos/avoscloud/java_websocket/AbstractWrappedByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;->proxyHandshake:Ljava/nio/ByteBuffer;

    invoke-super {p0, v0}, Lcom/avos/avoscloud/java_websocket/AbstractWrappedByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method
