.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cg;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:I

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private h:Z

.field private i:I

.field private j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ch;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->h:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ch;)V

    .line 83
    return-void
.end method

.method private declared-synchronized f()V
    .locals 6

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->f:I

    if-ltz v1, :cond_0

    .line 385
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->f:I

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cu;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Landroid/graphics/Point;

    move-result-object v0

    .line 387
    .local v0, p:Landroid/graphics/Point;
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v1, v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->f:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/map/lib/gl/JNI;->nativeLineInsertPoint(JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v0           #p:Landroid/graphics/Point;
    :cond_0
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final declared-synchronized a(II)V
    .locals 1
    .parameter "pointIndex"
    .parameter "actionLength"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    .line 277
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;->a:I

    .line 278
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;->b:I

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x3f80

    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 89
    invoke-virtual {p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cg;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    .line 91
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->g:I

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/map/lib/gl/JNI;->nativeSetDrawTexture(JILjava/lang/String;I)Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/map/lib/gl/JNI;->nativeSetDrawTexture(JILjava/lang/String;I)Z

    .line 104
    :goto_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->f:I

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetLibState(JI)V

    .line 105
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-boolean v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->d:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetLineDrawArrow(JZ)V

    .line 106
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->h:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetLineSelected(JZ)V

    .line 107
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget-boolean v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->k:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetDrawCap(JZ)Z

    .line 110
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->l:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    .line 111
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->l:F

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetLineAlpha(JF)Z

    .line 116
    :goto_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->f()V

    .line 118
    :cond_1
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tencent/map/lib/gl/JNI;->nativeDrawLine(J)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    if-eqz v0, :cond_2

    .line 122
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;->a:I

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    iget v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/map/lib/gl/JNI;->nativeCreateArrow(JII)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->k:Z

    if-eqz v0, :cond_3

    .line 128
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tencent/map/lib/gl/JNI;->nativeDrawArrow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_3
    monitor-exit p0

    return-void

    .line 101
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeSetLineAlpha(JF)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/tencent/tencentmap/mapsdk/maps/a/ch;)V
    .locals 12
    .parameter "options"

    .prologue
    const/4 v11, -0x1

    .line 308
    monitor-enter p0

    if-nez p1, :cond_0

    .line 309
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "LineOptions\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 311
    :cond_0
    :try_start_1
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    .line 312
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "LineOptions\u4e2d\u70b9\u7684\u4e2a\u6570\u4e0d\u80fd\u5c0f\u4e8e2"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 314
    :cond_2
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    array-length v8, v8

    if-gtz v8, :cond_4

    .line 315
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "\u53c2\u6570startIndexes\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 317
    :cond_4
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->c:[I

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->c:[I

    array-length v8, v8

    if-gtz v8, :cond_6

    .line 318
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "\u53c2\u6570colors\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 321
    :cond_6
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 322
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    .line 323
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->c:[I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e:[I

    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, segCount:I
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    array-length v8, v8

    new-array v4, v8, [I

    .line 328
    .local v4, segChildCount:[I
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    array-length v8, v8

    add-int/lit8 v2, v8, -0x1

    .line 329
    .local v2, lastSegIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_b

    .line 337
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    aget v9, v9, v2

    sub-int v3, v8, v9

    .line 338
    .local v3, pSize:I
    div-int/lit8 v8, v3, 0x14

    aput v8, v4, v2

    .line 339
    aget v8, v4, v2

    if-nez v8, :cond_7

    .line 340
    const/4 v8, 0x1

    aput v8, v4, v2

    .line 342
    :cond_7
    aget v8, v4, v2

    add-int/2addr v5, v8

    .line 344
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    .line 345
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e:[I

    .line 348
    const/4 v6, 0x0

    .line 349
    .local v6, segIndex:I
    const/4 v0, 0x0

    .line 360
    :goto_1
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    array-length v8, v8

    if-lt v0, v8, :cond_d

    .line 365
    :cond_8
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/lit8 v7, v8, 0x14

    .line 366
    .local v7, segSize:I
    if-nez v7, :cond_9

    .line 367
    const/4 v7, 0x1

    .line 369
    :cond_9
    new-array v8, v7, [I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->b:[I

    .line 370
    new-array v8, v7, [I

    iput-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->c:[I

    .line 371
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v7, :cond_10

    .line 377
    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    if-eq v8, v11, :cond_a

    .line 378
    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/tencent/map/lib/gl/JNI;->nativeDeleteLine(J)V

    .line 379
    const/4 v8, -0x1

    iput v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :cond_a
    monitor-exit p0

    return-void

    .line 330
    .end local v3           #pSize:I
    .end local v6           #segIndex:I
    .end local v7           #segSize:I
    :cond_b
    :try_start_2
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    aget v9, v9, v0

    sub-int v3, v8, v9

    .line 331
    .restart local v3       #pSize:I
    div-int/lit8 v8, v3, 0x14

    aput v8, v4, v0

    .line 332
    aget v8, v4, v0

    if-nez v8, :cond_c

    .line 333
    const/4 v8, 0x1

    aput v8, v4, v0

    .line 335
    :cond_c
    aget v8, v4, v0

    add-int/2addr v5, v8

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .restart local v6       #segIndex:I
    :cond_d
    const/4 v1, 0x0

    .line 356
    .local v1, j:I
    :goto_3
    aget v8, v4, v0

    if-lt v1, v8, :cond_f

    .line 359
    :cond_e
    if-ge v6, v5, :cond_8

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_f
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    iget-object v9, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    aget v9, v9, v0

    .line 352
    mul-int/lit8 v10, v1, 0x14

    add-int/2addr v9, v10

    .line 351
    aput v9, v8, v6

    .line 353
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e:[I

    iget-object v9, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->c:[I

    aget v9, v9, v0

    aput v9, v8, v6

    .line 354
    add-int/lit8 v6, v6, 0x1

    .line 355
    if-ge v6, v5, :cond_e

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 372
    .end local v1           #j:I
    .restart local v7       #segSize:I
    :cond_10
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->b:[I

    mul-int/lit8 v9, v0, 0x14

    aput v9, v8, v0

    .line 373
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->c:[I

    const/4 v9, 0x0

    aput v9, v8, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final declared-synchronized a(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 136
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/map/lib/gl/JNI;->nativeOnTapLine(JFF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 138
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()[I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d:[I

    return-object v0
.end method

.method public final c()[I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e:[I

    return-object v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->e:F

    return v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->k:Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/cg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 300
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 301
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/tencent/map/lib/gl/JNI;->nativeDeleteLine(J)V

    .line 303
    :cond_0
    return-void
.end method
