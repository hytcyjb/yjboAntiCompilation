.class public Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
.super Lcom/google/api/client/auth/oauth2/TokenRequest;
.source "ClientCredentialsTokenRequest.java"


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const-string v0, "client_credentials"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/ClientCredentialsTokenRequest;

    move-result-object v0

    return-object v0
.end method
