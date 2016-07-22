.class public Lcom/zhihu/android/api/model/Oauth2Body;
.super Lcom/google/api/client/json/GenericJson;
.source "Oauth2Body.java"


# static fields
.field private static final TYPE_RESPONSE_CODE:Ljava/lang/String; = "code"


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "app_id"
    .end annotation
.end field

.field public redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "redirect_uri"
    .end annotation
.end field

.field public responseType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 31
    return-void
.end method

.method public static createOauth2Code(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Oauth2Body;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/zhihu/android/api/model/Oauth2Body;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/Oauth2Body;-><init>()V

    .line 45
    iput-object p0, v0, Lcom/zhihu/android/api/model/Oauth2Body;->appId:Ljava/lang/String;

    .line 46
    iput-object p1, v0, Lcom/zhihu/android/api/model/Oauth2Body;->redirectUri:Ljava/lang/String;

    .line 47
    const-string v1, "code"

    iput-object v1, v0, Lcom/zhihu/android/api/model/Oauth2Body;->responseType:Ljava/lang/String;

    .line 48
    return-object v0
.end method
