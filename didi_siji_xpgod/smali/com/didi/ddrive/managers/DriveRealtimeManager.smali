.class public Lcom/didi/ddrive/managers/DriveRealtimeManager;
.super Ljava/lang/Object;
.source "DriveRealtimeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mgr:Lcom/didi/ddrive/managers/DriveRealtimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;->mgr:Lcom/didi/ddrive/managers/DriveRealtimeManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DriveRealtimeManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;->mgr:Lcom/didi/ddrive/managers/DriveRealtimeManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/DriveRealtimeManager;->mgr:Lcom/didi/ddrive/managers/DriveRealtimeManager;

    return-object v0
.end method


# virtual methods
.method public getArroundDrives(Ljava/lang/String;Ljava/lang/String;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V
    .locals 9
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveAroundResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, httpListener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<Lcom/didi/ddrive/net/http/response/DriveAroundResponse;>;"
    const-wide/16 v0, 0x0

    .line 115
    .local v0, douLat:D
    const-wide/16 v2, 0x0

    .line 117
    .local v2, douLng:D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 118
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 122
    new-instance v6, Lcom/didi/ddrive/net/http/request/DriveAroundRequest;

    invoke-direct {v6}, Lcom/didi/ddrive/net/http/request/DriveAroundRequest;-><init>()V

    .line 123
    .local v6, request:Lcom/didi/ddrive/net/http/request/DriveAroundRequest;
    iput-wide v0, v6, Lcom/didi/ddrive/net/http/request/DriveAroundRequest;->lat:D

    .line 124
    iput-wide v2, v6, Lcom/didi/ddrive/net/http/request/DriveAroundRequest;->lng:D

    .line 126
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v5

    .line 127
    .local v5, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v7, Lcom/didi/ddrive/managers/DriveRealtimeManager;->TAG:Ljava/lang/String;

    const-class v8, Lcom/didi/ddrive/net/http/response/DriveAroundResponse;

    invoke-virtual {v5, v7, v6, p3, v8}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 129
    .end local v5           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    .end local v6           #request:Lcom/didi/ddrive/net/http/request/DriveAroundRequest;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v4

    .line 120
    .local v4, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getSupportCity(Landroid/content/Context;DD)V
    .locals 5
    .parameter "context"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 47
    new-instance v1, Lcom/didi/ddrive/net/http/request/CitySupportRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/CitySupportRequest;-><init>()V

    .line 48
    .local v1, request:Lcom/didi/ddrive/net/http/request/CitySupportRequest;
    iput-wide p2, v1, Lcom/didi/ddrive/net/http/request/CitySupportRequest;->lat:D

    .line 49
    iput-wide p4, v1, Lcom/didi/ddrive/net/http/request/CitySupportRequest;->lng:D

    .line 51
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/ddrive/net/http/request/CitySupportRequest;->phone:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 55
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v2, Lcom/didi/ddrive/managers/DriveRealtimeManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/didi/ddrive/managers/DriveRealtimeManager$1;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriveRealtimeManager$1;-><init>(Lcom/didi/ddrive/managers/DriveRealtimeManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 107
    return-void
.end method

.method public loadDriverInfo(J)V
    .locals 5
    .parameter "did"

    .prologue
    .line 135
    new-instance v1, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;-><init>()V

    .line 136
    .local v1, request:Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;
    iput-wide p1, v1, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;->did:J

    .line 137
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 138
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v2, Lcom/didi/ddrive/managers/DriveRealtimeManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/didi/ddrive/managers/DriveRealtimeManager$2;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriveRealtimeManager$2;-><init>(Lcom/didi/ddrive/managers/DriveRealtimeManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 158
    return-void
.end method
