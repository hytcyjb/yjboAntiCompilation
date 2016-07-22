.class public Lcom/didi/common/helper/SUUIDHelper;
.super Ljava/lang/Object;
.source "SUUIDHelper.java"


# static fields
.field private static final SD_DIR:Ljava/lang/String; = "sysdata"

.field private static final SD_FILE:Ljava/lang/String; = "uuid.sys"

.field private static sFileObserver:Landroid/os/FileObserver;

.field private static sUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->restoreUUID()V

    return-void
.end method

.method public static getDiDiSUUID()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDiDiUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setDiDiUUID(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setDiDiUUID(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_3
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sysdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uuid.sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static restoreUUID()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setDiDiUUID(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getDiDiUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static startUUIDWatching()V
    .locals 3

    .prologue
    .line 74
    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 78
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sysdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, dir:Ljava/io/File;
    new-instance v1, Lcom/didi/common/helper/SUUIDHelper$1;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/common/helper/SUUIDHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    .line 92
    sget-object v1, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 93
    return-void
.end method

.method public static stopUUIDWatching()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/didi/common/helper/SUUIDHelper;->sFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 118
    :cond_0
    return-void
.end method
