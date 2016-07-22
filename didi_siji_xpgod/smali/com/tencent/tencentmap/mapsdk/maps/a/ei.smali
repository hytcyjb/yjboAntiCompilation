.class public Lcom/tencent/tencentmap/mapsdk/maps/a/ei;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/eg;
.source "GLSimpleFlatObject2D.java"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;-><init>()V

    .line 17
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->a:I

    .line 18
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 51
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->a:I

    .line 52
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->b:I

    .line 53
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/16 v6, 0x1406

    const/4 v3, 0x0

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 23
    const/16 v2, 0x1701

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 24
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 25
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 27
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->a:I

    int-to-float v1, v2

    .line 28
    .local v1, screenWidth:F
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->b:I

    int-to-float v0, v2

    .line 29
    .local v0, screenHeight:F
    invoke-static {p1, v3, v1, v3, v0}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 33
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->h:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 35
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->j:I

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 37
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->i:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 38
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ei;->j:I

    invoke-interface {p1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 43
    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {p1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 46
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 47
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 48
    return-void

    .line 40
    :cond_0
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method
