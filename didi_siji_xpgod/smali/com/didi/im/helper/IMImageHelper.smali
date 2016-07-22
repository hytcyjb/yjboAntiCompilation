.class public Lcom/didi/im/helper/IMImageHelper;
.super Ljava/lang/Object;
.source "IMImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/helper/IMImageHelper$AudioLoaderCallback;,
        Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = null

.field private static final IMAGE_DIR:Ljava/lang/String; = null

.field private static final MAX_SIZE_BITMAP_MEMCACHE:I = 0xc00000

.field public static sMemCache:Lcom/didi/im/cache/BitmapMemoryLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/im/helper/IMImageHelper;->BASE_DIR:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/im/helper/IMImageHelper;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/im/helper/IMImageHelper;->IMAGE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "key"

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/didi/im/helper/IMImageHelper;->getImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/im/helper/IMImageHelper;->IMAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap(Ljava/lang/String;Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/didi/im/helper/IMImageHelper;->sMemCache:Lcom/didi/im/cache/BitmapMemoryLruCache;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/didi/im/cache/BitmapMemoryLruCache;

    const/high16 v2, 0xc0

    invoke-direct {v1, v2}, Lcom/didi/im/cache/BitmapMemoryLruCache;-><init>(I)V

    sput-object v1, Lcom/didi/im/helper/IMImageHelper;->sMemCache:Lcom/didi/im/cache/BitmapMemoryLruCache;

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 45
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Lcom/didi/im/helper/IMImageHelper;->sMemCache:Lcom/didi/im/cache/BitmapMemoryLruCache;

    invoke-virtual {v1, p0}, Lcom/didi/im/cache/BitmapMemoryLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Lcom/didi/im/helper/IMImageHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/im/helper/IMImageHelper$1;-><init>(Ljava/lang/String;Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;)V

    invoke-virtual {v1}, Lcom/didi/im/helper/IMImageHelper$1;->start()Lthread/Job;

    .line 77
    const/4 v0, 0x0

    goto :goto_1
.end method
