.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
.super Ljava/lang/Object;
.source "MapParam.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    }
.end annotation


# static fields
.field private static synthetic t:[I


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Rect;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

.field private h:Landroid/graphics/Rect;

.field private i:I

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0

    const-wide/16 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l:D

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m:D

    .line 142
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n:D

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o:D

    .line 147
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p:D

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q:D

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 168
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 169
    return-void
.end method

.method private c(II)Z
    .locals 13
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    const/4 v6, 0x1

    const/high16 v11, 0x1

    .line 537
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x14

    shl-int v7, v6, v9

    .line 538
    .local v7, scaleDiff:I
    const/4 v8, 0x0

    .line 541
    .local v8, width_2:I
    const/4 v5, 0x0

    .line 543
    .local v5, height_2:I
    if-le v11, v7, :cond_0

    .line 545
    sget v9, Lcom/tencent/map/lib/gl/a;->a:I

    mul-int/2addr v9, v11

    sget v10, Lcom/tencent/map/lib/gl/a;->a:I

    mul-int/2addr v10, v7

    sub-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    .line 546
    sget v9, Lcom/tencent/map/lib/gl/a;->b:I

    mul-int/2addr v9, v11

    sget v10, Lcom/tencent/map/lib/gl/a;->b:I

    mul-int/2addr v10, v7

    sub-int/2addr v9, v10

    div-int/lit8 v5, v9, 0x2

    .line 549
    :cond_0
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v3, v9, v8

    .line 550
    .local v3, WEST:I
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v0, v9, v8

    .line 551
    .local v0, EAST:I
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v2, v9, v5

    .line 552
    .local v2, SOUTH:I
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v1, v9, v5

    .line 554
    .local v1, NORTH:I
    if-ge p1, v2, :cond_1

    .line 555
    move p1, v2

    .line 557
    :cond_1
    if-le p1, v1, :cond_2

    .line 558
    move p1, v1

    .line 561
    :cond_2
    if-ge p2, v3, :cond_3

    .line 562
    move p2, v3

    .line 565
    :cond_3
    if-le p2, v0, :cond_4

    .line 566
    move p2, v0

    .line 569
    :cond_4
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v9

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v9

    if-ne p2, v9, :cond_5

    const/4 v6, 0x0

    .line 571
    .local v6, isChanged:Z
    :cond_5
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v9, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 572
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v9, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    .line 574
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-static {p0, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v4

    .line 576
    .local v4, centerPixels:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-wide v9, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v11, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(DD)V

    .line 579
    return v6
.end method

.method private static synthetic t()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->t:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->values()[Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->t:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(F)F
    .locals 4
    .parameter "rotateDegree"

    .prologue
    .line 243
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    .line 253
    .end local p1
    :goto_0
    return p1

    .line 247
    .restart local p1
    :cond_0
    const/high16 v2, 0x43b4

    rem-float v2, p1, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    .line 249
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 250
    .local v0, rotateRadian:D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l:D

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m:D

    .line 253
    iget p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    goto :goto_0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    return v0
.end method

.method public final a(DD)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a(DD)V

    .line 589
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    .line 206
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/bk;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    .line 208
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(I)Z

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(I)Z

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c(II)Z

    .line 211
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "geoBoundary"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 506
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;)V
    .locals 5
    .parameter "mapParam"

    .prologue
    .line 176
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    .line 177
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    .line 178
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    .line 179
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    .line 180
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    .line 181
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i:I

    .line 185
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j:D

    .line 186
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k:D

    .line 187
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l:D

    .line 188
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m:D

    .line 189
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n:D

    .line 190
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o:D

    .line 191
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p:D

    .line 192
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q:D

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q:D

    .line 193
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a(DD)V

    .line 195
    return-void
.end method

.method public final a(FF)Z
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 632
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    .line 636
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    .line 637
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    .line 638
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1
    .parameter "mapMode"

    .prologue
    .line 220
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    if-ne v0, p1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    return v0
.end method

.method public final b(F)F
    .locals 6
    .parameter "skewDegree"

    .prologue
    .line 290
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    .line 306
    .end local p1
    :goto_0
    return p1

    .line 294
    .restart local p1
    :cond_0
    const/high16 v4, 0x4234

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    .line 295
    const/4 v4, 0x0

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    .line 297
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 299
    .local v0, skewRadian:D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n:D

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o:D

    .line 302
    const-wide v4, 0x3ff921fb54442d18L

    sub-double v2, v4, v0

    .line 303
    .local v2, tempRad:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q:D

    .line 304
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p:D

    .line 306
    iget p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 4
    .parameter "scaleLevel"

    .prologue
    const/4 v1, 0x1

    .line 394
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f()F

    move-result v0

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d()I

    move-result v2

    if-lt p1, v2, :cond_0

    sub-int v2, p1, v2

    shl-int v2, v1, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 395
    .local v0, scale:F
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    move-result-object v2

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    if-ne v2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(II)Z
    .locals 1
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c(II)Z

    move-result v0

    return v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l:D

    return-wide v0
.end method

.method public final c(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    .locals 7
    .parameter "scale"

    .prologue
    .line 359
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    move-result-object v1

    .line 360
    .local v1, scaleChangedType:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->t()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 364
    :goto_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-static {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .line 371
    .local v0, centerPixels:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a(DD)V

    .line 372
    return-object v1

    .line 363
    .end local v0           #centerPixels:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b()I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    mul-int/lit16 v2, v2, 0x100

    int-to-double v2, v2

    double-to-int v4, v2

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i:I

    const-wide v4, 0x4076800000000000L

    div-double v4, v2, v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j:D

    const-wide v4, 0x401921fb54442d18L

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k:D

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 773
    .local v0, param:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h:Landroid/graphics/Rect;

    .line 774
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    .line 775
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    .line 776
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 777
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 778
    return-object v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m:D

    return-wide v0
.end method

.method public final d(F)V
    .locals 1
    .parameter "minScale"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a(F)V

    .line 497
    return-void
.end method

.method public final e()D
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 709
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    if-nez v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 713
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 716
    .local v0, mapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    if-ne v2, v3, :cond_0

    .line 731
    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 736
    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 741
    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 746
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i:I

    return v0
.end method

.method public final h()D
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()D
    .locals 2

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k:D

    return-wide v0
.end method

.method public final j()F
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a()F

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b()I

    move-result v0

    return v0
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c()F

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e()I

    move-result v0

    return v0
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f()F

    move-result v0

    return v0
.end method

.method public final p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    return-object v0
.end method

.method public final q()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    return-object v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 652
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_0

    .line 659
    :goto_0
    return v0

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 659
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final s()[B
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 668
    const/16 v3, 0x30

    new-array v1, v3, [B

    .line 669
    .local v1, data:[B
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 672
    .local v0, centerGeoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a()F

    move-result v2

    .line 674
    .local v2, scale:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x1c

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x24

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cy;->a(I)[B

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v3, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 757
    .local v0, geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    const-string v2, "mapParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "center:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "center pixels:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skew:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rotate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "center offset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screenMargin:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mapScale:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
