.class public final Lct/cp;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static a:Lct/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lct/cp;->a:Lct/cp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {p0}, Lct/cp;->b(Landroid/content/Context;)Z

    move-result v7

    .line 115
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 117
    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    .line 122
    :goto_1
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-le v4, v5, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_9

    move v5, v1

    move v6, v1

    .line 134
    :goto_2
    :try_start_2
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 136
    if-eqz v0, :cond_7

    .line 137
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 139
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 141
    if-nez v0, :cond_6

    move v4, v3

    move v3, v2

    .line 157
    :goto_3
    if-nez v7, :cond_8

    move v0, v1

    .line 160
    :goto_4
    if-nez v6, :cond_2

    .line 161
    or-int/lit8 v0, v0, 0x2

    .line 163
    :cond_2
    if-nez v4, :cond_3

    .line 164
    or-int/lit8 v0, v0, 0x4

    .line 166
    :cond_3
    if-nez v5, :cond_4

    .line 167
    or-int/lit8 v0, v0, 0x8

    .line 169
    :cond_4
    if-nez v3, :cond_0

    .line 170
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_5
    move v0, v2

    move v3, v2

    :goto_5
    move v5, v0

    move v6, v3

    .line 131
    goto :goto_2

    .line 129
    :catch_0
    move-exception v0

    move v3, v2

    :goto_6
    move v5, v2

    move v6, v3

    .line 130
    goto :goto_2

    .line 144
    :cond_6
    const-string v4, "gps"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    move v4, v3

    move v3, v0

    .line 147
    goto :goto_3

    :cond_7
    move v3, v2

    move v4, v2

    .line 154
    goto :goto_3

    .line 152
    :catch_1
    move-exception v0

    move v3, v2

    move v4, v2

    .line 153
    goto :goto_3

    .line 129
    :catch_2
    move-exception v0

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v3, v2

    goto :goto_1
.end method

.method public static a()Lct/cp;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lct/cp;->a:Lct/cp;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lct/cp;

    invoke-direct {v0}, Lct/cp;-><init>()V

    sput-object v0, Lct/cp;->a:Lct/cp;

    .line 23
    :cond_0
    sget-object v0, Lct/cp;->a:Lct/cp;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 179
    if-nez v0, :cond_0

    move v0, v1

    .line 186
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
