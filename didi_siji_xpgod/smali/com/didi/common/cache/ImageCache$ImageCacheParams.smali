.class public Lcom/didi/common/cache/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "diskCacheDirectoryName"

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/16 v0, 0x1400

    iput v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 451
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 453
    invoke-static {}, Lcom/didi/common/cache/ImageCache;->access$100()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 454
    const/16 v0, 0x46

    iput v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->compressQuality:I

    .line 455
    iput-boolean v1, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 456
    iput-boolean v1, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 469
    invoke-static {p1, p2}, Lcom/didi/common/cache/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 470
    return-void
.end method


# virtual methods
.method public setMemCacheSizePercent(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 486
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/didi/common/cache/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 491
    return-void
.end method
