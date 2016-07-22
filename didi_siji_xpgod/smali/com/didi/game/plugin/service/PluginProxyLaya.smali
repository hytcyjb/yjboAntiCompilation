.class public Lcom/didi/game/plugin/service/PluginProxyLaya;
.super Lcom/didi/game/plugin/service/PluginProxy;
.source "PluginProxyLaya.java"


# static fields
.field private static final PLUGIN_FILE_LIST:Ljava/lang/String; = "fileList"

.field private static final PLUGIN_INIT_JAR:Ljava/lang/String; = "initjar"

.field private static final PLUGIN_NAME:Ljava/lang/String; = "name"

.field private static final PLUGIN_REFLECT_CLASS:Ljava/lang/String; = "reflectClass"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "version"

.field private static final PLUGIN_ZIP_URL:Ljava/lang/String; = "zipurl"

.field private static final ZIP_URL:Ljava/lang/String; = "http://platform.layalab.com/plugin/download/laya_v120.zip"


# instance fields
.field h5Game:Lcom/didi/game/model/H5game;

.field plugin:Lcom/didi/game/model/GamePluginLaya;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/didi/game/model/H5game;)V
    .locals 1
    .parameter "ctxt"
    .parameter "game"

    .prologue
    .line 41
    invoke-virtual {p2}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/didi/game/plugin/service/PluginProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->h5Game:Lcom/didi/game/model/H5game;

    .line 43
    return-void
.end method

.method private checkLocVersion()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    iget-object v3, v3, Lcom/didi/game/model/GamePluginLaya;->version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    invoke-virtual {v3}, Lcom/didi/game/model/GamePluginLaya;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getLayaGamePluginVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 89
    .local v0, versionIsEqual:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 91
    iput-boolean v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->isLoadNewZIP:Z

    .line 99
    .end local v0           #versionIsEqual:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 87
    goto :goto_0

    .line 95
    .restart local v0       #versionIsEqual:Z
    :cond_3
    iput-boolean v2, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->isLoadNewZIP:Z

    .line 97
    invoke-virtual {p0}, Lcom/didi/game/plugin/service/PluginProxyLaya;->writePreferences()V

    goto :goto_1
.end method


# virtual methods
.method protected getZIPUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    invoke-virtual {v0}, Lcom/didi/game/model/GamePluginLaya;->getZipUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    new-instance v1, Lcom/didi/game/model/GamePluginLaya;

    invoke-direct {v1}, Lcom/didi/game/model/GamePluginLaya;-><init>()V

    iput-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    .line 62
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "laya"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setName(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "l.2.0"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setVersion(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "http://platform.layalab.com/plugin/download/laya_v120.zip"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setZipUrl(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "LayaBoxPlayer.jar;liblaya.so"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setFileList(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "LayaBoxPlayer.jar"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setInitjar(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    const-string v2, "com.laya.instance.GameEngine"

    invoke-virtual {v1, v2}, Lcom/didi/game/model/GamePluginLaya;->setReflectClass(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/didi/game/plugin/service/PluginProxyLaya;->checkLocVersion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected writePreferences()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    .line 107
    .local v0, pref:Lcom/didi/common/config/Preferences;
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginLaya;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setLayaGamePluginVersion(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginLaya;->getZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setLayaGamePluginZIPUrl(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxyLaya;->plugin:Lcom/didi/game/model/GamePluginLaya;

    invoke-virtual {v1}, Lcom/didi/game/model/GamePluginLaya;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setLayaGamePluginName(Ljava/lang/String;)V

    .line 110
    return-void
.end method
