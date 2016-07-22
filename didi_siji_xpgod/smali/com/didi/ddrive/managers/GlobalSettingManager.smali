.class public Lcom/didi/ddrive/managers/GlobalSettingManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "GlobalSettingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalSettingManager"

.field private static sInstance:Lcom/didi/ddrive/managers/GlobalSettingManager;


# instance fields
.field private mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/didi/ddrive/managers/GlobalSettingManager;->restoreFromPreference()V

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/didi/ddrive/managers/GlobalSettingManager;Lcom/didi/ddrive/net/http/response/GlobalSetting;)Lcom/didi/ddrive/net/http/response/GlobalSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/ddrive/managers/GlobalSettingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/ddrive/managers/GlobalSettingManager;->restoreFromPreference()V

    return-void
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/GlobalSettingManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/didi/ddrive/managers/GlobalSettingManager;->sInstance:Lcom/didi/ddrive/managers/GlobalSettingManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/didi/ddrive/managers/GlobalSettingManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/GlobalSettingManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/GlobalSettingManager;->sInstance:Lcom/didi/ddrive/managers/GlobalSettingManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/GlobalSettingManager;->sInstance:Lcom/didi/ddrive/managers/GlobalSettingManager;

    return-object v0
.end method

.method private restoreFromPreference()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 49
    .local v0, preference:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getSettings()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, setting:Ljava/lang/String;
    const-class v2, Lcom/didi/ddrive/net/http/response/GlobalSetting;

    invoke-static {v1, v2}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/GlobalSetting;

    iput-object v2, p0, Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;

    .line 51
    return-void
.end method


# virtual methods
.method public getGlobalSetting()Lcom/didi/ddrive/net/http/response/GlobalSetting;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/didi/ddrive/net/http/response/GlobalSetting;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/response/GlobalSetting;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/managers/GlobalSettingManager;->mSettings:Lcom/didi/ddrive/net/http/response/GlobalSetting;

    return-object v0
.end method

.method public queryGlobalSetting(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;-><init>()V

    .line 59
    .local v0, request:Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;
    iput p1, v0, Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;->cityId:I

    .line 60
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    const-string v2, "GlobalSettingManager"

    new-instance v3, Lcom/didi/ddrive/managers/GlobalSettingManager$1;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/GlobalSettingManager$1;-><init>(Lcom/didi/ddrive/managers/GlobalSettingManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/GlobalSetting;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/GlobalSettingManager;->sInstance:Lcom/didi/ddrive/managers/GlobalSettingManager;

    .line 28
    return-void
.end method
