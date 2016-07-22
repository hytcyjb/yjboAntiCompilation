.class Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;
.super Ljava/lang/Object;
.source "Oauth2AuthorizeCodeActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a_(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhihu/android/bumblebee/b/c",
        "<",
        "Lcom/zhihu/android/api/model/AuthorizationCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;->a:Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/AuthorizationCode;)V
    .locals 4
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;->a:Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    const/16 v1, 0x101

    iget-object v2, p1, Lcom/zhihu/android/api/model/AuthorizationCode;->authorizationCode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x103

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;->a:Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    const/16 v1, 0x103

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/android/api/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;->a:Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    check-cast p1, Lcom/zhihu/android/api/model/AuthorizationCode;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;->a(Lcom/zhihu/android/api/model/AuthorizationCode;)V

    return-void
.end method
