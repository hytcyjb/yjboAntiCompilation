.class public Lcom/didi/common/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/cache/ImageCache$RetainFragment;,
        Lcom/didi/common/cache/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x1400

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageCache"

.field private static mInstance:Lcom/didi/common/cache/ImageCache;


# instance fields
.field private mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/didi/common/cache/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/cache/ImageCache;->mInstance:Lcom/didi/common/cache/ImageCache;

    return-void
.end method

.method private constructor <init>(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V
    .locals 1
    .parameter "cacheParams"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheStarting:Z

    .line 95
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageCache;->init(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/cache/ImageCache;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/didi/common/cache/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 570
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 572
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v0           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 3
    .parameter "candidate"
    .parameter "targetOptions"

    .prologue
    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/didi/common/cache/ImageCache$RetainFragment;
    .locals 3
    .parameter "fm"

    .prologue
    .line 661
    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/didi/common/cache/ImageCache$RetainFragment;

    .line 664
    .local v0, mRetainFragment:Lcom/didi/common/cache/ImageCache$RetainFragment;
    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/didi/common/cache/ImageCache$RetainFragment;

    .end local v0           #mRetainFragment:Lcom/didi/common/cache/ImageCache$RetainFragment;
    invoke-direct {v0}, Lcom/didi/common/cache/ImageCache$RetainFragment;-><init>()V

    .line 666
    .restart local v0       #mRetainFragment:Lcom/didi/common/cache/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 669
    :cond_0
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 596
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycombMR1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 601
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 515
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v2, :cond_1

    .line 516
    const/4 v0, 0x4

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 519
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 521
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 522
    goto :goto_0

    :cond_2
    move v0, v1

    .line 524
    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 539
    invoke-static {p0}, Lcom/didi/common/cache/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    invoke-static {}, Lcom/didi/common/util/Utils;->haveSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/didi/common/cache/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 540
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cachePath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 632
    :goto_0
    return-object v1

    .line 631
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, cacheDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;Lcom/didi/common/cache/ImageCache$ImageCacheParams;)Lcom/didi/common/cache/ImageCache;
    .locals 2
    .parameter "fragmentManager"
    .parameter "cacheParams"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/didi/common/cache/ImageCache;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/didi/common/cache/ImageCache$RetainFragment;

    move-result-object v1

    .line 113
    .local v1, mRetainFragment:Lcom/didi/common/cache/ImageCache$RetainFragment;
    invoke-virtual {v1}, Lcom/didi/common/cache/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/cache/ImageCache;

    .line 116
    .local v0, imageCache:Lcom/didi/common/cache/ImageCache;
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/didi/common/cache/ImageCache;

    .end local v0           #imageCache:Lcom/didi/common/cache/ImageCache;
    invoke-direct {v0, p1}, Lcom/didi/common/cache/ImageCache;-><init>(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V

    .line 118
    .restart local v0       #imageCache:Lcom/didi/common/cache/ImageCache;
    invoke-virtual {v1, v0}, Lcom/didi/common/cache/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-object v0
.end method

.method public static getInstance(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)Lcom/didi/common/cache/ImageCache;
    .locals 1
    .parameter "cacheParams"

    .prologue
    .line 125
    sget-object v0, Lcom/didi/common/cache/ImageCache;->mInstance:Lcom/didi/common/cache/ImageCache;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/didi/common/cache/ImageCache;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/ImageCache;-><init>(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V

    sput-object v0, Lcom/didi/common/cache/ImageCache;->mInstance:Lcom/didi/common/cache/ImageCache;

    .line 128
    :cond_0
    sget-object v0, Lcom/didi/common/cache/ImageCache;->mInstance:Lcom/didi/common/cache/ImageCache;

    return-object v0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .parameter "path"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 643
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 647
    :goto_0
    return-wide v1

    .line 646
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 557
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 558
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 559
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/cache/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 563
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 560
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 561
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V
    .locals 2
    .parameter "cacheParams"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    .line 141
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    .line 157
    :cond_0
    new-instance v0, Lcom/didi/common/cache/ImageCache$1;

    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/didi/common/cache/ImageCache$1;-><init>(Lcom/didi/common/cache/ImageCache;I)V

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 195
    :cond_1
    iget-boolean v0, p1, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/didi/common/cache/ImageCache;->initDiskCache()V

    .line 199
    :cond_2
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 612
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 8
    .parameter "data"
    .parameter "value"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v4, :cond_3

    .line 244
    const-class v4, Lcom/didi/common/cache/RecyclingBitmapDrawable;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 247
    check-cast v4, Lcom/didi/common/cache/RecyclingBitmapDrawable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/didi/common/cache/RecyclingBitmapDrawable;->setIsCached(Z)V

    .line 249
    :cond_2
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_3
    iget-object v5, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    if-eqz v4, :cond_5

    .line 255
    invoke-static {p1}, Lcom/didi/common/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .local v2, out:Ljava/io/OutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v4, v1}, Lcom/didi/common/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Snapshot;

    move-result-object v3

    .line 259
    .local v3, snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    if-nez v3, :cond_6

    .line 260
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v4, v1}, Lcom/didi/common/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Editor;

    move-result-object v0

    .line 261
    .local v0, editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    if-eqz v0, :cond_4

    .line 262
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/didi/common/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 263
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget-object v6, v6, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {v4, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 265
    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache$Editor;->commit()V

    .line 266
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 275
    .end local v0           #editor:Lcom/didi/common/cache/DiskLruCache$Editor;
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 276
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 281
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v3           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 269
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #out:Ljava/io/OutputStream;
    .restart local v3       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_6
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v3, v4}, Lcom/didi/common/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 271
    .end local v3           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_0
    move-exception v4

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 278
    :catch_1
    move-exception v4

    goto :goto_2

    .line 272
    :catch_2
    move-exception v4

    .line 275
    if-eqz v2, :cond_5

    .line 276
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 278
    :catch_3
    move-exception v4

    goto :goto_2

    .line 274
    :catchall_1
    move-exception v4

    .line 275
    if-eqz v2, :cond_7

    .line 276
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 278
    :cond_7
    :goto_3
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v3       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_4
    move-exception v4

    goto :goto_2

    .end local v3           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_5
    move-exception v6

    goto :goto_3
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheStarting:Z

    .line 402
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    .line 408
    invoke-virtual {p0}, Lcom/didi/common/cache/ImageCache;->initDiskCache()V

    .line 410
    :cond_1
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 405
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->close()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "data"

    .prologue
    .line 311
    invoke-static {p1}, Lcom/didi/common/cache/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 315
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    .line 317
    :try_start_1
    iget-object v6, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v6

    goto :goto_0

    .line 321
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    if-nez v6, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/didi/common/cache/ImageCache;->initDiskCache()V

    .line 325
    :cond_1
    iget-object v6, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    .line 326
    const/4 v3, 0x0

    .line 328
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_3
    iget-object v6, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v6, v4}, Lcom/didi/common/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/didi/common/cache/DiskLruCache$Snapshot;

    move-result-object v5

    .line 329
    .local v5, snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    if-eqz v5, :cond_2

    .line 330
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/didi/common/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 331
    if-eqz v3, :cond_2

    .line 332
    move-object v0, v3

    check-cast v0, Ljava/io/FileInputStream;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 336
    .local v2, fd:Ljava/io/FileDescriptor;
    const v6, 0x7fffffff

    const v8, 0x7fffffff

    invoke-static {v2, v6, v8, p0}, Lcom/didi/common/cache/ImageResizer;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;IILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 343
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :cond_2
    if-eqz v3, :cond_3

    .line 344
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 349
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    .line 340
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 343
    if-eqz v3, :cond_3

    .line 344
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 346
    :catch_2
    move-exception v6

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v6

    .line 343
    if-eqz v3, :cond_4

    .line 344
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 346
    :cond_4
    :goto_2
    :try_start_8
    throw v6

    .line 350
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 346
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v5       #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v5           #snapshot:Lcom/didi/common/cache/DiskLruCache$Snapshot;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "data"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, memValue:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/didi/common/cache/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #memValue:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    .restart local v0       #memValue:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v0
.end method

.method protected getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "options"

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 363
    iget-object v4, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    monitor-enter v4

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/didi/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 367
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 370
    .local v1, item:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    invoke-static {v1, p1}, Lcom/didi/common/cache/ImageCache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    move-object v0, v1

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 384
    .end local v1           #item:Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v4

    .line 387
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_2
    return-object v0

    .line 381
    .restart local v1       #item:Landroid/graphics/Bitmap;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 384
    .end local v1           #item:Landroid/graphics/Bitmap;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initDiskCache()V
    .locals 8

    .prologue
    .line 209
    iget-object v3, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;

    invoke-virtual {v2}, Lcom/didi/common/cache/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget-object v0, v2, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 212
    .local v0, diskCacheDir:Ljava/io/File;
    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_1
    invoke-static {v0}, Lcom/didi/common/cache/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget v2, v2, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 218
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    iget v5, v5, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v5, v5

    invoke-static {v0, v2, v4, v5, v6}, Lcom/didi/common/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/didi/common/cache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/cache/ImageCache;->mDiskLruCache:Lcom/didi/common/cache/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .end local v0           #diskCacheDir:Ljava/io/File;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheStarting:Z

    .line 227
    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit v3

    .line 229
    return-void

    .line 220
    .restart local v0       #diskCacheDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/didi/common/cache/ImageCache;->mCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    goto :goto_0

    .line 228
    .end local v0           #diskCacheDir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
