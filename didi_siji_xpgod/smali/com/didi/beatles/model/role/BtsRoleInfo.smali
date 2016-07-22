.class public Lcom/didi/beatles/model/role/BtsRoleInfo;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRoleInfo.java"


# static fields
.field private static sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo; = null

.field private static final serialVersionUID:J = 0x2403ba291c0d5999L


# instance fields
.field private commonInfo:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

.field private driverInfo:Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

.field private passengerInfo:Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

.field private roleType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 29
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->commonInfo:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    .line 30
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->passengerInfo:Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    .line 31
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->driverInfo:Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;
    .locals 3

    .prologue
    .line 45
    sget-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    if-nez v2, :cond_1

    .line 46
    new-instance v2, Lcom/didi/beatles/model/role/BtsRoleInfo;

    invoke-direct {v2}, Lcom/didi/beatles/model/role/BtsRoleInfo;-><init>()V

    sput-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    .line 47
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRole()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    sget-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    .line 59
    :goto_0
    return-object v2

    .line 53
    :cond_0
    :try_start_0
    sget-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    invoke-virtual {v2, v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    sget-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    goto :goto_0
.end method

.method public static newInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfo;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;-><init>()V

    return-object v0
.end method

.method private save(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, js:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserRole(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1           #js:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInstance(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 37
    sput-object p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->sInstance:Lcom/didi/beatles/model/role/BtsRoleInfo;

    .line 38
    return-void
.end method


# virtual methods
.method public getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->commonInfo:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    return-object v0
.end method

.method public getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->driverInfo:Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    return-object v0
.end method

.method public getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->passengerInfo:Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    return-object v0
.end method

.method public getRoleType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->roleType:I

    return v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 67
    invoke-static {p1}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->commonInfo:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    .line 70
    invoke-static {p1}, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->driverInfo:Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    .line 73
    invoke-static {p1}, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfo;->passengerInfo:Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    .line 75
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->save(Lorg/json/JSONObject;)V

    .line 77
    :cond_0
    return-void
.end method
