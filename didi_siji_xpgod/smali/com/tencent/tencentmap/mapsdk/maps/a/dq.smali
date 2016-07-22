.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLPolylineOverlay.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private d:Z

.field private e:[I

.field private f:[I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 2
    .parameter "map"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    .line 23
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 27
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d:Z

    .line 29
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e:[I

    .line 30
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f:[I

    .line 32
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->h:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->i:I

    .line 37
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 40
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->I:Z

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    if-nez v0, :cond_2

    .line 122
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ch;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    .line 123
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ch;)V

    goto :goto_0
.end method

.method private f()Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 202
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;-><init>()V

    .line 203
    .local v2, ops:Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->h:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 205
    const-string v4, ""

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->h:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->h:Ljava/lang/String;

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->i:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    :cond_1
    iget-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d:Z

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a(Z)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 211
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 212
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->E:F

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a(F)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, icolorsize:I
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f:[I

    if-eqz v4, :cond_2

    .line 216
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 218
    :cond_2
    if-nez v1, :cond_4

    .line 219
    filled-new-array {v9, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 220
    .local v3, segs:[[I
    aget-object v4, v3, v7

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->G:I

    aput v5, v4, v7

    .line 221
    aget-object v4, v3, v8

    aput v7, v4, v7

    .line 229
    :cond_3
    aget-object v4, v3, v8

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a([I)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 230
    aget-object v4, v3, v7

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b([I)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;

    .line 231
    return-object v2

    .line 223
    .end local v3           #segs:[[I
    :cond_4
    filled-new-array {v9, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 224
    .restart local v3       #segs:[[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 225
    aget-object v4, v3, v7

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e:[I

    aget v5, v5, v0

    aput v5, v4, v0

    .line 226
    aget-object v4, v3, v8

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f:[I

    aget v5, v5, v0

    aput v5, v4, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter "icolor"

    .prologue
    const/4 v0, 0x6

    .line 89
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(I)V

    .line 94
    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->G:I

    .line 95
    return-void

    .line 94
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x21

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(II)V
    .locals 1
    .parameter "index"
    .parameter "length"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e()V

    .line 352
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->a(II)V

    .line 353
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)V
    .locals 2
    .parameter "opts"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d(F)V

    .line 73
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(I)V

    .line 74
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c(F)V

    .line 75
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(Z)V

    .line 77
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, listLatlngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "strTextureName"
    .parameter "strTextureCapName"
    .parameter "rowCount"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->g:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->h:Ljava/lang/String;

    .line 138
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->i:I

    .line 139
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, listlatlngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 47
    .local v3, iLatLngSize:I
    if-lez v3, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, geoPts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    const/4 v4, 0x0

    .line 52
    .local v4, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v0, 0x0

    .line 53
    .local v0, geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 54
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 55
    .restart local v4       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v4, :cond_2

    .line 56
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    :goto_2
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 279
    return-void
.end method

.method public final a([I[I)V
    .locals 0
    .parameter "icolors"
    .parameter "indexs"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e:[I

    .line 337
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->f:[I

    .line 338
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->I:Z

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->e()V

    .line 303
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter "arrow"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d:Z

    .line 84
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b:Ljava/util/ArrayList;

    .line 326
    :cond_1
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 327
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cg;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cg;->e()V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 252
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 257
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    .line 259
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->D:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
