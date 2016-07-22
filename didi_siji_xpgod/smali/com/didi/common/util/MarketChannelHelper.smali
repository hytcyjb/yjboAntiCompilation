.class public Lcom/didi/common/util/MarketChannelHelper;
.super Ljava/lang/Object;
.source "MarketChannelHelper.java"


# static fields
.field private static final META_DATA_TD_CHANNEL:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static mChannelId:Ljava/lang/String;

.field private static mInstance:Lcom/didi/common/util/MarketChannelHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/util/MarketChannelHelper;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getTDChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/common/util/MarketChannelHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const-class v1, Lcom/didi/common/util/MarketChannelHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/util/MarketChannelHelper;->mInstance:Lcom/didi/common/util/MarketChannelHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/didi/common/util/MarketChannelHelper;

    invoke-direct {v0}, Lcom/didi/common/util/MarketChannelHelper;-><init>()V

    sput-object v0, Lcom/didi/common/util/MarketChannelHelper;->mInstance:Lcom/didi/common/util/MarketChannelHelper;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/util/MarketChannelHelper;->mChannelId:Ljava/lang/String;

    .line 28
    :cond_0
    sget-object v0, Lcom/didi/common/util/MarketChannelHelper;->mInstance:Lcom/didi/common/util/MarketChannelHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTDChannel()Ljava/lang/String;
    .locals 7

    .prologue
    .line 37
    sget-object v5, Lcom/didi/common/util/MarketChannelHelper;->mChannelId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 38
    sget-object v1, Lcom/didi/common/util/MarketChannelHelper;->mChannelId:Ljava/lang/String;

    .line 51
    .local v1, channel:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 40
    .end local v1           #channel:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 42
    .restart local v1       #channel:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    .line 43
    .local v2, cxt:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 44
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 45
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "TD_CHANNEL_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #cxt:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    sput-object v1, Lcom/didi/common/util/MarketChannelHelper;->mChannelId:Ljava/lang/String;

    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
