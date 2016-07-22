.class public Lcom/avos/avoscloud/AVAnonymousUtils;
.super Ljava/lang/Object;
.source "AVAnonymousUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anonymousAuthData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "{\"authData\": {\"anonymous\" : {\"id\": \"%s\"}}}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static isLinked(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logIn(Lcom/avos/avoscloud/LogInCallback;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .line 57
    invoke-static {}, Lcom/avos/avoscloud/AVAnonymousUtils;->anonymousAuthData()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const-string v2, "users"

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVAnonymousUtils$1;

    invoke-direct {v4, p0}, Lcom/avos/avoscloud/AVAnonymousUtils$1;-><init>(Lcom/avos/avoscloud/LogInCallback;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 77
    return-void
.end method
