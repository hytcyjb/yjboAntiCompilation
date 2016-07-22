.class public final Lcom/google/api/client/http/javanet/NetHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "NetHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/javanet/NetHttpTransport$Builder;
    }
.end annotation


# static fields
.field private static final SUPPORTED_METHODS:[Ljava/lang/String;


# instance fields
.field private final connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/http/javanet/NetHttpTransport;->SUPPORTED_METHODS:[Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/google/api/client/http/javanet/NetHttpTransport;->SUPPORTED_METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    move-object v0, v1

    check-cast v0, Lcom/google/api/client/http/javanet/ConnectionFactory;

    invoke-direct {p0, v0, v1, v1}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 120
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;

    invoke-direct {p1}, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    .line 122
    iput-object p2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 123
    iput-object p3, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 124
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;-><init>(Ljava/net/Proxy;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>(Lcom/google/api/client/http/javanet/ConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected bridge synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HTTP method %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->connectionFactory:Lcom/google/api/client/http/javanet/ConnectionFactory;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/javanet/ConnectionFactory;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 140
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 141
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 148
    :cond_1
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public supportsMethod(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/google/api/client/http/javanet/NetHttpTransport;->SUPPORTED_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
