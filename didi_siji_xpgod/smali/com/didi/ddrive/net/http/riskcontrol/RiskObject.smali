.class public Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;
.super Ljava/lang/Object;
.source "RiskObject.java"


# instance fields
.field public appInSim:Ljava/lang/String;

.field public bsId:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mbRooted:Ljava/lang/String;

.field public mobileMac:Ljava/lang/String;

.field public regionCode:Ljava/lang/String;

.field public routeId:Ljava/lang/String;

.field public routeMac:Ljava/lang/String;

.field public sim:Ljava/lang/String;

.field public utdId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->imei:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->imsi:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->sim:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->routeId:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->routeMac:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->bsId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->regionCode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->mobileMac:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->utdId:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->mbRooted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->appInSim:Ljava/lang/String;

    .line 35
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->imei:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->imsi:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->sim:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->routeId:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getWifiBSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->routeMac:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->mobileMac:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getCellID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->bsId:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/didi/ddrive/util/DeviceUtils;->getLac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->regionCode:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->utdId:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/didi/common/util/Utils;->isRoot()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->mbRooted:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/didi/common/util/Utils;->isRunningInEmualtor()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/http/riskcontrol/RiskObject;->appInSim:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
