.class public Lcom/didi/activity/ActivityIconHelper;
.super Ljava/lang/Object;
.source "ActivityIconHelper.java"


# static fields
.field private static final ICON_BASE_DIR:Ljava/lang/String; = null

.field private static final ICON_IMAGE_DIR_NAME:Ljava/lang/String; = null

.field private static final ICON_OBJ_FILE_NAME:Ljava/lang/String; = "activity_icon_list.obj"

.field private static sIconSetRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/activity/ActivityIconHelper;->ICON_BASE_DIR:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/activity/ActivityIconHelper;->ICON_BASE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icon_image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/activity/ActivityIconHelper;->ICON_IMAGE_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/didi/activity/ActivityIconHelper;->downloadIconsIfNeed(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/didi/activity/ActivityIconHelper;->saveIconList(Ljava/util/List;)V

    return-void
.end method

.method private static downloadIcon(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "file"
    .parameter "urlStr"

    .prologue
    .line 105
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadIcon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 108
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 111
    const-string v3, "downloadIcon end-------------"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static downloadIconsIfNeed(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, icons:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/Icon;

    .line 80
    .local v3, icon:Lcom/didi/common/model/Icon;
    invoke-static {v3}, Lcom/didi/activity/ActivityIconHelper;->isValid(Lcom/didi/common/model/Icon;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    const-string v4, "icon !isValid"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, fileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, file:Ljava/io/File;
    iget-object v1, v3, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/didi/activity/ActivityIconHelper;->getIconImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v4, v3, Lcom/didi/common/model/Icon;->urlNormal:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/didi/activity/ActivityIconHelper;->downloadIcon(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #icon:Lcom/didi/common/model/Icon;
    :cond_2
    return-void
.end method

.method public static getActivityMapIconPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getIconList()Ljava/util/Map;

    move-result-object v1

    .line 142
    .local v1, iconSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    if-nez v1, :cond_1

    move-object v2, v3

    .line 157
    :cond_0
    :goto_0
    return-object v2

    .line 146
    :cond_1
    const-string v4, "activity"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Icon;

    .line 147
    .local v0, icon:Lcom/didi/common/model/Icon;
    const/4 v2, 0x0

    .line 148
    .local v2, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 149
    iget-object v4, v0, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/activity/ActivityIconHelper;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    :cond_2
    invoke-static {v0}, Lcom/didi/activity/ActivityIconHelper;->isValid(Lcom/didi/common/model/Icon;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    move-object v2, v3

    .line 154
    goto :goto_0
.end method

.method private static getIconImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "name"

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/didi/activity/ActivityIconHelper;->ICON_IMAGE_DIR_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/didi/activity/ActivityIconHelper;->ICON_IMAGE_DIR_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getIconList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getIconSetFromRef()Ljava/util/Map;

    move-result-object v0

    .line 212
    .local v0, iconSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->loadIconList()Ljava/util/Map;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/didi/activity/ActivityIconHelper;->saveIconListRef(Ljava/util/Map;)V

    .line 217
    :cond_0
    return-object v0
.end method

.method private static getIconListObjFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/didi/activity/ActivityIconHelper;->ICON_BASE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/didi/activity/ActivityIconHelper;->ICON_BASE_DIR:Ljava/lang/String;

    const-string v3, "activity_icon_list.obj"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getIconPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 269
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    const/4 v1, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object v1

    .line 273
    :cond_1
    const/4 v1, 0x0

    .line 274
    .local v1, iconImagePath:Ljava/lang/String;
    invoke-static {p0}, Lcom/didi/activity/ActivityIconHelper;->getIconImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, iconImage:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getIconSetFromRef()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lcom/didi/activity/ActivityIconHelper;->sIconSetRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/activity/ActivityIconHelper;->sIconSetRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMapIconPathByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getIconList()Ljava/util/Map;

    move-result-object v1

    .line 167
    .local v1, iconSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    if-nez v1, :cond_1

    move-object v2, v3

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 171
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Icon;

    .line 172
    .local v0, icon:Lcom/didi/common/model/Icon;
    const/4 v2, 0x0

    .line 173
    .local v2, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 174
    iget-object v4, v0, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/activity/ActivityIconHelper;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    :cond_2
    invoke-static {v0}, Lcom/didi/activity/ActivityIconHelper;->isValid(Lcom/didi/common/model/Icon;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    move-object v2, v3

    .line 179
    goto :goto_0
.end method

.method private static isValid(Lcom/didi/common/model/Icon;)Z
    .locals 6
    .parameter "icon"

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 256
    .local v0, curTime:J
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/model/Icon;->isAvailable(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/model/Icon;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    const/4 v2, 0x1

    .line 259
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadIconList()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v5, 0x0

    .line 226
    .local v5, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    const/4 v3, 0x0

    .line 227
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 230
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getIconListObjFile()Ljava/io/File;

    move-result-object v2

    .line 231
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 242
    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 243
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 245
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v5

    .line 234
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .local v7, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    move-object v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 242
    invoke-static {v4}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 243
    invoke-static {v7}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    move-object v6, v7

    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .line 244
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 238
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 243
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 242
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 243
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v8

    .line 242
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 238
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_1

    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static saveIconList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, icons:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/Icon;

    .line 121
    .local v1, icon:Lcom/didi/common/model/Icon;
    iget-object v3, v1, Lcom/didi/common/model/Icon;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v1           #icon:Lcom/didi/common/model/Icon;
    :cond_0
    invoke-static {v2}, Lcom/didi/activity/ActivityIconHelper;->saveIconList(Ljava/util/Map;)V

    .line 124
    invoke-static {v2}, Lcom/didi/activity/ActivityIconHelper;->saveIconListRef(Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method private static saveIconList(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getIconListObjFile()Ljava/io/File;

    move-result-object v0

    .line 132
    .local v0, file:Ljava/io/File;
    invoke-static {v0, p0}, Lcom/didi/common/util/FileUtil;->save(Ljava/io/File;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method private static saveIconListRef(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, iconSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Icon;>;"
    if-eqz p0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/didi/activity/ActivityIconHelper;->sIconSetRef:Ljava/lang/ref/SoftReference;

    .line 194
    :cond_0
    return-void
.end method

.method public static saveIcons(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, icons:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    invoke-static {p0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "-----------start icons job -------------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/didi/activity/ActivityIconHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/activity/ActivityIconHelper$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/didi/activity/ActivityIconHelper$1;->start()Lthread/Job;

    goto :goto_0
.end method
