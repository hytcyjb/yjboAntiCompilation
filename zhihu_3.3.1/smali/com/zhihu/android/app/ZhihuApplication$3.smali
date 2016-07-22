.class Lcom/zhihu/android/app/ZhihuApplication$3;
.super Ljava/lang/Object;
.source "ZhihuApplication.java"

# interfaces
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ZhihuApplication;->initialize(Lcom/google/api/client/http/HttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ZhihuApplication;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ZhihuApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/zhihu/android/app/ZhihuApplication$3;->a:Lcom/zhihu/android/app/ZhihuApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getAuthorizationAsList()Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https?://([0-9a-zA-Z][0-9a-zA-Z_\\-\\.]*\\.)?zhihu\\.com(/?|/.*)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/util/List;)Lcom/google/api/client/http/HttpHeaders;

    .line 266
    :cond_0
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
