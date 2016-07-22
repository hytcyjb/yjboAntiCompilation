.class public Lcom/tencent/map/lib/gl/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;,
        Lcom/tencent/map/lib/gl/JNI$a;,
        Lcom/tencent/map/lib/gl/JNI$b;,
        Lcom/tencent/map/lib/gl/JNI$c;,
        Lcom/tencent/map/lib/gl/JNI$d;
    }
.end annotation


# static fields
.field public static final LIB_NAME:Ljava/lang/String; = "txmapengine"


# instance fields
.field private a:Lcom/tencent/map/lib/gl/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native QMapGpsEncrypt(DD[D[D)V
.end method

.method public static synchronized native declared-synchronized nativeCreateArrow(JII)V
.end method

.method public static native nativeDeleteLine(J)V
.end method

.method public static synchronized native declared-synchronized nativeDrawArrow(J)V
.end method

.method public static synchronized native declared-synchronized nativeDrawLine(J)V
.end method

.method public static native nativeEndProfile()V
.end method

.method public static native nativeLineInsertPoint(JIII)V
.end method

.method public static synchronized native declared-synchronized nativeOnTapLine(JFF)Z
.end method

.method public static synchronized native declared-synchronized nativeSetDrawCap(JZ)Z
.end method

.method public static synchronized native declared-synchronized nativeSetDrawTexture(JILjava/lang/String;I)Z
.end method

.method public static native nativeSetLibState(JI)V
.end method

.method public static synchronized native declared-synchronized nativeSetLineAlpha(JF)Z
.end method

.method public static native nativeSetLineDrawArrow(JZ)V
.end method

.method public static native nativeSetLineSelected(JZ)V
.end method

.method public static native nativeStartProfile()V
.end method


# virtual methods
.method public callback(IILjava/lang/String;[B)Ljava/lang/Object;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/map/lib/gl/JNI;->a:Lcom/tencent/map/lib/gl/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/map/lib/gl/c;->a(IILjava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native getCityName(JFF)[B
.end method

.method public initCallback(Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Lcom/tencent/map/lib/gl/c$a;J)V
    .locals 1
    .parameter "res"
    .parameter "downloadCallback"
    .parameter "handle"

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/map/lib/gl/c;

    invoke-direct {v0, p1, p2}, Lcom/tencent/map/lib/gl/c;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Lcom/tencent/map/lib/gl/c$a;)V

    iput-object v0, p0, Lcom/tencent/map/lib/gl/JNI;->a:Lcom/tencent/map/lib/gl/c;

    .line 33
    invoke-virtual {p0, p3, p4}, Lcom/tencent/map/lib/gl/JNI;->nativeSetCallback(J)V

    .line 34
    return-void
.end method

.method public native nativeAddPolygon(JLcom/tencent/map/lib/gl/JNI$b;)I
.end method

.method public native nativeClearCache(J)V
.end method

.method public native nativeClearDownloadURLCache(J)I
.end method

.method public native nativeCreateLine(J[I[II[[BIF)I
.end method

.method public native nativeDeletePolygon(JI)V
.end method

.method public native nativeDestroyEngine(J)V
.end method

.method public native nativeDrawFrame(J)Z
.end method

.method public native nativeFromScreenLocation(J[BFF[D)I
.end method

.method public native nativeGetDataVersion(J)I
.end method

.method public native nativeGetTrafficCityInfo(JLjava/lang/String;Lcom/tencent/map/lib/gl/JNI$CityTrafficInfo;)Z
.end method

.method public native nativeGetTrafficData(JJLcom/tencent/map/lib/gl/JNI$d;)[Lcom/tencent/map/lib/gl/JNI$d;
.end method

.method public native nativeHasStreetRoad(JLjava/lang/String;)Z
.end method

.method public native nativeHideStreetRoad(J)V
.end method

.method public native nativeHideTraffic(J)V
.end method

.method public native nativeInitEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI[I)J
.end method

.method public native nativeIsCityHasTraffic(JLjava/lang/String;)I
.end method

.method public native nativeIsMapDrawFinished(J)Z
.end method

.method public native nativeLockEngineTextures(J)V
.end method

.method public native nativeNeedRedraw(J)Z
.end method

.method public native nativeOnTap(JFF)[B
.end method

.method public native nativePrepareData(J)Z
.end method

.method public native nativeRefreshTrafficData(J[BIZLjava/lang/String;Z)I
.end method

.method public native nativeResetRootPath(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeResetTextureCache(J)V
.end method

.method public native nativeResetTextureCacheButNoGLDelete(J)V
.end method

.method public native nativeSetCallback(J)V
.end method

.method public native nativeSetGlVersion(JIZ)V
.end method

.method public native nativeSetMapParam(J[B)V
.end method

.method public native nativeSetTextureCacheSize(JJJ)V
.end method

.method public native nativeSetTrafficColor(JIII)V
.end method

.method public native nativeSetViewport(JIIII)F
.end method

.method public native nativeShowStreetRoad(J)V
.end method

.method public native nativeShowTraffic(J)V
.end method

.method public native nativeToScreenLocation(J[BDD[F)I
.end method

.method public native nativeUnlockEngineTextures(J)V
.end method

.method public native nativeUpdateMapResource(JLjava/lang/String;)V
.end method

.method public native nativeWriteMapDataBlock(JLjava/lang/String;[B)I
.end method
