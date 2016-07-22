.class public Lcom/didi/game/plugin/service/PluginProxyEgret;
.super Lcom/didi/game/plugin/service/PluginProxy;
.source "PluginProxyEgret.java"


# static fields
.field private static final PLUGIN_FILE_CHECK_CODE:Ljava/lang/String; = "md5"

.field private static final PLUGIN_FILE_NAME:Ljava/lang/String; = "name"

.field private static final PLUGIN_LIBRARY:Ljava/lang/String; = "library"

.field private static final PLUGIN_NAME:Ljava/lang/String; = "name"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "version"

.field private static final PLUGIN_ZIP_CODE:Ljava/lang/String; = "zip"

.field private static final PLUGIN_ZIP_URL:Ljava/lang/String; = "zipurl"

.field private static final ZIP_URL:Ljava/lang/String; = "http://dldir1.qq.com/diditaxi/apk/sdk/egret_v161_153.zip"


# instance fields
.field h5Game:Lcom/didi/game/model/H5game;

.field plugin:Lcom/didi/game/model/GamePluginEgret;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/didi/game/model/H5game;)V
    .locals 1
    .parameter "ctxt"
    .parameter "game"

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/didi/game/plugin/service/PluginProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->h5Game:Lcom/didi/game/model/H5game;

    .line 39
    return-void
.end method

.method private checkLocVersion()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    iget-object v3, v3, Lcom/didi/game/model/GamePluginEgret;->version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    invoke-virtual {v3}, Lcom/didi/game/model/GamePluginEgret;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getEgretGamePluginVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 75
    .local v0, versionIsEqual:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 77
    iput-boolean v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->isLoadNewZIP:Z

    .line 85
    .end local v0           #versionIsEqual:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    .line 81
    .restart local v0       #versionIsEqual:Z
    :cond_3
    iput-boolean v2, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->isLoadNewZIP:Z

    .line 83
    invoke-virtual {p0}, Lcom/didi/game/plugin/service/PluginProxyEgret;->writePreferences()V

    goto :goto_1
.end method


# virtual methods
.method protected getZIPUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    invoke-virtual {v0}, Lcom/didi/game/model/GamePluginEgret;->getZipUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->CommonBizPlugConfig.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/didi/game/model/GamePluginEgret;

    invoke-direct {v1}, Lcom/didi/game/model/GamePluginEgret;-><init>()V

    iput-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    .line 49
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginEgret;->setName(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginEgret;->setVersion(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    iget-object v2, p1, Lcom/didi/common/model/CommonBizPlugConfig;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginEgret;->setZipUrl(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/didi/game/plugin/service/PluginProxyEgret;->checkLocVersion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected writePreferences()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    .line 93
    .local v0, pref:Lcom/didi/common/config/Preferences;
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginEgret;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setEgretGamePluginVersion(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginEgret;->getZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setEgretGamePluginZIPUrl(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyEgret;->plugin:Lcom/didi/game/model/GamePluginEgret;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginEgret;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setEgretGamePluginName(Ljava/lang/String;)V

    .line 96
    return-void
.end method
