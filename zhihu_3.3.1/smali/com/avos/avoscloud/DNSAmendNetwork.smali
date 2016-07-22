.class public Lcom/avos/avoscloud/DNSAmendNetwork;
.super Ljava/lang/Object;
.source "DNSAmendNetwork.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/Dns;


# static fields
.field static final AVOS_SERVER_HOST_ZONE:Ljava/lang/String; = "avoscloud_server_host_zone"

.field public static final EXPIRE_TIME:Ljava/lang/String; = ".expireTime"

.field static final TWENTY_MIN_IN_MILLS:J = 0x124f80L

.field private static instance:Lcom/avos/avoscloud/DNSAmendNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/avos/avoscloud/DNSAmendNetwork;

    invoke-direct {v0}, Lcom/avos/avoscloud/DNSAmendNetwork;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/DNSAmendNetwork;->instance:Lcom/avos/avoscloud/DNSAmendNetwork;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private cacheDNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "avoscloud_server_host_zone"

    invoke-virtual {v0, v1, p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "avoscloud_server_host_zone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".expireTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getCacheDNSResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v2, "avoscloud_server_host_zone"

    invoke-virtual {v0, v2, p1, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    const-string v3, "avoscloud_server_host_zone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".expireTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 103
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    array-length v0, v3

    new-array v4, v0, [Ljava/net/InetAddress;

    .line 105
    const-class v0, Ljava/net/InetAddress;

    new-array v1, v10, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const-class v5, [B

    aput-object v5, v1, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 107
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move v1, v2

    .line 108
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 109
    aget-object v0, v3, v1

    .line 110
    const-string v6, "\\."

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    array-length v6, v0

    if-ne v6, v11, :cond_0

    .line 112
    new-array v6, v11, [B

    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    aget-object v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    aget-object v7, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v6, v10

    .line 115
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    aput-object v6, v0, v8

    aput-object p0, v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    aput-object v0, v4, v1

    .line 108
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    return-object v4
.end method

.method public static getInstance()Lcom/avos/avoscloud/DNSAmendNetwork;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avos/avoscloud/DNSAmendNetwork;->instance:Lcom/avos/avoscloud/DNSAmendNetwork;

    return-object v0
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 92
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 93
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_1
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 47
    :try_start_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/DNSAmendNetwork;->getCacheDNSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 49
    :goto_1
    if-nez v1, :cond_0

    .line 50
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://119.29.29.29/d?dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 52
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/DNSAmendNetwork;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    invoke-static {p1, v0}, Lcom/avos/avoscloud/DNSAmendNetwork;->getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 56
    if-nez v1, :cond_1

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/DNSAmendNetwork;->cacheDNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0
.end method
