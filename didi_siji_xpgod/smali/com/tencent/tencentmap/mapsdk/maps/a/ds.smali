.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ds;
.super Ljava/lang/Object;
.source "MapUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:F

.field public static f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Landroid/graphics/Bitmap;

.field public static final k:I

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:F

.field public static t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;

    .line 73
    const-string v0, "TencentMapSDK"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b:Ljava/lang/String;

    .line 77
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    .line 78
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    .line 79
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    .line 80
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;

    .line 82
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    .line 83
    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->z:I

    .line 84
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    .line 85
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d:Ljava/lang/String;

    .line 90
    const/high16 v0, 0x3f80

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e:F

    .line 110
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    .line 113
    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->g:I

    .line 114
    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->h:I

    .line 115
    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->i:I

    .line 150
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->j:Landroid/graphics/Bitmap;

    .line 152
    const/16 v0, 0xc8

    const/16 v1, 0xa3

    const/16 v2, 0xff

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->k:I

    .line 155
    const-string v0, "mark_location_big.png"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->l:Ljava/lang/String;

    .line 160
    const/4 v0, 0x2

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    .line 165
    const v0, 0x3d0900

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->n:I

    .line 167
    const v0, 0x3305860

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->o:I

    .line 169
    const v0, 0x4641d70

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->p:I

    .line 171
    const v0, 0x80d7660

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->q:I

    .line 186
    const/16 v0, 0xa0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->r:I

    .line 188
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->s:F

    .line 190
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    return-void
.end method

.method public static a(I)F
    .locals 2
    .parameter "iColor"

    .prologue
    .line 690
    int-to-float v0, p0

    .line 691
    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method public static final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "high"
    .parameter "conf"

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "mContex"
    .parameter "iResId"

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "mContex"
    .parameter "strFile"

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, inputStr:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 555
    :goto_0
    if-nez v1, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 568
    :goto_1
    return-object v0

    .line 551
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 560
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 561
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 566
    :catch_1
    move-exception v2

    goto :goto_1

    .line 563
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "map"

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 589
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "strPath"

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 6
    .parameter "mLatlng"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 663
    if-nez p0, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 668
    :goto_0
    return-object v0

    .line 666
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 7
    .parameter "geoPt"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 672
    if-nez p0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 677
    :goto_0
    return-object v0

    .line 675
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v5

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "android mapsdk:2.0.31"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter "contexObj"

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1
    .parameter "boChina"

    .prologue
    .line 947
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 948
    const v0, 0x4641d70

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->p:I

    .line 949
    const v0, 0x80d7660

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->q:I

    .line 950
    const v0, 0x3305860

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->o:I

    .line 951
    const v0, 0x3d0900

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->n:I

    .line 959
    :goto_0
    return-void

    .line 953
    :cond_0
    const v0, -0xaba9500

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->p:I

    .line 954
    const v0, 0xaba9500

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->q:I

    .line 955
    const v0, 0x510ff40

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->o:I

    .line 956
    const v0, -0x510ff40

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->n:I

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "contxt"
    .parameter "strimgname"

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 604
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 607
    .local v1, iBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tencentmap/mapsdk_vector/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 608
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 609
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "mapRes"

    .prologue
    .line 629
    if-eqz p0, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 631
    .local v1, fXHBmpWidth:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 632
    .local v0, fXHBmpHigh:F
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e:F

    div-float v4, v1, v4

    float-to-int v3, v4

    .line 633
    .local v3, iNewWidht:I
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e:F

    div-float v4, v0, v4

    float-to-int v2, v4

    .line 635
    .local v2, iNewHigh:I
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 641
    :cond_0
    :goto_0
    return-object p0

    .line 638
    :catch_0
    move-exception v4

    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strOriginal"

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    const-string v0, ""

    .line 234
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const-string v0, "&"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 247
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 249
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 250
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 255
    :cond_0
    :goto_0
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->z:I

    if-nez v1, :cond_1

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->z:I

    .line 258
    :cond_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 260
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 261
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 267
    :cond_2
    :goto_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 269
    :try_start_2
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 270
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 276
    :cond_3
    :goto_2
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 278
    if-nez p0, :cond_e

    :try_start_3
    const-string v1, ""

    .line 279
    :cond_4
    :goto_3
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 285
    :cond_5
    :goto_4
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 287
    :try_start_4
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 288
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 294
    :cond_6
    :goto_5
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 296
    :try_start_5
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_10

    const-string v1, ""

    .line 297
    :cond_7
    :goto_6
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    const-string v2, "[^a-zA-Z0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 298
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 303
    :cond_8
    :goto_7
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 305
    if-nez p0, :cond_12

    :try_start_6
    const-string v1, ""

    .line 306
    :cond_9
    :goto_8
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 311
    :cond_a
    :goto_9
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 313
    :try_start_7
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 314
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 318
    :cond_b
    :goto_a
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 320
    :try_start_8
    const-string v1, "key=%s&output=json&ref=%s&pf=%s&imei=%s&pid=%s&os=%s&hm=%s&imsi=%s&mac=%s"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "androidsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->z:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 326
    :cond_c
    :goto_b
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_d

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .line 328
    .local v0, fDestiDpi:F
    const/high16 v1, 0x43a0

    div-float/2addr v1, v0

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e:F

    .line 332
    .end local v0           #fDestiDpi:F
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->s:F

    .line 333
    return-void

    .line 278
    :cond_e
    :try_start_9
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_f

    const-string v1, ""

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_3

    .line 296
    :cond_10
    :try_start_a
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, ""

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    .line 305
    :cond_12
    :try_start_b
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_13

    const-string v1, ""

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto/16 :goto_a

    :catch_2
    move-exception v1

    goto/16 :goto_9

    :catch_3
    move-exception v1

    goto/16 :goto_7

    :catch_4
    move-exception v1

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto/16 :goto_0
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "contxt"
    .parameter "strimgname"

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 647
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 648
    .local v1, iBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 650
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 651
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 652
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v3, v1

    .line 657
    :goto_1
    return-object v3

    .line 653
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    const-string v0, "http://apikey.map.qq.com/mkey/index.php/mkey/check?key=%s&output=json&ref=%s&pf=%s&imei=%s&pid=%s&os=%s&hm=%s&imsi=%s&mac=%s&nt=%s&suid=%s&ver=%s"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->w:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "androidsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->A:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->u:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->v:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->x:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "2.0.31"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, md5:Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 366
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 367
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 369
    .end local p0
    :goto_1
    return-object p0

    .restart local p0
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 11
    .parameter "contexObj"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const-wide/32 v6, 0x25800

    .line 486
    if-nez p0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 491
    .local v2, displayMetr:Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    .line 493
    .local v3, fieldDisDpi:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "densityDpi"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 498
    :goto_1
    if-eqz v3, :cond_5

    .line 500
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    int-to-long v0, v4

    .line 503
    .local v0, ScreenPixels:J
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->r:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :goto_2
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->r:I

    const/16 v5, 0x78

    if-gt v4, v5, :cond_1

    .line 510
    sput v8, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 504
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 506
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 511
    :cond_1
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->r:I

    const/16 v5, 0xa0

    if-le v4, v5, :cond_4

    .line 512
    sget v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->r:I

    const/16 v5, 0xf0

    if-gt v4, v5, :cond_2

    .line 514
    sput v9, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 516
    :cond_2
    cmp-long v4, v0, v6

    if-lez v4, :cond_3

    .line 517
    sput v9, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 518
    :cond_3
    cmp-long v4, v0, v6

    if-gez v4, :cond_4

    .line 519
    sput v8, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 521
    :cond_4
    sput v10, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 525
    .end local v0           #ScreenPixels:J
    :cond_5
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    int-to-long v0, v4

    .line 527
    .restart local v0       #ScreenPixels:J
    cmp-long v4, v0, v6

    if-lez v4, :cond_6

    .line 528
    sput v9, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 529
    :cond_6
    cmp-long v4, v0, v6

    if-gez v4, :cond_7

    .line 530
    sput v8, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .line 532
    :cond_7
    sput v10, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->m:I

    goto :goto_0

    .end local v0           #ScreenPixels:J
    :catch_2
    move-exception v4

    goto :goto_1

    .line 496
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "mcontex"
    .parameter "strimgname"

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 917
    .local v0, assetManager:Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 918
    const/4 v1, 0x0

    .line 927
    :goto_0
    return-object v1

    .line 920
    :cond_0
    const/4 v1, 0x0

    .line 922
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tencentmap/mapsdk_vector/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 924
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 881
    const-string v0, ""

    .line 882
    .local v0, strInfo:Ljava/lang/String;
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkver=2.0.31"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&p=didi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    return-object v1
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "mContex"

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    const-string v2, ""

    .line 401
    :goto_0
    return-object v2

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, strPackagename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 388
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_1
    if-nez v0, :cond_1

    .line 395
    const-string v2, ""

    goto :goto_0

    .line 390
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 397
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 398
    const-string v2, ""

    goto :goto_0

    .line 400
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "mcontex"
    .parameter "strimgname"

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 933
    .local v0, assetManager:Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 934
    const/4 v1, 0x0

    .line 943
    :goto_0
    return-object v1

    .line 936
    :cond_0
    const/4 v1, 0x0

    .line 938
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "mContext"

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 463
    const-string v2, ""

    .line 482
    :goto_0
    return-object v2

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 466
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 468
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 482
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 470
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
