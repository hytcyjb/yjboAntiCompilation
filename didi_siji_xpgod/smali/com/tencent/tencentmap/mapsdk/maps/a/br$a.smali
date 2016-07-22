.class final Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/bh$d;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

.field private b:Landroid/graphics/PointF;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$d;-><init>()V

    .line 240
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->b:Landroid/graphics/PointF;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/br;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)V

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .locals 3
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v0

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->c(FF)Z

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 208
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 209
    .local v1, y:F
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->e(FF)Z

    .line 210
    const/4 v2, 0x1

    return v2
.end method

.method public final b(FF)Z
    .locals 1
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(FF)Z

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 251
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 253
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 289
    :goto_0
    return v7

    .line 256
    :pswitch_0
    iput-boolean v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->c:Z

    .line 257
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a(Z)V

    .line 258
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 259
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->g(FF)Z

    goto :goto_0

    .line 263
    :pswitch_1
    iget-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->c:Z

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->d(FF)Z

    .line 271
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->b:Landroid/graphics/PointF;

    invoke-virtual {v4, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 272
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a(Z)V

    .line 273
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->i(FF)Z

    goto :goto_0

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->d(FF)Z

    goto :goto_1

    .line 278
    :pswitch_2
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v4

    .line 279
    .local v0, pointMoveX:F
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 281
    .local v1, pointMoveY:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_2

    .line 282
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 283
    :cond_2
    iput-boolean v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->c:Z

    .line 284
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->h(FF)Z

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a(Z)V

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/br;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->f(FF)Z

    .line 235
    :cond_0
    return-void
.end method
