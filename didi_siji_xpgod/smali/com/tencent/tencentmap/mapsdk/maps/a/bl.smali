.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bl;
.super Ljava/lang/Object;
.source "MapCanvas.java"


# static fields
.field private static d:Ljava/nio/FloatBuffer;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private b:Lcom/tencent/map/lib/gl/b;

.field private c:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 267
    const/16 v5, 0x7c

    new-array v4, v5, [F

    .line 268
    .local v4, vb:[F
    const/4 v5, 0x0

    aput v6, v4, v5

    .line 269
    const/4 v5, 0x1

    aput v6, v4, v5

    .line 270
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/16 v5, 0x3d

    if-le v2, v5, :cond_0

    .line 276
    invoke-static {v4}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    sput-object v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->d:Ljava/nio/FloatBuffer;

    .line 277
    return-void

    .line 271
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 272
    .local v3, idx:I
    add-int/lit8 v5, v2, -0x1

    int-to-double v5, v5

    const-wide v7, 0x3fbacee9f37bebd5L

    mul-double v0, v5, v7

    .line 273
    .local v0, a:D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    .line 274
    add-int/lit8 v5, v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/map/lib/gl/b;)V
    .locals 0
    .parameter "mapContext"
    .parameter "textureCache"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 44
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->b:Lcom/tencent/map/lib/gl/b;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cg;)I
    .locals 14
    .parameter "line"

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a()Ljava/util/ArrayList;

    move-result-object v11

    .line 195
    .local v11, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 196
    .local v3, pointSize:I
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->b()[I

    move-result-object v13

    .line 197
    .local v13, startIndexes:[I
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->c()[I

    move-result-object v7

    .line 198
    .local v7, colors:[I
    array-length v0, v13

    array-length v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 200
    .local v5, segCount:I
    add-int/lit8 v9, v5, -0x1

    .line 201
    .local v9, lastIndex:I
    new-array v1, v3, [I

    .line 202
    .local v1, xs:[I
    new-array v2, v3, [I

    .line 203
    .local v2, ys:[I
    new-array v4, v5, [[B

    .line 205
    .local v4, segs:[[B
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v9, :cond_0

    .line 214
    new-instance v12, Lcom/tencent/map/lib/gl/JNI$a;

    invoke-direct {v12}, Lcom/tencent/map/lib/gl/JNI$a;-><init>()V

    .line 215
    .local v12, seg:Lcom/tencent/map/lib/gl/JNI$a;
    aget v0, v13, v9

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->a:I

    .line 216
    add-int/lit8 v0, v3, -0x1

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->b:I

    .line 217
    aget v0, v7, v9

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->c:I

    .line 218
    const/4 v0, 0x0

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->d:I

    .line 219
    const-string v0, ""

    iput-object v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->e:Ljava/lang/String;

    .line 220
    invoke-virtual {v12}, Lcom/tencent/map/lib/gl/JNI$a;->a()[B

    move-result-object v0

    aput-object v0, v4, v9

    .line 222
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v3, :cond_1

    .line 228
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->d()F

    move-result v6

    .line 228
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([I[II[[BIF)I

    move-result v0

    return v0

    .line 206
    .end local v12           #seg:Lcom/tencent/map/lib/gl/JNI$a;
    :cond_0
    new-instance v12, Lcom/tencent/map/lib/gl/JNI$a;

    invoke-direct {v12}, Lcom/tencent/map/lib/gl/JNI$a;-><init>()V

    .line 207
    .restart local v12       #seg:Lcom/tencent/map/lib/gl/JNI$a;
    aget v0, v13, v8

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->a:I

    .line 208
    add-int/lit8 v0, v8, 0x1

    aget v0, v13, v0

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->b:I

    .line 209
    aget v0, v7, v8

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->c:I

    .line 210
    const/4 v0, 0x0

    iput v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->d:I

    .line 211
    const-string v0, ""

    iput-object v0, v12, Lcom/tencent/map/lib/gl/JNI$a;->e:Ljava/lang/String;

    .line 212
    invoke-virtual {v12}, Lcom/tencent/map/lib/gl/JNI$a;->a()[B

    move-result-object v0

    aput-object v0, v4, v8

    .line 205
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cu;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Landroid/graphics/Point;

    move-result-object v10

    .line 224
    .local v10, p:Landroid/graphics/Point;
    iget v0, v10, Landroid/graphics/Point;->x:I

    aput v0, v1, v8

    .line 225
    iget v0, v10, Landroid/graphics/Point;->y:I

    aput v0, v2, v8

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->c:Ljavax/microedition/khronos/opengles/GL10;

    .line 52
    return-void
.end method
