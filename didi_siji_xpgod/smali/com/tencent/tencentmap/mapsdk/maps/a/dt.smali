.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dt;
.super Ljava/lang/Object;
.source "NetTypeUtil.java"


# static fields
.field public static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dt;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "mContex"

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 71
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, netType:I
    :cond_1
    :goto_0
    const-string v1, ""

    .line 73
    .local v1, netTypeStr:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_1
    return-object v1

    .line 71
    .end local v0           #netType:I
    .end local v1           #netTypeStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    if-nez v4, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    const-string v4, "cmwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3gwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const-string v4, "uniwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    const-string v4, "ctwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 75
    .restart local v0       #netType:I
    .restart local v1       #netTypeStr:Ljava/lang/String;
    :pswitch_0
    const-string v1, "wifi"

    .line 76
    goto :goto_1

    .line 78
    :pswitch_1
    const-string v1, "3gwap"

    .line 79
    goto :goto_1

    .line 81
    :pswitch_2
    const-string v1, "uniwap"

    .line 82
    goto :goto_1

    .line 84
    :pswitch_3
    const-string v1, "cmwap"

    .line 85
    goto :goto_1

    .line 87
    :pswitch_4
    const-string v1, "ctwap"

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
