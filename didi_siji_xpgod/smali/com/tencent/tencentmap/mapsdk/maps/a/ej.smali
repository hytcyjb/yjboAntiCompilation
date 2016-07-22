.class public Lcom/tencent/tencentmap/mapsdk/maps/a/ej;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/eg;
.source "GLSimpleFlatObject3D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/16 v4, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->h:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 20
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->j:I

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 22
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->i:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 23
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->j:I

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 28
    :goto_0
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 29
    return-void

    .line 25
    :cond_0
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method
