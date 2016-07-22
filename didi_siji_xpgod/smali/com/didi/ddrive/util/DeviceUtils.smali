.class public Lcom/didi/ddrive/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "permission"
    .parameter "defalutValue"

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 26
    .local v1, permit:Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 31
    :goto_0
    return v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    goto :goto_0
.end method

.method public static getCellID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 38
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/didi/ddrive/util/DeviceUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 41
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 42
    .local v2, location:Landroid/telephony/CellLocation;
    if-eqz v2, :cond_1

    .line 43
    instance-of v4, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 44
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 45
    .local v1, gsm:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .end local v1           #gsm:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #location:Landroid/telephony/CellLocation;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v4

    .line 48
    .restart local v2       #location:Landroid/telephony/CellLocation;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    instance-of v4, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 49
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 50
    .local v0, cdma:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 56
    .end local v0           #cdma:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v2           #location:Landroid/telephony/CellLocation;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDeviceMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 64
    .local v0, mWifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 66
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 68
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 136
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, imsi:Ljava/lang/String;
    return-object v0
.end method

.method public static getLac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 75
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/didi/ddrive/util/DeviceUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 78
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 79
    .local v2, location:Landroid/telephony/CellLocation;
    if-eqz v2, :cond_1

    .line 80
    instance-of v4, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 81
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 82
    .local v1, gsm:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .end local v1           #gsm:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #location:Landroid/telephony/CellLocation;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v4

    .line 85
    .restart local v2       #location:Landroid/telephony/CellLocation;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    instance-of v4, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 86
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 87
    .local v0, cdma:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 93
    .end local v0           #cdma:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v2           #location:Landroid/telephony/CellLocation;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 146
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, mob:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    const-string v0, ""

    .line 150
    :cond_0
    return-object v0
.end method

.method public static getWifiBSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 113
    .local v0, mWifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 115
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 117
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 101
    .local v0, mWifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 103
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
