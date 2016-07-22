.class public Lcom/tencent/tencentmap/mapsdk/maps/a/ca;
.super Landroid/opengl/GLSurfaceView;
.source "MapView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bi;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->setRenderMode(I)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bi;)V

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-direct {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->d:Z

    .line 51
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->requestRender()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/af;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/af;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->g()V

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 225
    return-void
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 230
    return-void
.end method

.method public final c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    return-object v0
.end method

.method public final e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    return-object v0
.end method

.method public final f()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->m()F

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected final h()Lcom/tencent/map/lib/gl/b;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h()Lcom/tencent/map/lib/gl/b;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 169
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->k()V

    .line 170
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    .local v0, start:J
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 198
    .local v2, usedTime:J
    const-wide/16 v4, 0x32

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDrawFrame usedTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->d:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->j()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->d:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->i()V

    .line 154
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(II)V

    .line 188
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 183
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
