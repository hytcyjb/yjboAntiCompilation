.class public Lcom/didi/common/base/DidiApp;
.super Lcom/didi/common/base/BaseApplication;
.source "DidiApp.java"


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "images"

.field private static mApp:Lcom/didi/common/base/DidiApp;

.field public static mAsyncRecallCount:I

.field public static mSyncRecallCount:I


# instance fields
.field private mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

.field private mSoundInitComplete:Z

.field private mSoundInitThread:Ljava/lang/Thread;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    :try_start_0
    const-string v1, "didipsgpush"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput v2, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 37
    sput v2, Lcom/didi/common/base/DidiApp;->mAsyncRecallCount:I

    return-void

    .line 23
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 24
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/base/BaseApplication;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z

    .line 124
    new-instance v0, Lcom/didi/common/base/DidiApp$1;

    invoke-direct {v0, p0}, Lcom/didi/common/base/DidiApp$1;-><init>(Lcom/didi/common/base/DidiApp;)V

    iput-object v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/common/base/DidiApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z

    return p1
.end method

.method public static checkAppVersion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.8.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, flag:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appVersion1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appVersion2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appVersion3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setFirstBoot(Z)V

    .line 158
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setAppVesion(Ljava/lang/String;)V

    .line 159
    return-void

    .line 149
    :cond_1
    if-gez v0, :cond_2

    .line 150
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->clear()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/Preferences;->setCommonConfigVersion1(J)V

    .line 153
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/common/config/Preferences;->setCarConfigVersion(I)V

    .line 154
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/common/config/Preferences;->saveCityListVersion(I)V

    .line 155
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->commit()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/common/base/DidiApp;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/didi/common/base/DidiApp;->mApp:Lcom/didi/common/base/DidiApp;

    return-object v0
.end method

.method private initImageFetcher()V
    .locals 4

    .prologue
    .line 164
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getLongestDisplay(Landroid/content/Context;)I

    move-result v1

    .line 165
    .local v1, longest:I
    new-instance v0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    const-string v2, "images"

    invoke-direct {v0, p0, v2}, Lcom/didi/common/cache/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .local v0, cacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;
    const v2, 0x3e4ccccd

    invoke-virtual {v0, v2}, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 167
    new-instance v2, Lcom/didi/common/cache/ImageFetcher;

    invoke-direct {v2, p0, v1}, Lcom/didi/common/cache/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    .line 168
    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    invoke-virtual {v2, v0}, Lcom/didi/common/cache/ImageFetcher;->addImageCache(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V

    .line 169
    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/cache/ImageFetcher;->setImageFadeIn(Z)V

    .line 170
    return-void
.end method

.method public static isDebugMode()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/DidiApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 138
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getVolume()F
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, volume:F
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/didi/common/base/DidiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 113
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 120
    :goto_0
    return v3

    .line 115
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-float v1, v4

    .line 116
    .local v1, currentSound:F
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    int-to-float v2, v4

    .line 117
    .local v2, maxSound:F
    div-float v3, v1, v2

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getmImageFetcher()Lcom/didi/common/cache/ImageFetcher;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    return-object v0
.end method

.method public initSounds()V
    .locals 10

    .prologue
    const v9, 0x7f050003

    const v8, 0x7f050002

    const v7, 0x7f050001

    const/high16 v6, 0x7f05

    const/4 v5, 0x1

    .line 63
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000b

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000c

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000c

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000d

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000e

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000e

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000f

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000f

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050015

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050015

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050016

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050016

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050017

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050017

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050018

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050018

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050019

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050019

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05001a

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05001a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05001c

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05001c

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050005

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050006

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050008

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050010

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050010

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050011

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050011

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050012

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050012

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050013

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050013

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f050014

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050014

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    const v1, 0x7f05000a

    iget-object v2, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/didi/common/base/BaseApplication;->onCreate()V

    .line 45
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/net/http/KDHttpManager;->initOnApplicationCreate(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->initOnApplicationCreate(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/didi/common/base/DidiApp;->checkAppVersion()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z

    .line 51
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    sput-object p0, Lcom/didi/common/base/DidiApp;->mApp:Lcom/didi/common/base/DidiApp;

    .line 54
    invoke-direct {p0}, Lcom/didi/common/base/DidiApp;->initImageFetcher()V

    .line 55
    return-void
.end method

.method public playMustSound(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getVolume()F

    move-result v2

    .line 103
    .local v2, volume:F
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 105
    .end local v2           #volume:F
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 93
    sget-object v0, Lcom/didi/common/base/DidiApp;->mApp:Lcom/didi/common/base/DidiApp;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/common/base/DidiApp;->mSoundInitComplete:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getSoundsSwtich()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/didi/common/base/DidiApp;->getVolume()F

    move-result v2

    .line 95
    .local v2, volume:F
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/didi/common/base/DidiApp;->mSounds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 97
    .end local v2           #volume:F
    :cond_0
    return-void
.end method

.method public releaseImageFetcher()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/didi/common/base/DidiApp;->mImageFetcher:Lcom/didi/common/cache/ImageFetcher;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageFetcher;->closeCache()V

    .line 180
    :cond_0
    return-void
.end method
