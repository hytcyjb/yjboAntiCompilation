.class public Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/tcp/Channel;


# instance fields
.field private mIp:Ljava/lang/String;

.field private mPort:I

.field private mReader:Ljava/io/InputStream;

.field private mSocket:Ljava/net/Socket;

.field private mWriter:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mIp:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mPort:I

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mIp:Ljava/lang/String;

    iget v3, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    .line 30
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mReader:Ljava/io/InputStream;

    .line 31
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mWriter:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;

    const-string v2, "Can\'t create socket."

    invoke-direct {v1, v2, v0}, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public read([B)I
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mReader:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 52
    .local v1, length:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 53
    new-instance v2, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;

    const-string v3, "EOF. Can not read anymore."

    invoke-direct {v2, v3}, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #length:I
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    new-instance v2, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;

    const-string v3, "Can\'t read."

    invoke-direct {v2, v3, v0}, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 55
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #length:I
    :cond_0
    return v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;->mWriter:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;

    const-string v2, "Can\'t write."

    invoke-direct {v1, v2, v0}, Lcom/didi/ddrive/net/tcp/tcp/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
