.class public Lcom/google/api/client/auth/oauth2/TokenRequest;
.super Lcom/google/api/client/util/GenericData;
.source "TokenRequest.java"


# instance fields
.field clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private grantType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "grant_type"
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private scopes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "scope"
    .end annotation
.end field

.field private tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 95
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 96
    invoke-virtual {p0, p3}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 97
    invoke-virtual {p0, p4}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 98
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object v0
.end method

.method public final executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    new-instance v1, Lcom/google/api/client/auth/oauth2/TokenRequest$1;

    invoke-direct {v1, p0}, Lcom/google/api/client/auth/oauth2/TokenRequest$1;-><init>(Lcom/google/api/client/auth/oauth2/TokenRequest;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Lcom/google/api/client/http/UrlEncodedContent;

    invoke-direct {v2, p0}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v1, v2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 283
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    return-object v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v1, v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/auth/oauth2/TokenResponseException;

    move-result-object v0

    throw v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->grantType:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->scopes:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenServerUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 156
    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->grantType:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 125
    return-object p0
.end method

.method public setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/TokenRequest;"
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->scopes:Ljava/lang/String;

    .line 203
    return-object p0

    .line 202
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenRequest;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 174
    invoke-virtual {p1}, Lcom/google/api/client/http/GenericUrl;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 175
    return-object p0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
