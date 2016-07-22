.class public Lcom/didi/common/helper/AdvertisementHelper;
.super Ljava/lang/Object;
.source "AdvertisementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;
    }
.end annotation


# static fields
.field private static final ADVERTISEMENT_FILE:Ljava/lang/String; = "advertisement_list.obj"

.field private static final IMAGE_FILE_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/advertisement_image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/AdvertisementHelper;->IMAGE_FILE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic access$000()Lcom/didi/common/model/AdvertisementList;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/didi/common/helper/AdvertisementHelper;->loadHistoryAdvertisementList()Lcom/didi/common/model/AdvertisementList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/model/AdvertisementList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/didi/common/helper/AdvertisementHelper;->saveAsHistory(Lcom/didi/common/model/AdvertisementList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/model/AdvertisementList;)Lcom/didi/common/model/Advertisement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/didi/common/helper/AdvertisementHelper;->chooseAvailableAd(Lcom/didi/common/model/AdvertisementList;)Lcom/didi/common/model/Advertisement;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/didi/common/helper/AdvertisementHelper;->loadAdvertisementImage(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/common/model/Advertisement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/didi/common/helper/AdvertisementHelper;->save(Lcom/didi/common/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$500(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/didi/common/helper/AdvertisementHelper;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/io/File;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/didi/common/helper/AdvertisementHelper;->getAdvertisementFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static chooseAvailableAd(Lcom/didi/common/model/AdvertisementList;)Lcom/didi/common/model/Advertisement;
    .locals 8
    .parameter "list"

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/didi/common/model/AdvertisementList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, adList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Advertisement;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    .line 80
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/model/AdvertisementList;->getCurrentTime()J

    move-result-wide v2

    .line 72
    .local v2, curTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Advertisement;

    .line 76
    .local v0, ad:Lcom/didi/common/model/Advertisement;
    invoke-virtual {v0, v2, v3}, Lcom/didi/common/model/Advertisement;->isValid(J)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/model/Advertisement;->isAvailable(J)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v0           #ad:Lcom/didi/common/model/Advertisement;
    :cond_3
    move-object v0, v5

    .line 80
    goto :goto_0
.end method

.method private static getAdvertisementFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "advertisement_list.obj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getAdvertisementList(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 44
    new-instance v0, Lcom/didi/common/helper/AdvertisementHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/AdvertisementHelper$1;-><init>(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAdvertisementList(Lcom/didi/common/net/ResponseListener;)V

    .line 58
    return-void
.end method

.method private static getImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "filename"

    .prologue
    .line 180
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/helper/AdvertisementHelper;->IMAGE_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static loadAdvertisementImage(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 1
    .parameter "ad"
    .parameter "l"

    .prologue
    .line 110
    new-instance v0, Lcom/didi/common/helper/AdvertisementHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/AdvertisementHelper$2;-><init>(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/AdvertisementHelper$2;->start()Lthread/Job;

    .line 129
    return-void
.end method

.method public static loadAdvertisementImage(Lcom/didi/common/model/Advertisement;)Z
    .locals 6
    .parameter "ad"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 155
    .local v2, loadFromNet:Z
    invoke-virtual {p0}, Lcom/didi/common/model/Advertisement;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, md5:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/helper/AdvertisementHelper;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 157
    .local v1, f:Ljava/io/File;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-static {v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/model/Advertisement;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, url:Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-static {v4}, Lcom/didi/common/helper/ImageFetcher;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    sget-object v5, Lcom/didi/common/helper/AdvertisementHelper;->IMAGE_FILE_DIR:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->deleteDir(Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x1

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lcom/didi/common/model/Advertisement;->setImage(Landroid/graphics/Bitmap;)V

    .line 169
    return v2
.end method

.method private static loadHistoryAdvertisementList()Lcom/didi/common/model/AdvertisementList;
    .locals 8

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, list:Lcom/didi/common/model/AdvertisementList;
    const/4 v2, 0x0

    .line 89
    .local v2, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 91
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/didi/common/helper/AdvertisementHelper;->getAdvertisementFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/didi/common/model/AdvertisementList;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 98
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 100
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 98
    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 98
    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v7

    .line 97
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 94
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1

    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static save(Lcom/didi/common/model/Advertisement;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 137
    new-instance v0, Lcom/didi/common/helper/AdvertisementHelper$3;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/AdvertisementHelper$3;-><init>(Lcom/didi/common/model/Advertisement;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/AdvertisementHelper$3;->start()Lthread/Job;

    .line 144
    return-void
.end method

.method private static saveAsHistory(Lcom/didi/common/model/AdvertisementList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 191
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/model/AdvertisementList;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveAdvertisementVersion(Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/didi/common/helper/AdvertisementHelper$4;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/AdvertisementHelper$4;-><init>(Lcom/didi/common/model/AdvertisementList;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/AdvertisementHelper$4;->start()Lthread/Job;

    .line 200
    return-void
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .parameter "bitmap"
    .parameter "filename"

    .prologue
    .line 173
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/didi/common/helper/AdvertisementHelper;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    goto :goto_0
.end method

.method public static showAdvertisement(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/didi/common/helper/AdvertisementHelper;->getAdvertisementList(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    .line 41
    return-void
.end method
