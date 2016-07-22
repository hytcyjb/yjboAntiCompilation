.class public Lcom/zhihu/android/api/model/Authorisation;
.super Lcom/google/api/client/json/GenericJson;
.source "Authorisation.java"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field public appkey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "appkey"
    .end annotation
.end field

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field public digits:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "digits"
    .end annotation
.end field

.field public expiresAt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expires_at"
    .end annotation
.end field

.field public grantType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "grant_type"
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "password"
    .end annotation
.end field

.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field

.field public signature:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "signature"
    .end annotation
.end field

.field public socialId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "social_id"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation
.end field

.field public timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "timestamp"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "username"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 37
    return-void
.end method

.method private static createBaseAuthorisation(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Lcom/zhihu/android/api/model/Authorisation;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v1, "8d5227e0aaaa4797a763ac64e0c3b8"

    .line 121
    const-string v0, "ecbefbf6b17e47ecb9035107866380"

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    const-string v4, "debug_api_environment"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const-string v4, "debug_client_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v4, "debug_client_secret"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    new-instance v3, Lcom/zhihu/android/api/model/Authorisation;

    invoke-direct {v3}, Lcom/zhihu/android/api/model/Authorisation;-><init>()V

    .line 130
    iput-object v1, v3, Lcom/zhihu/android/api/model/Authorisation;->clientId:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/zhihu/android/base/util/SystemUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/zhihu/android/api/model/Authorisation;->source:Ljava/lang/String;

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lcom/zhihu/android/api/model/Authorisation;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhihu/android/api/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/zhihu/android/api/model/Authorisation;->signature:Ljava/lang/String;

    .line 133
    iput-object v2, v3, Lcom/zhihu/android/api/model/Authorisation;->timestamp:Ljava/lang/String;

    .line 135
    return-object v3
.end method

.method public static createDigit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->DIGITS:Lcom/zhihu/android/api/util/GrantType;

    invoke-static {p0, v0}, Lcom/zhihu/android/api/model/Authorisation;->createBaseAuthorisation(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->DIGITS:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/Authorisation;->grantType:Ljava/lang/String;

    .line 91
    iput-object p1, v0, Lcom/zhihu/android/api/model/Authorisation;->username:Ljava/lang/String;

    .line 92
    iput-object p2, v0, Lcom/zhihu/android/api/model/Authorisation;->digits:Ljava/lang/String;

    .line 93
    return-object v0
.end method

.method public static createPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->PASSWORD:Lcom/zhihu/android/api/util/GrantType;

    invoke-static {p0, v0}, Lcom/zhihu/android/api/model/Authorisation;->createBaseAuthorisation(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->PASSWORD:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/Authorisation;->grantType:Ljava/lang/String;

    .line 82
    iput-object p1, v0, Lcom/zhihu/android/api/model/Authorisation;->username:Ljava/lang/String;

    .line 83
    iput-object p2, v0, Lcom/zhihu/android/api/model/Authorisation;->password:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public static createRefreshToken(Landroid/content/Context;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->REFRESH_TOKEN:Lcom/zhihu/android/api/util/GrantType;

    invoke-static {p0, v0}, Lcom/zhihu/android/api/model/Authorisation;->createBaseAuthorisation(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->REFRESH_TOKEN:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/Authorisation;->grantType:Ljava/lang/String;

    .line 113
    iput-object p1, v0, Lcom/zhihu/android/api/model/Authorisation;->refreshToken:Ljava/lang/String;

    .line 115
    return-object v0
.end method

.method public static createSocial(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/zhihu/android/api/model/Authorisation;->createBaseAuthorisation(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/Authorisation;->grantType:Ljava/lang/String;

    .line 100
    iput-object p2, v0, Lcom/zhihu/android/api/model/Authorisation;->socialId:Ljava/lang/String;

    .line 101
    iput-object p3, v0, Lcom/zhihu/android/api/model/Authorisation;->appkey:Ljava/lang/String;

    .line 102
    iput-object p4, v0, Lcom/zhihu/android/api/model/Authorisation;->accessToken:Ljava/lang/String;

    .line 103
    iput-object p5, v0, Lcom/zhihu/android/api/model/Authorisation;->refreshToken:Ljava/lang/String;

    .line 104
    iput-object p6, v0, Lcom/zhihu/android/api/model/Authorisation;->expiresAt:Ljava/lang/String;

    .line 106
    return-object v0
.end method
