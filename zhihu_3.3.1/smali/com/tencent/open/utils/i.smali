.class public Lcom/tencent/open/utils/i;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/i;->a:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/i;->c:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/i;->d:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/tencent/open/utils/i;->e:I

    .line 796
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/tencent/open/utils/i;->g:Ljava/lang/String;

    return-void
.end method

.method private static a(I)C
    .locals 2
    .parameter

    .prologue
    .line 716
    and-int/lit8 v0, p0, 0xf

    .line 718
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 719
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 723
    :goto_0
    return v0

    .line 721
    :cond_0
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    if-eqz p0, :cond_1

    .line 170
    :try_start_0
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 172
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 173
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 174
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const/4 v0, 0x0

    .line 181
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1040
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1044
    const-string v1, "platform"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v1, "result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v1, "tmcost"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v1, "rate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "uin"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v1, "appid"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v1, "share_type"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v1, "detail"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v1, "os_ver"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v1, "network"

    invoke-static {}, Lcom/tencent/open/utils/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v1, "apn"

    invoke-static {}, Lcom/tencent/open/utils/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v1, "model_name"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v1, "sdk_ver"

    const-string v2, "2.9.4.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v1, "packagename"

    invoke-static {}, Lcom/tencent/open/utils/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v1, "app_ver"

    invoke-static {}, Lcom/tencent/open/utils/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/utils/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 999
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1000
    const-string v1, "openid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v1, "report_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v1, "act_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v1, "via"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v1, "result"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v1, "type"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v1, "login_status"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v1, "need_user_auth"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v1, "to_uin"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v1, "call_source"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v1, "to_type"

    invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 516
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 518
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 519
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 521
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    const-string v1, "openSDK_LOG.Util"

    const-string v2, "getUserIp SocketException "

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p0, :cond_0

    .line 125
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 132
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_2

    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 136
    :cond_2
    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 137
    if-eqz v1, :cond_3

    move v1, v2

    .line 142
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_5

    move v0, v2

    .line 145
    :goto_3
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 146
    if-nez v0, :cond_4

    .line 147
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 140
    :cond_3
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_5
    move v1, v0

    .line 162
    goto :goto_1

    .line 154
    :cond_6
    if-eqz v1, :cond_7

    move v1, v2

    .line 159
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_5

    .line 157
    :cond_7
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 163
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    const-string p0, ""

    .line 958
    :cond_0
    :goto_0
    return-object p0

    .line 931
    :cond_1
    const-string v1, "UTF-8"

    .line 932
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 936
    :goto_1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_0

    move v1, v0

    .line 941
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 942
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    .line 943
    add-int v3, v1, v2

    if-le v3, p1, :cond_3

    .line 944
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 945
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 949
    goto :goto_0

    .line 951
    :cond_3
    add-int/2addr v1, v2

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 955
    :catch_0
    move-exception v0

    .line 956
    :goto_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructMsg sSubString error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :catch_1
    move-exception v1

    move-object p0, v0

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object p2, v1

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 778
    if-nez p0, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 790
    :goto_0
    return-object v0

    .line 781
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 783
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 784
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p0, :cond_0

    .line 186
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :cond_0
    if-eqz p1, :cond_2

    .line 189
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 191
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 194
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v4, "openSDK_LOG.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeUrlToJson has exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_2
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 641
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 649
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 681
    :try_start_0
    const-string v2, "com.tencent.mobileqq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 682
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "4.1"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 683
    :catch_0
    move-exception v1

    .line 684
    const-string v2, "openSDK_LOG.Util"

    const-string v3, "NameNotFoundException"

    invoke-static {v2, v3, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 584
    .line 587
    :try_start_0
    invoke-static {p0}, Lcom/tencent/open/utils/i;->f(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result v1

    .line 588
    if-eqz v1, :cond_0

    .line 589
    :try_start_1
    const-string v2, "com.tencent.mtt"

    const-string v3, "com.tencent.mtt.MainActivity"

    invoke-static {p0, v2, v3, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 592
    :cond_0
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-static {p0, v2, v3, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 598
    :goto_2
    if-eqz v1, :cond_1

    .line 601
    :try_start_2
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-static {p0, v1, v2, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 603
    :catch_1
    move-exception v1

    .line 606
    :try_start_3
    const-string v1, "com.google.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-static {p0, v1, v2, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 608
    :catch_2
    move-exception v1

    .line 610
    :try_start_4
    const-string v1, "com.android.chrome"

    const-string v2, "com.google.android.apps.chrome.Main"

    invoke-static {p0, v1, v2, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 612
    :catch_3
    move-exception v1

    goto :goto_1

    .line 620
    :cond_1
    :try_start_5
    const-string v1, "com.google.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-static {p0, v1, v2, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 622
    :catch_4
    move-exception v1

    .line 624
    :try_start_6
    const-string v1, "com.android.chrome"

    const-string v2, "com.google.android.apps.chrome.Main"

    invoke-static {p0, v1, v2, p1}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 626
    :catch_5
    move-exception v1

    goto :goto_1

    .line 596
    :catch_6
    move-exception v1

    move v1, v0

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 213
    const-string v0, "auth://"

    const-string v1, "http://"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 869
    if-eqz p0, :cond_0

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1102
    if-nez p0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1106
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1107
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    .line 1108
    sget-object v1, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/open/utils/i;->a:Ljava/lang/String;

    .line 1109
    sget-object v1, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    sget-object v2, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/open/utils/i;->d:Ljava/lang/String;

    .line 1110
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/tencent/open/utils/i;->e:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    const-string v1, "openSDK_LOG.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :catch_1
    move-exception v0

    .line 1115
    const-string v1, "openSDK_LOG.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 759
    if-eqz v1, :cond_0

    .line 760
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 762
    :cond_0
    if-eqz v0, :cond_1

    .line 763
    const/4 v0, 0x1

    .line 766
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1120
    if-nez p0, :cond_0

    .line 1121
    const-string v0, ""

    .line 1124
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/open/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1124
    sget-object v0, Lcom/tencent/open/utils/i;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter

    .prologue
    .line 226
    const-string v0, "auth://"

    const-string v1, "http://"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 974
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 975
    if-nez v0, :cond_1

    move v1, v2

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 979
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 980
    if-eqz v3, :cond_0

    move v0, v1

    .line 981
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 982
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 983
    goto :goto_0

    .line 981
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1071
    if-nez p0, :cond_0

    .line 1072
    const-string v0, ""

    .line 1098
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1076
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1079
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1081
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1082
    if-eqz v1, :cond_2

    .line 1083
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1084
    if-nez v0, :cond_1

    .line 1085
    const-string v0, ""

    goto :goto_0

    .line 1088
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1090
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/i;->f:Ljava/lang/String;

    .line 1092
    sget-object v0, Lcom/tencent/open/utils/i;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    const-string v1, "openSDK_LOG.Util"

    const-string v2, "getLocation>>>"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1098
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1128
    if-nez p0, :cond_0

    .line 1129
    const-string v0, ""

    .line 1132
    :goto_0
    return-object v0

    .line 1131
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/open/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1132
    sget-object v0, Lcom/tencent/open/utils/i;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 436
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string p0, "{value : false}"

    .line 440
    :cond_0
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string p0, "{value : true}"

    .line 445
    :cond_1
    const-string v0, "allback("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    const-string v0, "[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 451
    :cond_2
    const-string v0, "online[0]="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{online:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 454
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 483
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1136
    if-nez p0, :cond_0

    .line 1137
    const-string v0, ""

    .line 1140
    :goto_0
    return-object v0

    .line 1139
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/open/utils/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/i;->c:Ljava/lang/String;

    .line 1140
    sget-object v0, Lcom/tencent/open/utils/i;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 695
    .line 697
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 698
    invoke-static {p0}, Lcom/tencent/open/utils/i;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 699
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 700
    if-eqz v1, :cond_1

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    .line 703
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lcom/tencent/open/utils/i;->a(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {v4}, Lcom/tencent/open/utils/i;->a(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 712
    :cond_1
    :goto_1
    return-object p0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    const-string v1, "openSDK_LOG.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt has exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1161
    const-wide/16 v0, 0x0

    .line 1166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1168
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v6

    .line 1170
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v6, v2

    .line 1172
    float-to-double v6, v3

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v2, v2

    const-wide/high16 v8, 0x4000

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 1183
    :goto_0
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1185
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 1193
    :goto_1
    const-wide/high16 v6, 0x401a

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    .line 1196
    :goto_2
    return v5

    .line 1176
    :catch_0
    move-exception v2

    move-wide v2, v0

    goto :goto_0

    .line 1188
    :catch_1
    move-exception v0

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1196
    goto :goto_2
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 544
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mtt"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 546
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 547
    const-string v3, "4.3"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v3, "4.4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    if-eqz v1, :cond_0

    .line 553
    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 554
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 555
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/i;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 558
    const-string v2, "d8391a394d4a179e6fe7bdb8a301258b"

    .line 559
    const-string v2, "d8391a394d4a179e6fe7bdb8a301258b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 562
    :catch_0
    move-exception v1

    .line 564
    :try_start_2
    const-string v2, "openSDK_LOG.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isQQBrowerAvailable has exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 568
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 884
    if-nez p0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 908
    if-nez p0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 911
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 1145
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1147
    :goto_0
    return-object v0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    const/4 v0, 0x0

    goto :goto_0
.end method
