.class public Lcom/didi/game/common/utils/DiDiUtils;
.super Ljava/lang/Object;
.source "DiDiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInstalledList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 84
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method public static getAllInstalledString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 69
    const-string v4, ""

    .line 70
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getApkInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 98
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 99
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 100
    .local v1, info:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 101
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 102
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v2, packageName:Ljava/lang/String;
    move-object v4, v0

    .line 106
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getPackageApkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 44
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, pinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 48
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 51
    :goto_1
    return-object v3

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/didi/game/common/utils/DiDiUtils;->getApkInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 118
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static isInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 29
    .local v2, pinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const/4 v3, 0x1

    .line 33
    :goto_1
    return v3

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 33
    goto :goto_1
.end method

.method public static launchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"
    .parameter "appPath"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/didi/game/common/utils/DiDiUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 137
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static needDownOrUpdate(Ljava/lang/String;I)Z
    .locals 3
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-static {p0}, Lcom/didi/game/common/utils/DiDiUtils;->getPackageApkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 157
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt p1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
