.class public Lutil/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutil/ImageUtil$ImageListener;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x500

.field public static final SCREEN_SHOT:Ljava/lang/String; = "screenshot.png"

.field private static final TAG:Ljava/lang/String; = "ImageUtil"

.field private static defaultOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lutil/ImageUtil;->computeBitmapOptions()V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    return-void
.end method

.method public static clear(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 769
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 770
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    :cond_0
    return-void
.end method

.method private static combineScreenShot(Landroid/graphics/Bitmap;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "bit"
    .parameter "f"
    .parameter "activity"

    .prologue
    .line 1234
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 1235
    .local v11, view:Landroid/view/View;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1236
    invoke-virtual {v11}, Landroid/view/View;->buildDrawingCache()V

    .line 1237
    invoke-virtual {v11}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1239
    .local v1, b:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 1240
    .local v9, title:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/FragmentMgr;->getTitleBarFragment()Landroid/support/v4/app/Fragment;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1241
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/FragmentMgr;->getTitleBarFragment()Landroid/support/v4/app/Fragment;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 1242
    .local v10, v:Landroid/view/View;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1243
    invoke-virtual {v10}, Landroid/view/View;->buildDrawingCache()V

    .line 1244
    invoke-virtual {v10}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1246
    .end local v10           #v:Landroid/view/View;
    :cond_0
    const/4 v8, 0x0

    .line 1247
    .local v8, switcher:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/FragmentMgr;->getSwitcherFragment()Landroid/support/v4/app/Fragment;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1248
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/FragmentMgr;->getSwitcherFragment()Landroid/support/v4/app/Fragment;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 1249
    .local v7, s:Landroid/view/View;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1250
    invoke-virtual {v7}, Landroid/view/View;->buildDrawingCache()V

    .line 1251
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1253
    .end local v7           #s:Landroid/view/View;
    :cond_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1254
    .local v5, metric:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1255
    iget v12, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1256
    .local v12, width:I
    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1257
    .local v4, height:I
    add-int/lit8 v14, v12, 0x64

    add-int/lit8 v15, v4, 0x64

    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1259
    .local v2, bmpall:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1260
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1261
    .local v6, paint:Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    add-int/lit8 v16, v12, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-int/lit8 v17, v4, 0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1262
    .local v13, y:Landroid/graphics/RectF;
    if-eqz p0, :cond_2

    .line 1263
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v14, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1264
    :cond_2
    if-eqz v8, :cond_3

    .line 1265
    const/4 v14, 0x0

    invoke-virtual {v3, v8, v14, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1266
    :cond_3
    if-eqz v1, :cond_4

    .line 1267
    const/4 v14, 0x0

    invoke-virtual {v3, v1, v14, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1268
    :cond_4
    if-eqz v9, :cond_5

    .line 1269
    const/4 v14, 0x0

    invoke-virtual {v3, v9, v14, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1270
    :cond_5
    invoke-static {v2}, Lutil/ImageUtil;->comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1272
    return-object v2
.end method

.method private static comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "image"

    .prologue
    const/4 v12, 0x0

    .line 1298
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1299
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {p0, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1300
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    array-length v10, v10

    div-int/lit16 v10, v10, 0x400

    const/16 v11, 0x400

    if-le v10, v11, :cond_0

    .line 1301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1302
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x32

    invoke-virtual {p0, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1304
    :cond_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1305
    .local v6, isBm:Ljava/io/ByteArrayInputStream;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1307
    .local v7, newOpts:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1308
    invoke-static {v6, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1309
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1310
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1311
    .local v8, w:I
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1313
    .local v4, h:I
    const/high16 v5, 0x4448

    .line 1314
    .local v5, hh:F
    const/high16 v9, 0x43f0

    .line 1316
    .local v9, ww:F
    const/4 v1, 0x1

    .line 1317
    .local v1, be:I
    if-le v8, v4, :cond_3

    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_3

    .line 1318
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    float-to-int v1, v10

    .line 1322
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    .line 1323
    const/4 v1, 0x1

    .line 1324
    :cond_2
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1326
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #isBm:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1327
    .restart local v6       #isBm:Ljava/io/ByteArrayInputStream;
    invoke-static {v6, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1330
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_1
    return-object v2

    .line 1319
    :cond_3
    if-ge v8, v4, :cond_1

    int-to-float v10, v4

    cmpl-float v10, v10, v5

    if-lez v10, :cond_1

    .line 1320
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v1, v10

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v3

    .line 1332
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static computeBitmapOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 378
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    .line 379
    sget-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    sget-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 381
    sget-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 382
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getScaleRatio()F

    move-result v1

    .line 383
    .local v1, scaleRatio:F
    const/high16 v2, 0x3f80

    div-float/2addr v2, v1

    float-to-int v0, v2

    .line 384
    .local v0, sampleSize:I
    sget-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sampleSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleRatio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static copy(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1043
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    :cond_0
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 517
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    .line 519
    :cond_1
    const/4 v0, 0x0

    .line 521
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 554
    if-nez p0, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 565
    :goto_0
    return-object v0

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 558
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v2, p1, v3}, Lutil/ImageUtil;->getBitmapOptions(Landroid/content/res/Resources;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 560
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 562
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v0, 0x0

    .line 581
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 583
    :cond_1
    invoke-static {p0, p1}, Lutil/ImageUtil;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 584
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, p1, p2}, Lutil/ImageUtil;->getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 585
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 587
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_0

    .line 590
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 592
    .local v3, tmp:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_3

    .line 593
    invoke-static {v0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 594
    :cond_3
    if-eqz v3, :cond_0

    .line 595
    move-object v0, v3

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 811
    const/16 v0, 0x500

    invoke-static {p0, p1, v0}, Lutil/ImageUtil;->createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "maxSize"

    .prologue
    .line 816
    if-eqz p0, :cond_0

    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    :cond_0
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    .line 818
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-static {p1, p2}, Lutil/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 878
    if-nez p0, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 887
    :goto_0
    return-object v0

    .line 880
    :cond_0
    move-object v0, p0

    .line 883
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    goto :goto_0

    .line 885
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "file"

    .prologue
    .line 513
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lutil/ImageUtil;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 529
    if-nez p0, :cond_0

    .line 537
    :goto_0
    return-object v0

    .line 531
    :cond_0
    const/4 v0, 0x0

    .line 533
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v2, 0x500

    :try_start_0
    invoke-static {p0, v2}, Lutil/ImageUtil;->getBitmapOptions(Ljava/io/InputStream;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 534
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 535
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static createBitmap(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "is"
    .parameter "options"

    .prologue
    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 497
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v1, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 502
    if-eqz v1, :cond_2

    .line 504
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 509
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 505
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 506
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 507
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 499
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 500
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    if-eqz v0, :cond_0

    .line 504
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 505
    :catch_2
    move-exception v3

    .line 506
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 504
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 507
    :cond_1
    :goto_3
    throw v4

    .line 505
    :catch_3
    move-exception v3

    .line 506
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 502
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 499
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static createBitmap(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 542
    if-nez p0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 550
    :goto_0
    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 546
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"

    .prologue
    .line 460
    const/16 v0, 0x500

    invoke-static {p0, v0}, Lutil/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-object v2

    .line 466
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lutil/ImageUtil;->getBitmapOptions(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 471
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 473
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 474
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v1, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 483
    if-eqz v1, :cond_3

    .line 485
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 488
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 486
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 487
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 488
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 476
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 478
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    if-eqz v0, :cond_0

    .line 485
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 486
    :catch_2
    move-exception v3

    .line 487
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 480
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 481
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    if-eqz v0, :cond_0

    .line 485
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 486
    :catch_4
    move-exception v3

    .line 487
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 485
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 488
    :cond_2
    :goto_4
    throw v6

    .line 486
    :catch_5
    move-exception v3

    .line 487
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 483
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 480
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 476
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static createBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 823
    if-eqz p0, :cond_0

    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 840
    :cond_1
    :goto_0
    return-object v0

    .line 825
    :cond_2
    const/4 v0, 0x0

    .line 826
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 828
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 829
    invoke-static {v2}, Lutil/ImageUtil;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 834
    if-eqz v2, :cond_1

    .line 835
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 830
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 831
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    if-eqz v2, :cond_1

    .line 835
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 836
    :catch_2
    move-exception v1

    .line 837
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 833
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 834
    if-eqz v2, :cond_3

    .line 835
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 838
    :cond_3
    :goto_1
    throw v3

    .line 836
    :catch_3
    move-exception v1

    .line 837
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 844
    if-eqz p0, :cond_0

    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 845
    :cond_0
    const/4 v0, 0x0

    .line 861
    :cond_1
    :goto_0
    return-object v0

    .line 846
    :cond_2
    const/4 v0, 0x0

    .line 847
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 849
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 850
    invoke-static {v2}, Lutil/ImageUtil;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 855
    if-eqz v2, :cond_1

    .line 856
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 851
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 852
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 855
    if-eqz v2, :cond_1

    .line 856
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 857
    :catch_2
    move-exception v1

    .line 858
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 855
    if-eqz v2, :cond_3

    .line 856
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 859
    :cond_3
    :goto_1
    throw v3

    .line 857
    :catch_3
    move-exception v1

    .line 858
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resId"

    .prologue
    .line 569
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createDrawable(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 1165
    const/4 v1, 0x0

    .line 1167
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 1171
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    if-nez v1, :cond_0

    .line 1173
    :goto_1
    return-object v3

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1173
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    invoke-static {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static createReflectedBitmap(Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "b"
    .parameter "reflectionFraction"
    .parameter "dropShadowRadius"
    .parameter "sideShadowColor"

    .prologue
    .line 1070
    const/4 v2, 0x0

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 1117
    .end local p0
    :goto_0
    return-object p0

    .line 1075
    .restart local p0
    :cond_0
    move/from16 v16, p2

    .line 1079
    .local v16, padding:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v16, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v16, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float v5, v5, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1084
    .local v18, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1087
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1088
    .local v6, dropShadow:Landroid/graphics/Paint;
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x100

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1089
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int v4, v4, v16

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v5, v16

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1093
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1096
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 1097
    .local v15, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1098
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1100
    .local v17, reflectionHeight:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    move/from16 v0, v17

    neg-int v4, v0

    sub-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int v5, v5, v16

    move/from16 v0, v16

    neg-int v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move/from16 v0, v16

    invoke-direct {v3, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1106
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1109
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v11, v2

    const/high16 v12, 0x4000

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v13, p3

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1111
    .local v7, shader:Landroid/graphics/LinearGradient;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1112
    .local v13, paint:Landroid/graphics/Paint;
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1113
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1114
    move/from16 v0, v16

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v11, v2

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float v4, v4, p1

    mul-float/2addr v3, v4

    add-float v12, v2, v3

    move-object v8, v1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 p0, v18

    .line 1117
    goto/16 :goto_0
.end method

.method public static createSuitableDrawable(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resId"

    .prologue
    .line 1177
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1179
    .local v1, is:Ljava/io/InputStream;
    sget-object v2, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Lutil/ImageUtil;->createBitmap(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1180
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 1181
    return-object v0
.end method

.method public static createSuitableDrawable(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "is"

    .prologue
    .line 1192
    sget-object v1, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v1}, Lutil/ImageUtil;->createBitmap(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1193
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->closeInputStream(Ljava/io/InputStream;)V

    .line 1194
    return-object v0
.end method

.method private static crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "sourceBitmap"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "recycleSource"

    .prologue
    const/4 v6, 0x0

    .line 275
    if-nez p0, :cond_1

    .line 276
    const/4 v0, 0x0

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    .line 281
    .local v0, croppedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 282
    .local v2, xDiff:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 283
    .local v4, yDiff:I
    div-int/lit8 v1, v2, 0x2

    .line 284
    .local v1, x:I
    div-int/lit8 v3, v4, 0x2

    .line 288
    .local v3, y:I
    :try_start_0
    invoke-static {p0, v1, v3, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_1
    if-eqz p3, :cond_0

    if-eq p0, v0, :cond_0

    .line 295
    invoke-static {p0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static crop(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmapPath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 237
    invoke-static {p0}, Lutil/ImageUtil;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, bitmap:Landroid/graphics/Bitmap;
    int-to-float v1, p1

    int-to-float v2, p2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, v1, v2, v3, v4}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    invoke-static {v0, p1, p2, v4}, Lutil/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeWithOOMHandling(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "res"
    .parameter "imagePath"

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1052
    .local v1, result:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 1065
    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, result:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 1056
    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #result:Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v2

    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    move-object v2, v1

    .line 1065
    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #result:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 1057
    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageUtil"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1062
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1063
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method public static decorate(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "dots"

    .prologue
    const/4 v9, 0x0

    .line 923
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v9

    .line 939
    .end local p0
    :goto_0
    return-object p0

    .line 925
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 926
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 928
    .local v7, h:I
    :try_start_0
    array-length v0, p1

    mul-int v1, v3, v7

    if-eq v0, v1, :cond_2

    move-object p0, v9

    .line 929
    goto :goto_0

    .line 930
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    .line 931
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 934
    :catch_0
    move-exception v8

    .line 935
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_1
    move-object p0, v9

    .line 939
    goto :goto_0

    .line 936
    :catch_1
    move-exception v8

    .line 937
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 88
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x0

    .line 418
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 433
    :goto_0
    return-object v1

    .line 420
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 422
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lutil/ImageUtil;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 424
    .local v0, fd:Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 425
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 427
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_1
    div-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 431
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_0

    .line 427
    :cond_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1
.end method

.method public static getBitmapOptions(Landroid/content/res/Resources;II)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "res"
    .parameter "resId"
    .parameter "maxSize"

    .prologue
    .line 407
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 408
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 410
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    div-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 414
    return-object v0

    .line 410
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getBitmapOptions(Ljava/io/InputStream;I)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "is"
    .parameter "maxSize"

    .prologue
    .line 396
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 397
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 398
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 399
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    div-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 403
    return-object v0

    .line 399
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getBitmapOptions(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "path"
    .parameter "maxSize"

    .prologue
    const/4 v3, 0x1

    .line 367
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 368
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 369
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 370
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    if-ge p1, v3, :cond_0

    const/16 p1, 0x500

    .end local p1
    :cond_0
    div-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 373
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 374
    return-object v0

    .line 370
    .restart local p1
    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getBlurImage(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "activity"

    .prologue
    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenshot.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1278
    .local v0, bmpBlurred:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 391
    invoke-static {}, Lutil/ImageUtil;->computeBitmapOptions()V

    .line 392
    :cond_0
    sget-object v0, Lutil/ImageUtil;->defaultOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public static getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 437
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 438
    :cond_0
    const/4 v2, 0x0

    .line 456
    :cond_1
    :goto_0
    return-object v2

    .line 439
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 441
    .local v4, res:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 442
    .local v3, parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 444
    .local v2, fd:Ljava/io/FileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 450
    if-eqz v3, :cond_1

    .line 451
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 447
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    if-eqz v3, :cond_1

    .line 451
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 452
    :catch_2
    move-exception v0

    .line 453
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 450
    if-eqz v3, :cond_3

    .line 451
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 454
    :cond_3
    :goto_1
    throw v5

    .line 452
    :catch_3
    move-exception v0

    .line 453
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageNameByTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 994
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 995
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "postfix"

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lutil/ImageUtil;->getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "postfix"
    .parameter "ignoreTag"

    .prologue
    .line 1024
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1039
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1027
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1028
    .local v2, lastIndex:I
    if-gez v2, :cond_2

    .line 1029
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1030
    :cond_2
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 1031
    .local v0, beginIndex:I
    const-string v4, "%2F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x3

    .line 1032
    .local v3, slashIndex:I
    const-string v4, "%252F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x5

    .line 1033
    .local v1, finalSlashIndex:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1036
    if-lt v0, v2, :cond_3

    .line 1037
    const/4 p0, 0x0

    goto :goto_0

    .line 1039
    :cond_3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getIntArray(Landroid/graphics/Bitmap;)[I
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 897
    if-nez p0, :cond_0

    .line 898
    const/4 v1, 0x0

    .line 910
    :goto_0
    return-object v1

    .line 899
    :cond_0
    const/4 v1, 0x0

    .line 900
    .local v1, pix:[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 901
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 903
    .local v7, h:I
    mul-int v0, v3, v7

    :try_start_0
    new-array v1, v0, [I

    .line 904
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 905
    :catch_0
    move-exception v8

    .line 906
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 907
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 908
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 223
    :goto_0
    return-object v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    .line 214
    .local v0, resizedBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    invoke-static {p0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v10, 0x0

    .line 1343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1345
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1347
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 1348
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1349
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1350
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1351
    .local v5, rectF:Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    .line 1353
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1354
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1355
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1356
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1358
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1359
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1360
    return-object v2
.end method

.method public static refresh(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;I)I
    .locals 2
    .parameter "iv"
    .parameter "imgTagId"
    .parameter "bitmap"
    .parameter "resId"

    .prologue
    .line 794
    if-nez p0, :cond_0

    .line 795
    const/4 v0, 0x0

    .line 807
    :goto_0
    return v0

    .line 796
    :cond_0
    const/4 v0, 0x0

    .line 797
    .local v0, hashCode:I
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 798
    .local v1, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    if-eq v1, p2, :cond_1

    .line 799
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 800
    invoke-static {v1}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 802
    :cond_1
    if-nez p2, :cond_2

    .line 803
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 805
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static refresh(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "iv"
    .parameter "imgTagId"
    .parameter "bitmap"
    .parameter "defaultBitmap"

    .prologue
    .line 783
    if-nez p0, :cond_0

    .line 790
    .end local p3
    :goto_0
    return-void

    .line 785
    .restart local p3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 786
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eq v0, p2, :cond_1

    .line 787
    invoke-static {v0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 788
    :cond_1
    if-nez p2, :cond_2

    .end local p3
    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 789
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .restart local p3
    :cond_2
    move-object p3, p2

    .line 788
    goto :goto_1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "aMaxWidth"
    .parameter "aMaxHeight"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 115
    .local v5, originWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 118
    .local v4, originHeight:I
    if-ge v5, p1, :cond_1

    if-ge v4, p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object p0

    .line 122
    :cond_1
    move v3, v5

    .line 123
    .local v3, newWidth:I
    move v2, v4

    .line 125
    .local v2, newHeight:I
    if-le v5, p1, :cond_2

    .line 126
    move v3, p1

    .line 128
    int-to-double v7, v5

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    int-to-double v9, p1

    div-double v0, v7, v9

    .line 129
    .local v0, i:D
    int-to-double v7, v4

    div-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 131
    const/4 v7, 0x1

    invoke-static {p0, v3, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 135
    .end local v0           #i:D
    :cond_2
    if-le v2, p2, :cond_0

    .line 136
    move v2, p2

    .line 138
    sub-int v7, v4, p2

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    double-to-int v6, v7

    .line 139
    .local v6, startPointY:I
    const/4 v7, 0x0

    invoke-static {p0, v7, v6, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 613
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lutil/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"
    .parameter "recycleSource"

    .prologue
    .line 668
    if-nez p0, :cond_1

    .line 669
    const/4 p0, 0x0

    .line 680
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 670
    .restart local p0
    :cond_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    :cond_2
    if-lez p3, :cond_5

    if-gtz p1, :cond_3

    if-lez p2, :cond_5

    .line 671
    :cond_3
    invoke-static {p0, p1, p2, p6}, Lutil/ImageUtil;->scaleAndCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 677
    :cond_4
    :goto_1
    if-lez p3, :cond_0

    .line 678
    invoke-static {p0, p1, p2, p3, p6}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 672
    :cond_5
    if-eqz p5, :cond_6

    .line 673
    int-to-float v0, p1

    int-to-float v1, p2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-static {p0, v0, v1, v2, p6}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 675
    :cond_6
    if-eqz p4, :cond_4

    .line 676
    invoke-static {p0, p1, p2, p6}, Lutil/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static revise(Ljava/lang/String;IIIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filepath"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 715
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1}, Lutil/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 717
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 718
    const/4 v1, 0x0

    .line 719
    :goto_0
    return-object v1

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lutil/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static revise(Ljava/lang/String;Landroid/content/Context;IIIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filename"
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 697
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p0, v1}, Lutil/ImageUtil;->createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 699
    invoke-static/range {v0 .. v5}, Lutil/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZLutil/ImageUtil$ImageListener;)V
    .locals 8
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"
    .parameter "listener"

    .prologue
    .line 630
    new-instance v0, Lutil/ImageUtil$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lutil/ImageUtil$1;-><init>(Landroid/graphics/Bitmap;IIIZZLutil/ImageUtil$ImageListener;)V

    .line 649
    .local v0, job:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 650
    return-void
.end method

.method public static round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "recycleSource"

    .prologue
    const/4 v6, 0x0

    .line 157
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v4, p0

    .line 183
    :cond_1
    :goto_0
    return-object v4

    .line 160
    :cond_2
    const/4 v4, 0x0

    .line 162
    .local v4, ret:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 166
    :goto_1
    if-nez v4, :cond_3

    .line 167
    const/4 v4, 0x0

    goto :goto_0

    .line 169
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 171
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .local v3, rectF:Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 176
    const v5, -0xbdbdbe

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    int-to-float v5, p3

    int-to-float v6, p3

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 180
    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 181
    if-eqz p4, :cond_1

    .line 182
    invoke-static {p0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 163
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #rectF:Landroid/graphics/RectF;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "radius"
    .parameter "recycleSource"

    .prologue
    .line 194
    if-lez p1, :cond_0

    if-nez p0, :cond_1

    .line 196
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static save(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "path"
    .parameter "bmpall"

    .prologue
    .line 1282
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1284
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1287
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1288
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/location/Location;I[BLjava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "path"

    .prologue
    .line 957
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 958
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 961
    .local v0, d:Ljava/util/Date;
    const-string v3, "datetaken"

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v3, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v3, "_size"

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    if-eqz p2, :cond_0

    .line 968
    const-string v3, "latitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 969
    const-string v3, "longitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 972
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 973
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 974
    const/4 v1, 0x0

    .line 976
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-object v1
.end method

.method public static scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "sourceBitmap"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleType"
    .parameter "recycleSource"

    .prologue
    .line 317
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    :cond_0
    const/4 p0, 0x0

    .line 363
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 320
    .restart local p0
    :cond_2
    const/4 v9, 0x0

    .line 324
    .local v9, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v12, v1

    .line 325
    .local v12, sourceWidth:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v10, v1

    .line 327
    .local v10, sourceHeight:F
    div-float v11, v12, v10

    .line 328
    .local v11, sourceRatio:F
    div-float v13, p1, p2

    .line 331
    .local v13, targetRatio:F
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 332
    cmpl-float v1, v11, v13

    if-lez v1, :cond_4

    div-float v8, p2, v10

    .line 339
    .local v8, scale:F
    :goto_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v8, v1

    if-eqz v1, :cond_1

    .line 343
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 344
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 350
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 361
    :goto_2
    if-eqz p4, :cond_3

    if-eq p0, v9, :cond_3

    .line 362
    invoke-static {p0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object p0, v9

    .line 363
    goto :goto_0

    .line 332
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scale:F
    :cond_4
    div-float v8, p1, v12

    goto :goto_1

    .line 335
    :cond_5
    cmpg-float v1, v11, v13

    if-gez v1, :cond_6

    div-float v8, p2, v10

    .restart local v8       #scale:F
    :goto_3
    goto :goto_1

    .end local v8           #scale:F
    :cond_6
    div-float v8, p1, v12

    goto :goto_3

    .line 357
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #scale:F
    :catch_0
    move-exception v1

    goto :goto_2

    .line 356
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static scaleAndCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "recycleSource"

    .prologue
    .line 255
    int-to-float v0, p1

    int-to-float v1, p2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-static {p0, v0, v1, v2, p3}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 257
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lutil/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static sizeOf(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 1188
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static takeBlurImage(Landroid/graphics/Bitmap;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 4
    .parameter "bit"
    .parameter "f"
    .parameter "activity"

    .prologue
    .line 1226
    invoke-static {p0, p1, p2}, Lutil/ImageUtil;->combineScreenShot(Landroid/graphics/Bitmap;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1227
    .local v0, image:Landroid/graphics/Bitmap;
    const/16 v2, 0x19

    invoke-static {p2, v0, v2}, Lutil/Blur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1228
    .local v1, newImg:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "screenshot.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lutil/ImageUtil;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1229
    return-void
.end method

.method public static takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "activity"

    .prologue
    const/4 v12, 0x0

    .line 1199
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1200
    .local v7, view:Landroid/view/View;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1201
    invoke-virtual {v7}, Landroid/view/View;->buildDrawingCache()V

    .line 1202
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1204
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1205
    .local v3, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1206
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 1208
    .local v6, statusBarHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 1209
    .local v8, width:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 1211
    .local v4, height:I
    sub-int v10, v4, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1213
    .local v1, bmpall:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1214
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1215
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v8

    sub-int v11, v4, v6

    int-to-float v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1216
    .local v9, y:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v10, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1218
    invoke-static {v1}, Lutil/ImageUtil;->comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1222
    return-object v1
.end method

.method public static toBytes(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 980
    if-nez p0, :cond_0

    .line 981
    const/4 v1, 0x0

    .line 990
    :goto_0
    return-object v1

    .line 982
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 983
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x41

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 984
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 986
    .local v1, bytes:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 987
    :catch_0
    move-exception v2

    .line 988
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "bitmap"
    .parameter "path"
    .parameter "quality"
    .parameter "recycleSource"

    .prologue
    const/4 v4, 0x0

    .line 733
    if-nez p0, :cond_1

    move-object p1, v4

    .line 760
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 737
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 739
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 740
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 743
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 745
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 746
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 747
    .local v3, fos:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 748
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 749
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    if-eqz p3, :cond_0

    .line 758
    invoke-static {p0}, Lutil/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p1, v4

    .line 753
    goto :goto_0

    .line 754
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 755
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 1133
    if-nez p0, :cond_0

    .line 1134
    const/4 v7, 0x0

    .line 1146
    :goto_0
    return-object v7

    .line 1136
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1137
    .local v3, bmpWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1139
    .local v4, bmpHeight:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 1140
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 1142
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1143
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1144
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1146
    .local v7, resizeBmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method
