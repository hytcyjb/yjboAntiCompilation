.class public Lcom/didi/common/cache/ImageResizer;
.super Lcom/didi/common/cache/ImageWorker;
.source "ImageResizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageResizer"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "imageSize"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/didi/common/cache/ImageResizer;->setImageSize(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/didi/common/cache/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/didi/common/cache/ImageResizer;->setImageSize(II)V

    .line 48
    return-void
.end method

.method private static addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/didi/common/cache/ImageCache;)V
    .locals 2
    .parameter "options"
    .parameter "cache"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 202
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1, p0}, Lcom/didi/common/cache/ImageCache;->getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, inBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 207
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 211
    .end local v0           #inBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 229
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 230
    .local v2, height:I
    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 231
    .local v8, width:I
    const/4 v3, 0x1

    .line 233
    .local v3, inSampleSize:I
    if-gt v2, p2, :cond_0

    if-le v8, p1, :cond_2

    .line 235
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 236
    .local v0, halfHeight:I
    div-int/lit8 v1, v8, 0x2

    .line 241
    .local v1, halfWidth:I
    :goto_0
    div-int v9, v0, v3

    if-le v9, p2, :cond_1

    div-int v9, v1, v3

    if-le v9, p1, :cond_1

    .line 242
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 251
    :cond_1
    mul-int v9, v8, v2

    div-int/2addr v9, v3

    int-to-long v4, v9

    .line 254
    .local v4, totalPixels:J
    mul-int v9, p1, p2

    mul-int/lit8 v9, v9, 0x2

    int-to-long v6, v9

    .line 256
    .local v6, totalReqPixelsCap:J
    :goto_1
    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    .line 257
    mul-int/lit8 v3, v3, 0x2

    .line 258
    const-wide/16 v9, 0x2

    div-long/2addr v4, v9

    goto :goto_1

    .line 261
    .end local v0           #halfHeight:I
    .end local v1           #halfWidth:I
    .end local v4           #totalPixels:J
    .end local v6           #totalReqPixelsCap:J
    :cond_2
    return v3
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;IILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileDescriptor"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "cache"

    .prologue
    const/4 v2, 0x0

    .line 177
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 182
    invoke-static {v0, p1, p2}, Lcom/didi/common/cache/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {v0, p3}, Lcom/didi/common/cache/ImageResizer;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/didi/common/cache/ImageCache;)V

    .line 192
    :cond_0
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;IILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filename"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "cache"

    .prologue
    .line 146
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    invoke-static {v0, p1, p2}, Lcom/didi/common/cache/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {v0, p3}, Lcom/didi/common/cache/ImageResizer;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/didi/common/cache/ImageCache;)V

    .line 159
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "cache"

    .prologue
    .line 114
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    invoke-static {v0, p2, p3}, Lcom/didi/common/cache/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {v0, p4}, Lcom/didi/common/cache/ImageResizer;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/didi/common/cache/ImageCache;)V

    .line 128
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private processBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "resId"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/common/cache/ImageResizer;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/didi/common/cache/ImageResizer;->mImageWidth:I

    iget v2, p0, Lcom/didi/common/cache/ImageResizer;->mImageHeight:I

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageResizer;->getImageCache()Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/didi/common/cache/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIILcom/didi/common/cache/ImageCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/common/cache/ImageResizer;->processBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 78
    invoke-virtual {p0, p1, p1}, Lcom/didi/common/cache/ImageResizer;->setImageSize(II)V

    .line 79
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    iput p1, p0, Lcom/didi/common/cache/ImageResizer;->mImageWidth:I

    .line 69
    iput p2, p0, Lcom/didi/common/cache/ImageResizer;->mImageHeight:I

    .line 70
    return-void
.end method
