.class public Lcom/didi/ddrive/managers/DriveAccountManager;
.super Ljava/lang/Object;
.source "DriveAccountManager.java"


# static fields
.field public static final MAX_RETRY_TIME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DriveAccountManager"

.field private static mgr:Lcom/didi/ddrive/managers/DriveAccountManager;


# instance fields
.field public mRetryTime:I

.field public user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/didi/ddrive/managers/DriveAccountManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mgr:Lcom/didi/ddrive/managers/DriveAccountManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    .line 32
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getUserInfo()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mgr:Lcom/didi/ddrive/managers/DriveAccountManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/didi/ddrive/managers/DriveAccountManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mgr:Lcom/didi/ddrive/managers/DriveAccountManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mgr:Lcom/didi/ddrive/managers/DriveAccountManager;

    return-object v0
.end method

.method private userLogin(DDLjava/lang/String;)V
    .locals 5
    .parameter "lng"
    .parameter "lat"
    .parameter "mob"

    .prologue
    .line 60
    iget v2, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    .line 131
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;-><init>()V

    .line 66
    .local v0, dlr:Lcom/didi/ddrive/net/http/request/DriveLoginRequest;
    iput-wide p3, v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->lat:D

    .line 67
    iput-wide p1, v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->lng:D

    .line 68
    iput-object p5, v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->mob:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getTToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->tTicket:Ljava/lang/String;

    .line 72
    iget-object v2, v0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->tTicket:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const/4 v2, 0x1

    new-instance v3, Lcom/didi/ddrive/managers/DriveAccountManager$1;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriveAccountManager$1;-><init>(Lcom/didi/ddrive/managers/DriveAccountManager;)V

    invoke-static {v2, v3}, Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "DriveAccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ticket : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getTToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 92
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "DriveAccountManager"

    new-instance v3, Lcom/didi/ddrive/managers/DriveAccountManager$2;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriveAccountManager$2;-><init>(Lcom/didi/ddrive/managers/DriveAccountManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveUser(Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;)V

    .line 163
    iput-object v1, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 164
    return-void
.end method

.method public getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    return-object v0
.end method

.method public isLogin()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 134
    iget-object v4, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    invoke-virtual {v4}, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "DriveAccountManager"

    const-string v5, "has already login"

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return v3

    .line 138
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v1

    .line 139
    .local v1, mgr:Lcom/didi/ddrive/preferences/KDPreferenceManager;
    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 140
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getUserInfo()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v2

    .line 141
    .local v2, savedUser:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    iput-object v2, p0, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 143
    const-string v4, "DriveAccountManager"

    const-string v5, "has already login"

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    const-string v3, "DriveAccountManager"

    const-string v4, "not login"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)V
    .locals 7
    .parameter "phone"

    .prologue
    .line 43
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v6

    .line 44
    .local v6, point:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v6, :cond_0

    .line 45
    const-string v0, "DriveAccountManager"

    const-string v5, "Can\'t get current location, return without login."

    invoke-static {v0, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-wide v3, v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 49
    .local v3, lat:D
    iget-wide v1, v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 51
    .local v1, lng:D
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v5, p1

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/didi/ddrive/managers/DriveAccountManager;->userLogin(DDLjava/lang/String;)V

    .line 53
    const-string v0, "DriveAccountManager"

    const-string v5, "Start login."

    invoke-static {v0, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "DriveAccountManager"

    const-string v5, "Phone number is empty, can\'t login."

    invoke-static {v0, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reLogin()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, phone:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->login(Ljava/lang/String;)V

    .line 155
    return-void
.end method
