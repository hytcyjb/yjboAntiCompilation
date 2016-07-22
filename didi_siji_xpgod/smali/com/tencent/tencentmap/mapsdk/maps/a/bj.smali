.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bj;
.super Ljava/lang/Object;
.source "JNIWrapper.java"

# interfaces
.implements Lcom/tencent/map/lib/gl/c$a;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/cm;


# static fields
.field private static c:Lcom/tencent/tencentmap/mapsdk/maps/a/bn;


# instance fields
.field private a:Lcom/tencent/map/lib/gl/JNI;

.field private b:J

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/bw;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/tencent/map/lib/gl/JNI;

    invoke-direct {v0}, Lcom/tencent/map/lib/gl/JNI;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    .line 113
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    .line 114
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cm;)V

    .line 117
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bn;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bn;

    .line 121
    const-string v0, "txmapengine"

    invoke-static {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cw;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)J
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)Lcom/tencent/map/lib/gl/JNI;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 10
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, 0x400

    .line 289
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 294
    :cond_0
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x10

    int-to-long v3, v0

    const-wide/16 v0, 0x5

    div-long v5, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTextureCacheSizeByScreen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v1, v3, v7

    div-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v1, v5, v7

    div-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/map/lib/gl/JNI;->nativeSetTextureCacheSize(JJJ)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move v3, v9

    move v4, v9

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/map/lib/gl/JNI;->nativeSetViewport(JIIII)F

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 4
    .parameter "cityName"

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/map/lib/gl/JNI;->nativeIsCityHasTraffic(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a([BIZLjava/lang/String;Z)I
    .locals 12
    .parameter "data"
    .parameter "len"
    .parameter "bSwitch"
    .parameter "cityName"
    .parameter "isAllRefresh"

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 410
    const/4 v0, -0x1

    .line 422
    :goto_0
    return v0

    .line 413
    :cond_0
    if-nez p1, :cond_1

    const/4 v10, 0x0

    .line 414
    .local v10, timeStamp:I
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 415
    .local v8, cd:Ljava/util/Calendar;
    int-to-long v0, v10

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 417
    .local v11, year:I
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 418
    .local v9, month:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "traffic timestamp from traffic data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/map/lib/gl/JNI;->nativeRefreshTrafficData(J[BIZLjava/lang/String;Z)I

    move-result v0

    goto :goto_0

    .line 413
    .end local v8           #cd:Ljava/util/Calendar;
    .end local v9           #month:I
    .end local v10           #timeStamp:I
    .end local v11           #year:I
    :cond_1
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int v10, v0, v1

    goto :goto_1
.end method

.method public final a([I[II[[BIF)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "pointCount"
    .parameter "lineInfos"
    .parameter "lineCount"
    .parameter "width"

    .prologue
    .line 635
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 639
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/map/lib/gl/JNI;->nativeCreateLine(J[I[II[[BIF)I

    move-result v0

    goto :goto_0
.end method

.method public final a([BDD)Landroid/graphics/PointF;
    .locals 9
    .parameter "mapParam"
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 528
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 526
    .local v8, screenOut:[F
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/map/lib/gl/JNI;->nativeToScreenLocation(J[BDD[F)I

    .line 528
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public final a(FF)Lcom/tencent/map/lib/gl/JNI$c;
    .locals 6
    .parameter "winx"
    .parameter "winy"

    .prologue
    const/4 v1, 0x0

    .line 735
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-object v1

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/tencent/map/lib/gl/JNI;->nativeOnTap(JFF)[B

    move-result-object v0

    .line 741
    .local v0, outBytes:[B
    if-eqz v0, :cond_0

    .line 746
    :try_start_0
    invoke-static {v0}, Lcom/tencent/map/lib/gl/JNI$c;->a([B)Lcom/tencent/map/lib/gl/JNI$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 748
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final a([BFF)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 11
    .parameter "mapParam"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    const-wide v9, 0x412e848000000000L

    .line 501
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .line 510
    :goto_0
    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [D

    .line 506
    .local v6, geoOut:[D
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/map/lib/gl/JNI;->nativeFromScreenLocation(J[BFF[D)I

    .line 508
    const/4 v0, 0x0

    aget-wide v0, v6, v0

    mul-double/2addr v0, v9

    double-to-int v8, v0

    .line 509
    .local v8, longitudeE6:I
    const/4 v0, 0x1

    aget-wide v0, v6, v0

    mul-double/2addr v0, v9

    double-to-int v7, v0

    .line 510
    .local v7, latitudeE6:I
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v0, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bn;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;)V

    .line 155
    return-void
.end method

.method public final a(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "context"
    .parameter "gl"

    .prologue
    .line 248
    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 253
    .local v1, glesVersion:I
    const/16 v3, 0x1f03

    invoke-interface {p2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, extensions:Ljava/lang/String;
    const/4 v2, 0x0

    .line 256
    .local v2, isSupportTexturenpot:Z
    const-string v3, "GL_APPLE_texture_2D_limited_npot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v2, 0x1

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetGlVersion(JIZ)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bw;)V
    .locals 0
    .parameter "renderRequester"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/bw;

    .line 131
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V

    .line 139
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "data"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tencent/map/lib/gl/JNI;->nativeWriteMapDataBlock(JLjava/lang/String;[B)I

    .line 885
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->a(Ljava/lang/String;[B)V

    .line 888
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "resources"
    .parameter "cfgPath"
    .parameter "dataPath"
    .parameter "satPath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    new-array v6, v8, [I

    .line 192
    .local v6, result:[I
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ct;->a(Landroid/content/Context;)F

    move-result v4

    .line 193
    const/16 v5, 0x100

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    .line 192
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/map/lib/gl/JNI;->nativeInitEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    .line 196
    aget v0, v6, v7

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init engine fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v6, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    move v0, v7

    .line 213
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, p2, p0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->initCallback(Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Lcom/tencent/map/lib/gl/c$a;J)V

    .line 207
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeGetDataVersion(J)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a(I)V

    .line 210
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const v3, -0xe1e124

    const v4, -0xee3801

    .line 211
    const v5, -0xa93391

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/lib/gl/JNI;->nativeSetTrafficColor(JIII)V

    move v0, v8

    .line 213
    goto :goto_0
.end method

.method public final a([B)Z
    .locals 4
    .parameter "mapParamBytes"

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/map/lib/gl/JNI;->nativeSetMapParam(J[B)V

    .line 333
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeDrawFrame(J)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;
    .locals 5
    .parameter "cityName"

    .prologue
    .line 441
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    .line 445
    :cond_0
    new-instance v0, Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;

    invoke-direct {v0}, Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;-><init>()V

    .line 447
    .local v0, cityTrafficInfo:Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/tencent/map/lib/gl/JNI;->nativeGetTrafficCityInfo(JLjava/lang/String;Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;)Z

    goto :goto_0
.end method

.method public final b(II)Ljava/lang/String;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 594
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 595
    const-string v1, ""

    .line 607
    :goto_0
    return-object v1

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/map/lib/gl/JNI;->getCityName(JFF)[B

    move-result-object v0

    .line 602
    .local v0, gbkBytes:[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 607
    const-string v1, ""

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bn;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;)V

    .line 162
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tencent/map/lib/gl/JNI;->nativeWriteMapDataBlock(JLjava/lang/String;[B)I

    .line 893
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->c(Ljava/lang/String;)V

    .line 896
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeGetDataVersion(J)I

    move-result v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tencent/map/lib/gl/JNI;->nativeWriteMapDataBlock(JLjava/lang/String;[B)I

    .line 901
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->d(Ljava/lang/String;)V

    .line 904
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeResetTextureCacheButNoGLDelete(J)V

    .line 279
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cn;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeShowStreetRoad(J)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 560
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeHideStreetRoad(J)V

    .line 563
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 569
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeShowTraffic(J)V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeHideTraffic(J)V

    goto :goto_0
.end method

.method public final j()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 862
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/map/lib/gl/JNI;->nativePrepareData(J)Z

    .line 865
    :cond_0
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/map/lib/gl/JNI;->nativeNeedRedraw(J)Z

    move-result v0

    .line 868
    .local v0, needRedraw:Z
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/bw;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 869
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/bw;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bw;->d()V

    .line 871
    :cond_1
    return-void

    .line 865
    .end local v0           #needRedraw:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 877
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a:Lcom/tencent/map/lib/gl/JNI;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeClearDownloadURLCache(J)I

    .line 880
    :cond_0
    return-void
.end method
