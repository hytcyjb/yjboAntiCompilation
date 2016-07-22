.class public final Lcom/avos/avoscloud/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

.field final certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lcom/avos/avoscloud/okhttp/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/avos/avoscloud/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/avos/avoscloud/okhttp/CertificatePinner;Lcom/avos/avoscloud/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/avos/avoscloud/okhttp/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/avos/avoscloud/okhttp/CertificatePinner;",
            "Lcom/avos/avoscloud/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    .line 58
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriPort <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput p2, p0, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    .line 61
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/Address;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    .line 64
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-nez p8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    iput-object p8, p0, Lcom/avos/avoscloud/okhttp/Address;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    .line 70
    if-nez p10, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_5
    invoke-static {p10}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->protocols:Ljava/util/List;

    .line 73
    if-nez p11, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_6
    invoke-static {p11}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 76
    if-nez p12, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_7
    iput-object p12, p0, Lcom/avos/avoscloud/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 79
    iput-object p9, p0, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 80
    iput-object p5, p0, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    iput-object p6, p0, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput-object p7, p0, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 157
    instance-of v1, p1, Lcom/avos/avoscloud/okhttp/Address;

    if-eqz v1, :cond_0

    .line 158
    check-cast p1, Lcom/avos/avoscloud/okhttp/Address;

    .line 159
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    iget v2, p1, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    iget-object v2, p1, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public getAuthenticator()Lcom/avos/avoscloud/okhttp/Authenticator;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    return-object v0
.end method

.method public getCertificatePinner()Lcom/avos/avoscloud/okhttp/CertificatePinner;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getDns()Lcom/avos/avoscloud/okhttp/Dns;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUriPort()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 175
    .line 176
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 177
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/avos/avoscloud/okhttp/Address;->uriPort:I

    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->dns:Lcom/avos/avoscloud/okhttp/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->authenticator:Lcom/avos/avoscloud/okhttp/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Address;->certificatePinner:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 187
    return v0

    :cond_1
    move v0, v1

    .line 183
    goto :goto_0

    :cond_2
    move v0, v1

    .line 184
    goto :goto_1

    :cond_3
    move v0, v1

    .line 185
    goto :goto_2
.end method
