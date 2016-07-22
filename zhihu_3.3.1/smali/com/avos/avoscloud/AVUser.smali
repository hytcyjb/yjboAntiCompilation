.class public Lcom/avos/avoscloud/AVUser;
.super Lcom/avos/avoscloud/AVObject;
.source "AVUser.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    asm = false
    ignores = {
        "query",
        "password"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    }
.end annotation


# static fields
.field public static final transient CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final FOLLOWEE_TAG:Ljava/lang/String; = "followee"

.field public static final FOLLOWER_TAG:Ljava/lang/String; = "follower"

.field public static final LOG_TAG:Ljava/lang/String; = null

.field public static final SESSION_TOKEN_KEY:Ljava/lang/String; = "sessionToken"

.field private static final accessTokenTag:Ljava/lang/String; = "access_token"

.field private static final anonymousTag:Ljava/lang/String; = "anonymous"

.field private static final authDataTag:Ljava/lang/String; = "authData"

.field private static transient enableAutomatic:Z = false

.field private static final expiresAtTag:Ljava/lang/String; = "expires_at"

.field private static subClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anonymous:Z

.field private email:Ljava/lang/String;

.field private transient facebookToken:Ljava/lang/String;

.field private transient isNew:Z

.field private mobilePhoneNumber:Ljava/lang/String;

.field private transient needTransferFromAnonymousUser:Z

.field private transient password:Ljava/lang/String;

.field private transient qqWeiboToken:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private transient sinaWeiboToken:Ljava/lang/String;

.field private transient twitterToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 28
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    .line 2168
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysUseSubUserClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1927
    sput-object p0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    .line 1928
    return-void
.end method

.method public static associateWithAuthData(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2013
    if-nez p1, :cond_1

    .line 2014
    if-eqz p2, :cond_0

    .line 2015
    const/4 v0, -0x1

    const-string v1, "NULL userInfo."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v1

    .line 2021
    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2022
    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2024
    :cond_2
    const-string v0, "authData"

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2025
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 2026
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method private static authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1931
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1932
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1933
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    const-string v2, "expires_at"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1936
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    return-object v0
.end method

.method public static cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Lcom/avos/avoscloud/AVUser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1913
    :try_start_0
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :goto_0
    return-object v0

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    const-string v1, "ClassCast Exception"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1918
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 126
    const-class v1, Lcom/avos/avoscloud/AVUser;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 129
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 152
    :cond_2
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    monitor-exit v1

    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :try_start_3
    sget-object v2, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :try_start_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 148
    :cond_3
    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2
    .parameter

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1572
    :cond_0
    if-eqz p1, :cond_1

    .line 1573
    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1576
    :cond_1
    const/4 v0, 0x0

    .line 1578
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank username."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_2
    return-object v0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank username and blank mobile phone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 407
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_3
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 410
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_4
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 413
    const-string v1, "smsCode"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_5
    return-object v0
.end method

.method private static currentUserArchivePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/currentUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 122
    return-void
.end method

.method public static dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2032
    if-eqz v0, :cond_0

    .line 2033
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    :cond_0
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2036
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2037
    new-instance v0, Lcom/avos/avoscloud/AVUser$31;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVUser$31;-><init>(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 2053
    :cond_1
    :goto_0
    return-void

    .line 2048
    :cond_2
    if-eqz p2, :cond_1

    .line 2049
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0xce

    const-string v2, "the user object missing a valid session"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 114
    return-void
.end method

.method public static followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1757
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank user objectId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Followee"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1761
    const-string v1, "user"

    const-string v2, "_User"

    invoke-static {v2, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1762
    const-string v1, "followee"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1763
    return-object v0
.end method

.method public static followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1717
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank user objectId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1720
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Follower"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1721
    const-string v1, "user"

    const-string v2, "_User"

    invoke-static {v2, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1722
    const-string v1, "follower"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1723
    return-object v0
.end method

.method public static friendshipQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1812
    new-instance v1, Lcom/avos/avoscloud/AVFriendshipQuery;

    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static friendshipQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1825
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 174
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 210
    :goto_0
    sget-boolean v1, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 211
    invoke-static {p0, v5}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 214
    :cond_0
    return-object v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userArchiveExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    const-class v2, Lcom/avos/avoscloud/AVUser;

    monitor-enter v2

    .line 181
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_4

    .line 183
    const-string v0, "@type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 188
    :try_start_1
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    .line 195
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 208
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    .line 192
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_3
    sget-object v4, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 198
    goto :goto_2

    .line 201
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    .line 202
    invoke-static {v3, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 204
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 205
    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 237
    return-object v0
.end method

.method public static isEnableAutomatic()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 320
    new-instance v1, Lcom/avos/avoscloud/AVUser$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$1;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 337
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 340
    :cond_0
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 356
    return-void
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 376
    return-void
.end method

.method private static logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 420
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 422
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 423
    if-nez v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string v0, "username"

    invoke-virtual {v3, v0, p0, v4}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 427
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$2;

    invoke-direct {v5, v3, p3}, Lcom/avos/avoscloud/AVUser$2;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logInPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "login"

    return-object v0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 804
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    .line 805
    return-void
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 456
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 464
    new-instance v1, Lcom/avos/avoscloud/AVUser$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$3;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 480
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 483
    :cond_0
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 489
    return-void
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 494
    return-void
.end method

.method private static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 498
    invoke-static {v6, p1, v6, p0, v6}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 500
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 501
    if-nez v3, :cond_0

    .line 530
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {v3, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$4;

    invoke-direct {v5, v3, p3}, Lcom/avos/avoscloud/AVUser$4;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 559
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 560
    new-instance v1, Lcom/avos/avoscloud/AVUser$5;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$5;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 576
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 579
    :cond_0
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 594
    return-void
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 609
    return-void
.end method

.method private static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 613
    const-string v0, ""

    invoke-static {v6, v6, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 615
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 616
    if-nez v3, :cond_0

    .line 645
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {v3, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$6;

    invoke-direct {v5, v3, p3}, Lcom/avos/avoscloud/AVUser$6;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginWithAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1952
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V

    .line 1953
    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1965
    if-nez p1, :cond_1

    .line 1966
    if-eqz p2, :cond_0

    .line 1967
    const/4 v0, -0x1

    const-string v1, "NULL userInfo."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1974
    const-string v1, "authData"

    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1976
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "users"

    new-instance v5, Lcom/avos/avoscloud/AVUser$30;

    invoke-direct {v5, p0, p2, p1}, Lcom/avos/avoscloud/AVUser$30;-><init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    move v4, v3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private markAnonymousUserTransfer()V
    .locals 1

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    .line 2166
    :cond_0
    return-void
.end method

.method protected static newAVUser()Lcom/avos/avoscloud/AVUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 795
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 782
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-object v0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    if-eqz p1, :cond_0

    .line 786
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    move-object v0, v1

    .line 791
    goto :goto_0

    .line 788
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v2, "Create user instance failed."

    invoke-direct {v1, v2, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1678
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1679
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1690
    :goto_0
    return-object v0

    .line 1682
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1684
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1685
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1686
    iget-object v4, v0, Lcom/avos/avoscloud/AVFollowResponse;->followers:[Ljava/util/Map;

    const-string v5, "follower"

    invoke-direct {p0, v4, v2, v5}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1687
    iget-object v0, v0, Lcom/avos/avoscloud/AVFollowResponse;->followees:[Ljava/util/Map;

    const-string v4, "followee"

    invoke-direct {p0, v0, v3, v4}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1688
    const-string v0, "follower"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    const-string v0, "followee"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1690
    goto :goto_0
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1667
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1668
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1674
    :goto_0
    return-object v0

    .line 1671
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1673
    iget-object v0, v0, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, v0, v1, p2}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    .line 1674
    goto :goto_0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1695
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 1696
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1697
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    .line 1698
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1701
    :cond_1
    return-void
.end method

.method public static requestEmailVerfiyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1123
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 1124
    return-void
.end method

.method private static requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1128
    .line 1129
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7d

    const-string v2, "Invalid Email"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestEmailVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1152
    :goto_0
    return-void

    .line 1133
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1134
    const-string v1, "email"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestEmailVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$16;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$16;-><init>(Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestEmailVerify(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1107
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 1108
    return-void
.end method

.method public static requestLoginSmsCode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1251
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$19;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVUser$19;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1264
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1267
    :cond_0
    return-void
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1271
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1272
    return-void
.end method

.method private static requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1276
    .line 1278
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1280
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Phone Number"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1304
    :goto_0
    return-void

    .line 1285
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1286
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1288
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestLoginSmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$20;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$20;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestMobilePhoneVerify(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1165
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$17;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVUser$17;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1178
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1181
    :cond_0
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1195
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1207
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1208
    return-void
.end method

.method private static requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1212
    .line 1214
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Phone Number"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1240
    :goto_0
    return-void

    .line 1221
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1222
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1224
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestMobilePhoneVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$18;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$18;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 845
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 846
    return-void
.end method

.method public static requestPasswordResetBySmsCode(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 963
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$12;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVUser$12;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 977
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 980
    :cond_0
    return-void
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 990
    return-void
.end method

.method protected static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 994
    .line 996
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Phone Number"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1022
    :goto_0
    return-void

    .line 1003
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1004
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordResetBySmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$13;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$13;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 864
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 865
    return-void
.end method

.method private static requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 869
    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    const-string v1, "email"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordReset"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$9;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$9;-><init>(Lcom/avos/avoscloud/RequestPasswordResetCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public static resetPasswordBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1035
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$14;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVUser$14;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1048
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1051
    :cond_0
    return-void
.end method

.method public static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1063
    return-void
.end method

.method protected static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1067
    .line 1069
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Verify Code"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1093
    :goto_0
    return-void

    .line 1075
    :cond_1
    const-string v0, "resetPasswordBySmsCode/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1078
    const-string v0, "password"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$15;

    invoke-direct {v5, p3}, Lcom/avos/avoscloud/AVUser$15;-><init>(Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    move v3, p2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEnableAutomatic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    sput-boolean p0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 77
    return-void
.end method

.method private signUp(ZLcom/avos/avoscloud/SignUpCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1440
    if-eqz p1, :cond_1

    .line 1442
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->save()V

    .line 1443
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1449
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVUser$23;

    invoke-direct {v0, p0, p2}, Lcom/avos/avoscloud/AVUser$23;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/SignUpCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 661
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 680
    new-instance v1, Lcom/avos/avoscloud/AVUser$7;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$7;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, p2, v1}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 697
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 700
    :cond_0
    aget-object v0, v0, v2

    return-object v0
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 716
    return-void
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 732
    return-void
.end method

.method private static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 737
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    if-eqz p4, :cond_1

    .line 739
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/4 v1, -0x1

    const-string v2, "SMS Code can\'t be empty"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v6, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    const-string v0, "SMS Code can\'t be empty"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    const-string v0, ""

    invoke-static {v6, v6, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 748
    invoke-static {p3, p4}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 749
    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {v3, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "usersByMobilePhone"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$8;

    invoke-direct {v5, v3, p4}, Lcom/avos/avoscloud/AVUser$8;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private signUpPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    const-string v0, "users"

    return-object v0
.end method

.method private updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 952
    :goto_0
    return-void

    .line 931
    :cond_1
    const-string v0, "users/%s/updatePassword"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 932
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 933
    const-string v2, "old_password"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v2, "new_password"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVUser$11;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/AVUser$11;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v7

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static userArchiveExist()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static userFromQQWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1564
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1565
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1566
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1567
    return-object v0
.end method

.method static userFromSinaWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1557
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1558
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1559
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1560
    return-object v0
.end method

.method public static verifyMobilePhone(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1314
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$21;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVUser$21;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1327
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1330
    :cond_0
    return-void
.end method

.method public static verifyMobilePhoneInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1341
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1342
    return-void
.end method

.method public static verifyMobilePhoneInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1352
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1353
    return-void
.end method

.method private static verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1357
    .line 1359
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Verify Code"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1382
    :goto_0
    return-void

    .line 1365
    :cond_1
    const-string v0, "verifyMobilePhone/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$22;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVUser$22;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    move v3, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public followInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V

    .line 1593
    return-void
.end method

.method public followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/FollowCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1597
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1601
    const-string v0, ""

    .line 1602
    if-eqz p2, :cond_1

    .line 1603
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVUser$25;

    invoke-direct {v4, p0, p3}, Lcom/avos/avoscloud/AVUser$25;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public followeeQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1781
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public followerQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public friendshipQuery()Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1

    .prologue
    .line 1790
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1801
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersAndFolloweesInBackground(Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1883
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1886
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$29;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$29;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1830
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 1833
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$27;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$27;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFolloweesInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1857
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    :goto_0
    return-void

    .line 1860
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$28;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$28;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQQWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQqWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSinaWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected headerMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1550
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    :cond_0
    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobilePhoneVerified()Z
    .locals 1

    .prologue
    .line 1428
    const-string v0, "mobilePhoneVerified"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return v0
.end method

.method protected onDataSynchronized()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1542
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1545
    :cond_0
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 1

    .prologue
    .line 1532
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1534
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1537
    :cond_0
    return-void
.end method

.method protected processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2061
    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2063
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    if-eqz v1, :cond_0

    .line 2064
    if-eqz v0, :cond_3

    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2065
    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    :goto_0
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    .line 2071
    :cond_0
    if-eqz v0, :cond_1

    .line 2072
    const-string v1, "weibo"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2073
    const-string v1, "weibo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2075
    const-string v2, "access_token"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 2079
    :goto_1
    const-string v1, "qq"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2080
    const-string v1, "qq"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2082
    const-string v2, "access_token"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 2086
    :goto_2
    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 2092
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 2093
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2094
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 2102
    :cond_2
    :goto_4
    return-void

    .line 2067
    :cond_3
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    goto :goto_0

    .line 2077
    :cond_4
    iput-object v4, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    goto :goto_1

    .line 2084
    :cond_5
    iput-object v4, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    goto :goto_2

    .line 2089
    :cond_6
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    goto :goto_3

    .line 2097
    :cond_7
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    const-string v1, "qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2098
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    goto :goto_4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 817
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 98
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    .line 99
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 101
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    .line 102
    const-string v0, "mobilePhoneNumber"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method protected setAnonymous(Z)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 278
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    .line 1393
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1394
    return-void
.end method

.method setFacebookToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    .line 1424
    const-string v0, "mobilePhoneNumber"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1425
    return-void
.end method

.method setMobilePhoneVerified(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1432
    const-string v0, "mobileVerified"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1433
    return-void
.end method

.method setNew(Z)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 81
    return-void
.end method

.method setNewFlag(Z)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 223
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 1403
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1404
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 1405
    return-void
.end method

.method setQQWeiboToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1524
    return-void
.end method

.method setQqWeiboToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 67
    return-void
.end method

.method setSessionToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    .line 253
    return-void
.end method

.method setSinaWeiboToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1516
    return-void
.end method

.method setTwitterToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1414
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1415
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 1416
    return-void
.end method

.method public signUp()V
    .locals 2

    .prologue
    .line 1475
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$24;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVUser$24;-><init>(Lcom/avos/avoscloud/AVUser;)V

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1489
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1492
    :cond_0
    return-void
.end method

.method public signUpInBackground(Lcom/avos/avoscloud/SignUpCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1511
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1512
    return-void
.end method

.method public unfollowInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1630
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1634
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVUser$26;

    invoke-direct {v3, p0, p2}, Lcom/avos/avoscloud/AVUser$26;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 897
    new-instance v0, Lcom/avos/avoscloud/AVUser$10;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVUser$10;-><init>(Lcom/avos/avoscloud/AVUser;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 911
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 914
    :cond_0
    return-void
.end method

.method public updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 924
    return-void
.end method
