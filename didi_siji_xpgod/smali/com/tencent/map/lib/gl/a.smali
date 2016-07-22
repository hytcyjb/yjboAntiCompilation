.class public final Lcom/tencent/map/lib/gl/a;
.super Ljava/lang/Object;
.source "GLRenderUtil.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:F

.field public static f:F

.field public static g:F

.field public static h:F

.field public static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 37
    .local v0, maxMemory:J
    const-wide/32 v2, 0x1000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 38
    const/4 v2, 0x1

    sput v2, Lcom/tencent/map/lib/gl/a;->i:I

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_0
    const-wide/32 v2, 0x4000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 40
    const/4 v2, 0x2

    sput v2, Lcom/tencent/map/lib/gl/a;->i:I

    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/tencent/map/lib/gl/a;->i:I

    goto :goto_0
.end method

.method public static a(DJ)D
    .locals 10
    .parameter "sourceValue"
    .parameter "timeElapsed"

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 298
    sub-double v0, p0, v8

    .line 299
    .local v0, dValue:D
    long-to-double v4, p2

    const-wide v6, 0x4073f00000000000L

    div-double/2addr v4, v6

    .line 300
    mul-double/2addr v4, v4

    .line 301
    mul-double v2, v4, v4

    .line 302
    .local v2, t1:D
    sub-double v4, v8, v2

    mul-double/2addr v4, v0

    add-double/2addr v4, v8

    .line 303
    return-wide v4
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I
    .locals 7
    .parameter "gl"
    .parameter "textureBmp"

    .prologue
    const/4 v2, 0x1

    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 158
    new-array v1, v2, [I

    .line 159
    .local v1, textures:[I
    invoke-interface {p0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 160
    aget v0, v1, v4

    .line 162
    .local v0, textureId:I
    invoke-interface {p0, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 165
    const/16 v2, 0x2801

    invoke-interface {p0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 166
    const/16 v2, 0x2800

    invoke-interface {p0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 167
    const/16 v2, 0x2802

    invoke-interface {p0, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 169
    const/16 v2, 0x2803

    invoke-interface {p0, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 171
    invoke-static {v3, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 173
    return v0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 57
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 60
    .local v1, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 62
    return-object v1
.end method
