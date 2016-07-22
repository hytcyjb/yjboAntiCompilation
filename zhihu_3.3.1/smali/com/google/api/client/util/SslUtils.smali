.class public final Lcom/google/api/client/util/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static getDefaultKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getPkixKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    .prologue
    .line 91
    const-string v0, "PKIX"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getPkixTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 1

    .prologue
    .line 73
    const-string v0, "PKIX"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 45
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static getTlsSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 54
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 110
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 111
    return-object p0
.end method

.method public static trustAllHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/google/api/client/util/SslUtils$2;

    invoke-direct {v0}, Lcom/google/api/client/util/SslUtils$2;-><init>()V

    return-object v0
.end method

.method public static trustAllSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/api/client/util/SslUtils$1;

    invoke-direct {v2}, Lcom/google/api/client/util/SslUtils$1;-><init>()V

    aput-object v2, v0, v1

    .line 139
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->getTlsSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v3, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 141
    return-object v1
.end method
