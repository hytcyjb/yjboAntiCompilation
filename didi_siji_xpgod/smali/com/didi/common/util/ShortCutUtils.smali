.class public Lcom/didi/common/util/ShortCutUtils;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"


# static fields
.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_NUM_COLOR:I = 0x0

.field private static final DEFAULT_STROKE_COLOR:I = -0x1

.field private static final DEFAULT_STROKE_WIDTH_DIP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AndroidUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "#CCFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/didi/common/util/ShortCutUtils;->DEFAULT_NUM_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNumShortCut(Landroid/content/Context;Ljava/lang/Class;ZLjava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "isShowNum"
    .parameter "num"
    .parameter "isStroke"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {p0, p1, p3}, Lcom/didi/common/util/ShortCutUtils;->xiaoMiShortCut(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-static {p0, p3}, Lcom/didi/common/util/ShortCutUtils;->samsungShortCut(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const-class v0, Lcom/didi/frame/MainActivity;

    invoke-static {p0, v0, p2, p3, p4}, Lcom/didi/common/util/ShortCutUtils;->installRawShortCut(Landroid/content/Context;Ljava/lang/Class;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public static addShortcut(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 56
    const v3, 0x7f0b050f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----------------shortcut title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, shortcutIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {p0, v2, v1}, Lcom/didi/common/util/ShortCutUtils;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, installIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f0201da

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    .end local v0           #installIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static addWebShortcut(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 126
    return-void
.end method

.method public static deleteShortCut(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f0b050f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static dipToPixels(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "dip"

    .prologue
    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 691
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 692
    .local v0, px:F
    float-to-int v2, v0

    return v2
.end method

.method public static generatorNumIcon2(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "context"
    .parameter "icon"
    .parameter "isShowNum"
    .parameter "num"

    .prologue
    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 443
    .local v9, dm:Landroid/util/DisplayMetrics;
    const/high16 v7, 0x3fc0

    .line 444
    .local v7, baseDensity:F
    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    div-float v12, v20, v7

    .line 446
    .local v12, factor:F
    const-string v20, "AndroidUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "density:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v20, "AndroidUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dpi:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v20, "AndroidUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "factor:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x105

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 452
    .local v14, iconSize:I
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v14, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 453
    .local v15, numIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 456
    .local v8, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 457
    .local v13, iconPaint:Landroid/graphics/Paint;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 458
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 459
    new-instance v18, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 460
    .local v18, src:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 461
    .local v11, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 463
    if-eqz p2, :cond_3

    .line 465
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 466
    const-string p3, "0"

    .line 469
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 471
    const-string v20, "AndroidUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "the num is not digit :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string p3, "0"

    .line 475
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 477
    .local v16, numInt:I
    const/16 v20, 0x63

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 478
    const-string p3, "99+"

    .line 483
    :cond_2
    new-instance v17, Landroid/graphics/Paint;

    const/16 v20, 0x101

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 484
    .local v17, numPaint:Landroid/graphics/Paint;
    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    const/high16 v20, 0x41a0

    mul-float v20, v20, v12

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    sget-object v20, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 487
    const/16 v20, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 488
    .local v19, textWidth:I
    const-string v20, "AndroidUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "text width:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/high16 v20, 0x41f0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v5, v0

    .line 496
    .local v5, backgroundHeight:I
    move/from16 v0, v19

    if-le v0, v5, :cond_4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4120

    mul-float v21, v21, v12

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v6, v0

    .line 498
    .local v6, backgroundWidth:I
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 500
    invoke-static/range {p0 .. p0}, Lcom/didi/common/util/ShortCutUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    .line 501
    .local v10, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 502
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 503
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1, v6, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 504
    sub-int v20, v14, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 505
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 507
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 515
    add-int v20, v6, v19

    div-int/lit8 v20, v20, 0x2

    sub-int v20, v14, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41b0

    mul-float v21, v21, v12

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v17

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 517
    .end local v5           #backgroundHeight:I
    .end local v6           #backgroundWidth:I
    .end local v10           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v16           #numInt:I
    .end local v17           #numPaint:Landroid/graphics/Paint;
    .end local v19           #textWidth:I
    :cond_3
    return-object v15

    .restart local v5       #backgroundHeight:I
    .restart local v16       #numInt:I
    .restart local v17       #numPaint:Landroid/graphics/Paint;
    .restart local v19       #textWidth:I
    :cond_4
    move v6, v5

    .line 496
    goto :goto_0
.end method

.method public static generatorNumIcon4(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 29
    .parameter "context"
    .parameter "icon"
    .parameter "isShowNum"
    .parameter "num"

    .prologue
    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 537
    .local v9, dm:Landroid/util/DisplayMetrics;
    const/high16 v7, 0x3fc0

    .line 538
    .local v7, baseDensity:F
    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    div-float v12, v22, v7

    .line 540
    .local v12, factor:F
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x105

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v14, v0

    .line 541
    .local v14, iconSize:I
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v14, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 542
    .local v15, numIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 545
    .local v8, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 546
    .local v13, iconPaint:Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 547
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 548
    new-instance v19, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 549
    .local v19, src:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 550
    .local v11, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 552
    if-eqz p2, :cond_3

    .line 554
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 555
    const-string p3, "0"

    .line 558
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 560
    const-string p3, "0"

    .line 563
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 565
    .local v16, numInt:I
    const/16 v22, 0x63

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 566
    const-string p3, "99+"

    .line 571
    :cond_2
    new-instance v17, Landroid/graphics/Paint;

    const/16 v22, 0x101

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 572
    .local v17, numPaint:Landroid/graphics/Paint;
    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    const/high16 v22, 0x41c8

    mul-float v22, v22, v12

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    sget-object v22, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 575
    const/16 v22, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 576
    .local v21, textWidth:I
    const-string v22, "AndroidUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "text width:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/high16 v22, 0x4000

    mul-float v22, v22, v12

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 585
    .local v20, strokeThickness:I
    const/high16 v22, 0x4170

    mul-float v18, v22, v12

    .line 586
    .local v18, radiusPx:F
    const/high16 v22, 0x4000

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v18

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v5, v0

    .line 587
    .local v5, backgroundHeight:I
    move/from16 v0, v21

    if-le v0, v5, :cond_4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4120

    mul-float v23, v23, v12

    add-float v22, v22, v23

    mul-int/lit8 v23, v20, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v6, v0

    .line 589
    .local v6, backgroundWidth:I
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 591
    invoke-static/range {p0 .. p0}, Lcom/didi/common/util/ShortCutUtils;->getDefaultBackground2(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    .line 592
    .local v10, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 593
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 594
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1, v6, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 595
    sub-int v22, v14, v6

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-int/lit8 v23, v20, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 598
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 606
    add-int v22, v6, v21

    mul-int/lit8 v23, v20, 0x2

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v14, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x41c8

    mul-float v23, v23, v12

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4004

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 610
    .end local v5           #backgroundHeight:I
    .end local v6           #backgroundWidth:I
    .end local v10           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v16           #numInt:I
    .end local v17           #numPaint:Landroid/graphics/Paint;
    .end local v18           #radiusPx:F
    .end local v20           #strokeThickness:I
    .end local v21           #textWidth:I
    :cond_3
    return-object v15

    .restart local v5       #backgroundHeight:I
    .restart local v16       #numInt:I
    .restart local v17       #numPaint:Landroid/graphics/Paint;
    .restart local v18       #radiusPx:F
    .restart local v20       #strokeThickness:I
    .restart local v21       #textWidth:I
    :cond_4
    move v6, v5

    .line 587
    goto :goto_0
.end method

.method private static getDefaultBackground(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 623
    invoke-static {p0, v4}, Lcom/didi/common/util/ShortCutUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 624
    .local v2, r:I
    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 627
    .local v1, outerR:[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 628
    .local v3, rr:Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 629
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lcom/didi/common/util/ShortCutUtils;->DEFAULT_NUM_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    return-object v0
.end method

.method private static getDefaultBackground2(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0x8

    const/4 v7, 0x2

    .line 644
    invoke-static {p0, v5}, Lcom/didi/common/util/ShortCutUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    .line 645
    .local v3, r:I
    new-array v2, v5, [F

    const/4 v5, 0x0

    int-to-float v6, v3

    aput v6, v2, v5

    const/4 v5, 0x1

    int-to-float v6, v3

    aput v6, v2, v5

    int-to-float v5, v3

    aput v5, v2, v7

    const/4 v5, 0x3

    int-to-float v6, v3

    aput v6, v2, v5

    const/4 v5, 0x4

    int-to-float v6, v3

    aput v6, v2, v5

    const/4 v5, 0x5

    int-to-float v6, v3

    aput v6, v2, v5

    const/4 v5, 0x6

    int-to-float v6, v3

    aput v6, v2, v5

    const/4 v5, 0x7

    int-to-float v6, v3

    aput v6, v2, v5

    .line 646
    .local v2, outerR:[F
    invoke-static {p0, v7}, Lcom/didi/common/util/ShortCutUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 649
    .local v0, distance:I
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v4, v2, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 650
    .local v4, rr:Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Lcom/didi/common/util/CustomBorderDrawable;

    invoke-direct {v1, p0, v4}, Lcom/didi/common/util/CustomBorderDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/shapes/Shape;)V

    .line 651
    .local v1, drawable:Lcom/didi/common/util/CustomBorderDrawable;
    invoke-virtual {v1}, Lcom/didi/common/util/CustomBorderDrawable;->getFillpaint()Landroid/graphics/Paint;

    move-result-object v5

    sget v6, Lcom/didi/common/util/ShortCutUtils;->DEFAULT_NUM_COLOR:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    invoke-virtual {v1}, Lcom/didi/common/util/CustomBorderDrawable;->getStrokepaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    invoke-virtual {v1}, Lcom/didi/common/util/CustomBorderDrawable;->getStrokepaint()Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 654
    return-object v1
.end method

.method public static getLaunchActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 666
    .local v3, localPackageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, localIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 670
    .local v2, localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 672
    .local v4, localResolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v2           #localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #localResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, localException:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "selectionTitle"
    .parameter "queryUriString"
    .parameter "selectionIntentUriString"

    .prologue
    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, shortcutCount:I
    const/4 v6, 0x0

    .line 250
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "intent"

    aput-object v4, v2, v3

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 253
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 258
    :cond_0
    if-eqz v6, :cond_1

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    const/4 v6, 0x0

    .line 263
    :cond_1
    return v7

    .line 258
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static installRawShortCut(Landroid/content/Context;Ljava/lang/Class;ZLjava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "isShowNum"
    .parameter "num"
    .parameter "isStroke"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const v4, 0x7f0201c1

    .line 396
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, shortcutIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f0b01e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    if-eqz p4, :cond_0

    .line 411
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/didi/common/util/ShortCutUtils;->generatorNumIcon4(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    return-void

    .line 417
    :cond_0
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/didi/common/util/ShortCutUtils;->generatorNumIcon2(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static isRuningAppProcesses(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 274
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 275
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 277
    .local v3, runningAppProcessInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_3

    .line 278
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 279
    .local v0, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v0, :cond_0

    .line 280
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 293
    .end local v0           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #runningAppProcessInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v4

    .line 282
    .restart local v0       #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #runningAppProcessInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 284
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 285
    goto :goto_0

    .line 283
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 293
    .end local v0           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #runningAppProcessInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static samsungShortCut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "num"

    .prologue
    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 367
    .local v2, numInt:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 368
    const-string p1, "0"

    .line 372
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/didi/common/util/ShortCutUtils;->getLaunchActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, activityName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, localIntent:Landroid/content/Intent;
    const-string v3, "badge_count"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v3, "badge_count_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v3, "badge_count_class_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    return-void

    .line 369
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #localIntent:Landroid/content/Intent;
    :cond_1
    const/16 v3, 0x63

    if-le v2, v3, :cond_0

    .line 370
    const-string p1, "99"

    goto :goto_0
.end method

.method protected static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 15
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 139
    const/4 v12, 0x0

    .line 140
    .local v12, shortcutExists:Z
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v10, queryIntent:Landroid/content/Intent;
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/4 v6, 0x0

    .line 144
    .local v6, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v4, 0x0

    .line 145
    .local v4, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 147
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v13, 0x1

    invoke-virtual {v8, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 149
    .local v11, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v6           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local v7, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .end local v4           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v5, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_19

    .line 156
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 157
    .local v9, packageName:Ljava/lang/String;
    invoke-virtual {v8, v7, v5, v9}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 158
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    invoke-static {p0, v9}, Lcom/didi/common/util/ShortCutUtils;->isRuningAppProcesses(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 162
    :cond_0
    const-string v13, "com.sec.android.app.twlauncher"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 166
    const-string v13, "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_7

    const/4 v12, 0x1

    .line 208
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 209
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    if-eqz v12, :cond_14

    move-object v4, v5

    .end local v5           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v4       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object v6, v7

    .line 217
    .end local v2           #i:I
    .end local v7           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v9           #packageName:Ljava/lang/String;
    .restart local v6       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    .line 218
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 219
    const/4 v11, 0x0

    .line 221
    :cond_3
    if-eqz v6, :cond_4

    .line 222
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 223
    const/4 v6, 0x0

    .line 225
    :cond_4
    if-eqz v4, :cond_5

    .line 226
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 227
    const/4 v4, 0x0

    .line 229
    :cond_5
    if-eqz v1, :cond_6

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v1, 0x0

    .line 234
    :cond_6
    return v12

    .line 166
    .end local v4           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v2       #i:I
    .restart local v5       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v9       #packageName:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 169
    :cond_8
    :try_start_3
    const-string v13, "com.htc.launcher"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 174
    const-string v13, "content://com.htc.launcher.settings/favorites?notify=true"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_9

    const/4 v12, 0x1

    .line 176
    :goto_3
    if-nez v12, :cond_1

    .line 177
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 178
    .local v3, intentMark:Landroid/content/Intent;
    const/high16 v13, 0x1020

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    const-string v13, "content://com.htc.launcher.settings/favorites?notify=true"

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_a

    const/4 v12, 0x1

    .line 181
    :goto_4
    goto :goto_1

    .line 174
    .end local v3           #intentMark:Landroid/content/Intent;
    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    .line 179
    .restart local v3       #intentMark:Landroid/content/Intent;
    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 182
    .end local v3           #intentMark:Landroid/content/Intent;
    :cond_b
    const-string v13, "com.miui.home"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "Xiaomi"

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "MIUI"

    sget-object v14, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_c
    const-string v13, "com.android.launcher"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 188
    :cond_d
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 189
    :cond_e
    const-string v13, "com.motorola.blur.home"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 191
    const-string v13, "content://com.android.launcher.settings/favorites?notify=true"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_f

    const/4 v12, 0x1

    .line 193
    :goto_5
    if-nez v12, :cond_1

    .line 194
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 195
    .restart local v3       #intentMark:Landroid/content/Intent;
    const/high16 v13, 0x1020

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    const-string v13, "content://com.android.launcher.settings/favorites?notify=true"

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_10

    const/4 v12, 0x1

    .line 199
    :goto_6
    goto/16 :goto_1

    .line 191
    .end local v3           #intentMark:Landroid/content/Intent;
    :cond_f
    const/4 v12, 0x0

    goto :goto_5

    .line 196
    .restart local v3       #intentMark:Landroid/content/Intent;
    :cond_10
    const/4 v12, 0x0

    goto :goto_6

    .line 201
    .end local v3           #intentMark:Landroid/content/Intent;
    :cond_11
    const-string v13, "content://com.android.launcher.settings/favorites?notify=true"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_12

    const/4 v12, 0x1

    .line 203
    :goto_7
    if-nez v12, :cond_1

    .line 204
    const-string v13, "content://com.android.launcher2.settings/favorites?notify=true"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v14}, Lcom/didi/common/util/ShortCutUtils;->getShortcutCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v13

    if-lez v13, :cond_13

    const/4 v12, 0x1

    :goto_8
    goto/16 :goto_1

    .line 201
    :cond_12
    const/4 v12, 0x0

    goto :goto_7

    .line 204
    :cond_13
    const/4 v12, 0x0

    goto :goto_8

    .line 155
    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 217
    .end local v2           #i:I
    .end local v5           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v9           #packageName:Ljava/lang/String;
    .restart local v4       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v11, :cond_15

    .line 218
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 219
    const/4 v11, 0x0

    .line 221
    :cond_15
    if-eqz v6, :cond_16

    .line 222
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 223
    const/4 v6, 0x0

    .line 225
    :cond_16
    if-eqz v4, :cond_17

    .line 226
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 227
    const/4 v4, 0x0

    .line 229
    :cond_17
    if-eqz v1, :cond_18

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v1, 0x0

    :cond_18
    throw v13

    .line 217
    .end local v6           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v7       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v6       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto :goto_9

    .end local v4           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v5       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v4       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object v6, v7

    .end local v7           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v6       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto :goto_9

    .end local v4           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v2       #i:I
    .restart local v5       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_19
    move-object v4, v5

    .end local v5           #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v4       #outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object v6, v7

    .end local v7           #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v6       #outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    goto/16 :goto_2
.end method

.method public static xiaoMiShortCut(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, localIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.update_application_component_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    const-string p2, ""

    .line 355
    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.update_application_message_text"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    return-void

    .line 346
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    .local v1, numInt:I
    if-lez v1, :cond_2

    .line 348
    const/16 v2, 0x63

    if-le v1, v2, :cond_0

    .line 349
    const-string p2, "99"

    goto :goto_0

    .line 352
    :cond_2
    const-string p2, "0"

    goto :goto_0
.end method
