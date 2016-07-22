.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/er;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ej;
.source "GLHeatTile.java"


# instance fields
.field public a:Ljavax/microedition/khronos/opengles/GL10;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/en;Ljava/lang/String;)V
    .locals 6
    .parameter "tileMap"
    .parameter "gl"
    .parameter "overlay"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const v5, 0x47012f00

    const v4, 0x46180400

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 23
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 25
    iput-object p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->b:Ljava/lang/String;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->h:Ljava/nio/FloatBuffer;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->i:Ljava/nio/FloatBuffer;

    .line 42
    new-array v0, v1, [I

    invoke-interface {p2, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v0, v0, v3

    invoke-interface {p2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v1, 0x2801

    invoke-interface {p2, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-interface {p2, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-interface {p2, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-interface {p2, v2, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->j:I

    .line 43
    invoke-virtual {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a(Ljava/lang/String;I)V

    .line 44
    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc3t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc3t
        0x0t 0x0t 0x0t 0xc3t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x0t 0xc3t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/16 v1, 0x303

    .line 81
    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 83
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 86
    const/16 v0, 0x302

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 87
    return-void
.end method
