.class public final Lcom/avos/avoscloud/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

.field private handshake:Lcom/avos/avoscloud/okhttp/Handshake;

.field private httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

.field private idleStartTimeNs:J

.field private owner:Ljava/lang/Object;

.field private final pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

.field private protocol:Lcom/avos/avoscloud/okhttp/Protocol;

.field private recycleCount:I

.field private final route:Lcom/avos/avoscloud/okhttp/Route;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Route;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 98
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    .line 99
    return-void
.end method

.method private connectSocket(IIILcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 199
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 201
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0, p2, p3, p4}, Lcom/avos/avoscloud/okhttp/Connection;->connectTls(IILcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->SPDY_3:Lcom/avos/avoscloud/okhttp/Protocol;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v1, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 215
    :goto_1
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    goto :goto_1
.end method

.method private connectTls(IILcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/Connection;->createTunnel(II)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getAddress()Lcom/avos/avoscloud/okhttp/Address;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriPort()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :try_start_1
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/avos/avoscloud/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 241
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v4

    .line 244
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 245
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 246
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 267
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    .line 271
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 274
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v0

    .line 253
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getCertificatePinner()Lcom/avos/avoscloud/okhttp/CertificatePinner;

    move-result-object v5

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 257
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_4
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 261
    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/Connection;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    .line 262
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Protocol;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    if-eqz v0, :cond_5

    .line 271
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 277
    :cond_5
    return-void

    .line 262
    :cond_6
    :try_start_4
    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 268
    :cond_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private createTunnel(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 286
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/Connection;->createTunnelRequest()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    .line 287
    new-instance v4, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-direct {v4, v1, p0, v5}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;Ljava/net/Socket;)V

    .line 288
    invoke-virtual {v4, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    .line 289
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v1

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " HTTP/1.1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->flush()V

    .line 294
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->readResponse()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v6

    .line 297
    invoke-static {v6}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Response;)J

    move-result-wide v0

    .line 298
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    move-wide v0, v2

    .line 301
    :cond_1
    invoke-virtual {v4, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    .line 302
    const v1, 0x7fffffff

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v7}, Lcom/avos/avoscloud/okhttp/internal/Util;->skipAll(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 303
    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Source;->close()V

    .line 305
    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 323
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :sswitch_0
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->bufferSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 312
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :sswitch_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getAddress()Lcom/avos/avoscloud/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getAuthenticator()Lcom/avos/avoscloud/okhttp/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/avos/avoscloud/okhttp/Authenticator;Lcom/avos/avoscloud/okhttp/Response;Ljava/net/Proxy;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    return-void

    .line 305
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lcom/avos/avoscloud/okhttp/Request;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget v1, v1, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port(I)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->build()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Lcom/avos/avoscloud/okhttp/HttpUrl;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Host"

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->hostHeader(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearOwner()Z
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    monitor-exit v1

    .line 129
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    if-eq v0, p1, :cond_2

    .line 141
    monitor-exit v1

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method connect(IIILjava/util/List;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v3, p4}, Lcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    .line 160
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Route;->getAddress()Lcom/avos/avoscloud/okhttp/Address;

    move-result-object v5

    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEARTEXT communication not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 170
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 173
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/avos/avoscloud/okhttp/Connection;->connectSocket(IIILcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-nez v2, :cond_6

    .line 170
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v6, :cond_3

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v6, :cond_1

    :cond_3
    invoke-virtual {v5}, Lcom/avos/avoscloud/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-static {v6}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 176
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 177
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    .line 178
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 179
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    .line 180
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    .line 182
    if-nez v0, :cond_5

    .line 183
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 188
    :goto_2
    if-eqz p5, :cond_4

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    :cond_4
    throw v0

    .line 185
    :cond_5
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_2

    .line 193
    :cond_6
    return-void

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method connectAndSetOwner(Lcom/avos/avoscloud/okhttp/OkHttpClient;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    move-result-object v4

    .line 359
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v2

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v3

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/Connection;->connect(IIILjava/util/List;Z)V

    .line 361
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getConnectionPool()Lcom/avos/avoscloud/okhttp/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->share(Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->routeDatabase()Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/RouteDatabase;->connected(Lcom/avos/avoscloud/okhttp/Route;)V

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/Connection;->setTimeouts(II)V

    .line 368
    return-void
.end method

.method public getHandshake()Lcom/avos/avoscloud/okhttp/Handshake;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    return-object v0
.end method

.method getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->idleStartTimeNs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProtocol()Lcom/avos/avoscloud/okhttp/Protocol;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_1:Lcom/avos/avoscloud/okhttp/Protocol;

    goto :goto_0
.end method

.method public getRoute()Lcom/avos/avoscloud/okhttp/Route;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method incrementRecycleCount()V
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->recycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->recycleCount:I

    .line 476
    return-void
.end method

.method isAlive()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFramed()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIdle()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadable()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->isReadable()Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method newTransport(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okhttp/internal/http/Transport;
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/FramedTransport;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/okhttp/internal/http/FramedTransport;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpTransport;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V

    goto :goto_0
.end method

.method rawSink()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->rawSink()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method rawSource()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->rawSource()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method recycleCount()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->recycleCount:I

    return v0
.end method

.method resetIdleStartTime()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->framedConnection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "framedConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->idleStartTimeNs:J

    .line 416
    return-void
.end method

.method setOwner(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Connection;->owner:Ljava/lang/Object;

    .line 112
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setTimeouts(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    if-eqz v0, :cond_1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->httpConnection:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    .line 472
    :cond_1
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->address:Lcom/avos/avoscloud/okhttp/Address;

    iget v1, v1, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->route:Lcom/avos/avoscloud/okhttp/Route;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Connection;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Connection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
