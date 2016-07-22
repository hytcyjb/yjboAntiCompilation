.class public Lcom/didi/taxi/helper/TaxiFoundHelper;
.super Ljava/lang/Object;
.source "TaxiFoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;,
        Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;
    }
.end annotation


# static fields
.field private static final FILE_DIR:Ljava/lang/String;

.field private static final IMAGE_FILE_DIR:Ljava/lang/String;

.field private static final OBJ_FILE_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/taxi/helper/TaxiFoundHelper;->FILE_DIR:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/helper/TaxiFoundHelper;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/found_obj/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/taxi/helper/TaxiFoundHelper;->OBJ_FILE_DIR:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/helper/TaxiFoundHelper;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/found_image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/taxi/helper/TaxiFoundHelper;->IMAGE_FILE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/didi/taxi/helper/TaxiFoundHelper;->loadFoundListFromLocal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/didi/taxi/helper/TaxiFoundHelper;->saveFoundListToLocal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/didi/taxi/helper/TaxiFoundHelper;->loadImageFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/didi/taxi/helper/TaxiFoundHelper;->saveImageToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchImage(Ljava/lang/String;Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;)V
    .locals 1
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/helper/TaxiFoundHelper$3;-><init>(Ljava/lang/String;Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;)V

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->start()Lthread/Job;

    goto :goto_0
.end method

.method public static loadFoundList(Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 36
    new-instance v0, Lcom/didi/taxi/helper/TaxiFoundHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/helper/TaxiFoundHelper$1;-><init>(Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;)V

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiFoundHelper$1;->start()Lthread/Job;

    .line 43
    return-void
.end method

.method private static loadFoundListFromLocal()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiFound;>;"
    const/4 v2, 0x0

    .line 105
    .local v2, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 108
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v7, Lcom/didi/taxi/helper/TaxiFoundHelper;->OBJ_FILE_DIR:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 117
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 119
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 117
    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 117
    invoke-static {v5}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v7

    .line 116
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

    .line 112
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

.method private static loadImageFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/taxi/helper/TaxiFoundHelper;->IMAGE_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static saveFoundList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, founds:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiFound;>;"
    new-instance v0, Lcom/didi/taxi/helper/TaxiFoundHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/helper/TaxiFoundHelper$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiFoundHelper$2;->start()Lthread/Job;

    .line 53
    return-void
.end method

.method private static saveFoundListToLocal(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, founds:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiFound;>;"
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/didi/taxi/helper/TaxiFoundHelper;->OBJ_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/didi/common/util/FileUtil;->save(Ljava/io/File;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method private static saveImageToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 89
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 90
    return-void
.end method
