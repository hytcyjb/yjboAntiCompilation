.class public Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public diskCacheCount:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public memCacheSize:I

.field public memoryCacheEnabled:Z

.field public recycleImmediately:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "diskCacheDir"

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/high16 v0, 0x80

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 208
    const/high16 v0, 0x320

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 209
    const/16 v0, 0x2710

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 211
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 212
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 213
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 217
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "diskCacheDir"

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/high16 v0, 0x80

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 208
    const/high16 v0, 0x320

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 209
    const/16 v0, 0x2710

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 211
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 212
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 213
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 222
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    .line 248
    const-string v0, "activity"

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 247
    return v0
.end method


# virtual methods
.method public setDiskCacheCount(I)V
    .locals 0
    .parameter "diskCacheCount"

    .prologue
    .line 252
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 253
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 0
    .parameter "diskCacheSize"

    .prologue
    .line 243
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 244
    return-void
.end method

.method public setMemCacheSize(I)V
    .locals 0
    .parameter "memCacheSize"

    .prologue
    .line 239
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 240
    return-void
.end method

.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2
    .parameter "context"
    .parameter "percent"

    .prologue
    const/high16 v1, 0x4480

    .line 230
    const v0, 0x3d4ccccd

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 235
    return-void
.end method

.method public setRecycleImmediately(Z)V
    .locals 0
    .parameter "recycleImmediately"

    .prologue
    .line 256
    iput-boolean p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 257
    return-void
.end method
