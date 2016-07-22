.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fw;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fj;
.source "MarkerManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Z

.field private final l:I

.field private final m:I

.field private n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

.field private o:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

.field private p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

.field private q:Landroid/os/Handler;

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V
    .locals 2
    .parameter "mapV"
    .parameter "map"

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 55
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 57
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 59
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    .line 60
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    .line 61
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    .line 63
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    .line 68
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->j:Landroid/graphics/Bitmap;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->k:Z

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->l:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->m:I

    .line 81
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    .line 82
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->o:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    .line 84
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    .line 85
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    .line 196
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->s:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    .line 290
    check-cast p2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p2
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 291
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 293
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    .line 294
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 1208
    if-eqz p0, :cond_0

    .line 1209
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1211
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1212
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1213
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 1214
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1215
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1218
    .end local v0           #newBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 7
    .parameter "mContext"

    .prologue
    .line 1003
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1004
    .local v6, viewMain:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1006
    const-string v1, "marker_infowindow.9.png"

    invoke-static {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1008
    .local v2, bmpMarkerInfo:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 1009
    .local v3, chunkMarkerInfo:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 1012
    .local v0, drawMarkerInfo:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    return-object v6
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->k(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;)V
    .locals 10
    .parameter "x0"
    .parameter "x1"

    .prologue
    const/4 v9, 0x4

    const/16 v5, 0xa

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-boolean v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->c:Z

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->k(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v1, ""

    invoke-virtual {v0, v1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->o:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;

    if-eqz v3, :cond_2

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->o:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->isInfoWindowEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b(Z)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    if-nez v1, :cond_f

    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_5

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    :cond_7
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e(Z)V

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_9
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d(Z)V

    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, v0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->j:Landroid/graphics/Bitmap;

    :cond_b
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e(Z)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l()Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fk;)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b(Z)V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;->getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_10

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->removeView(Landroid/view/View;)V

    :cond_10
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    :cond_11
    :goto_5
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;->getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_12

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->removeView(Landroid/view/View;)V

    :cond_12
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    goto/16 :goto_2

    :cond_13
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    goto :goto_5

    :cond_14
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;->getInfoContents(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    goto :goto_5

    :cond_15
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    const/16 v4, 0x1e

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_17

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_17
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_18

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->removeView(Landroid/view/View;)V

    :cond_18
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    goto/16 :goto_5

    :cond_19
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e:Landroid/view/View;

    goto/16 :goto_5

    :cond_1a
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    goto/16 :goto_2

    :cond_1b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->f:Landroid/view/View;

    goto/16 :goto_2

    :cond_1c
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e(Z)V

    goto/16 :goto_3

    :cond_1d
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d(Z)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 9
    .parameter "markerTap"

    .prologue
    const/high16 v8, -0x100

    const/16 v4, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 901
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    if-nez v0, :cond_5

    .line 902
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    .line 906
    :cond_3
    :goto_1
    return-void

    .line 902
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x1e

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "Snippet"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 904
    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    return-object v0
.end method

.method private k(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 4
    .parameter "strId"

    .prologue
    const/4 v1, 0x0

    .line 696
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-object v1

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 710
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 711
    .local v0, overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_2

    .line 712
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 719
    .end local v0           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 714
    .restart local v0       #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_2
    :try_start_1
    instance-of v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v3, :cond_3

    .line 715
    monitor-exit v2

    goto :goto_0

    .line 717
    :cond_3
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 718
    .end local v0           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 3
    .parameter "options"
    .parameter "contr"

    .prologue
    .line 365
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v2, :cond_0

    .line 366
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->is3D()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .line 376
    .local v1, markerOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 377
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    .line 379
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l()Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    move-result-object v2

    if-nez v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fk;)V

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 385
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->D:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;Ljava/lang/String;)V

    .line 387
    .local v0, mark:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 388
    return-object v0

    .line 373
    .end local v0           #mark:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .end local v1           #markerOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    :cond_2
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .restart local v1       #markerOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    .locals 0
    .parameter "infowindowadapter"

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    .line 1272
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V
    .locals 0
    .parameter "onmarkerdraglistener"

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    .line 1278
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 6
    .parameter "strId"

    .prologue
    .line 394
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_0

    .line 428
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v3

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 402
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 403
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 405
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 406
    if-nez v2, :cond_2

    .line 407
    monitor-exit v3

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 412
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, strMarkerOnTapId:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    .line 426
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;F)V
    .locals 3
    .parameter "strId"
    .parameter "fAngle"

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1289
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1290
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1298
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1292
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1293
    monitor-exit v2

    goto :goto_0

    .line 1296
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1297
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(F)V

    .line 1298
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;FF)V
    .locals 3
    .parameter "strId"
    .parameter "anchorU"
    .parameter "anchorV"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 439
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 448
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 442
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 443
    monitor-exit v2

    goto :goto_0

    .line 446
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 447
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(FF)V

    .line 448
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;II)V
    .locals 3
    .parameter "strId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1696
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1700
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1701
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1702
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1703
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1711
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1705
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1706
    monitor-exit v2

    goto :goto_0

    .line 1709
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1710
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(II)V

    .line 1711
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Z)V
    .locals 4
    .parameter "strId"
    .parameter "infoLoc"
    .parameter "boFromGesture"

    .prologue
    .line 728
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;-><init>(B)V

    .line 729
    .local v1, onTapPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;
    iput-object p1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->a:Ljava/lang/String;

    .line 730
    iput-object p2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 734
    iput-boolean p3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$b;->c:Z

    .line 736
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 738
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 3
    .parameter "strId"
    .parameter "animation"

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1424
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1414
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1415
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1416
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1424
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1418
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1419
    monitor-exit v2

    goto :goto_0

    .line 1422
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1423
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    iget-object v1, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 1424
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 3
    .parameter "strId"
    .parameter "listener"

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1461
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1462
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1463
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1471
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1465
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1466
    monitor-exit v2

    goto :goto_0

    .line 1469
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1470
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 1471
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V
    .locals 3
    .parameter "strId"
    .parameter "icon"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 483
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 484
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 486
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 487
    monitor-exit v2

    goto :goto_0

    .line 490
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 491
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    .line 492
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 6
    .parameter "strId"
    .parameter "latlng"

    .prologue
    .line 502
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v4, :cond_0

    .line 536
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v5, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v5

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v2

    .line 508
    .local v2, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v2, :cond_1

    .line 509
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    .end local v2           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 511
    .restart local v2       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v4, :cond_2

    .line 512
    monitor-exit v5

    goto :goto_0

    .line 515
    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v3, v0

    .line 516
    .local v3, marker:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    .line 517
    .local v1, geoPosition:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 520
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 526
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v4, :cond_3

    .line 527
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    .line 528
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 531
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 3
    .parameter "strId"
    .parameter "opt"

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1734
    :goto_0
    return-void

    .line 1723
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1724
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1725
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1726
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1734
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1728
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1729
    monitor-exit v2

    goto :goto_0

    .line 1732
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1733
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 1734
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 583
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 584
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 587
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 586
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(Z)V

    .line 587
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "strId"
    .parameter "navipoint"
    .parameter "rotate"

    .prologue
    .line 1308
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 1313
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 1314
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 1315
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1324
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1317
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v3, :cond_2

    .line 1318
    monitor-exit v4

    goto :goto_0

    .line 1321
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v2, v0

    .line 1322
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    iput-boolean p2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->w:Z

    .line 1323
    iput-boolean p3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->x:Z

    .line 1324
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b()V
    .locals 8

    .prologue
    .line 1225
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v5, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v5

    .line 1226
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1227
    .local v2, iSize:I
    const/4 v3, 0x0

    .line 1228
    .local v3, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1229
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v3, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 1230
    .restart local v3       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v3, :cond_0

    .line 1231
    instance-of v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-eqz v4, :cond_0

    .line 1234
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1237
    move-object v0, v3

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v4, v0

    .line 1239
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 1240
    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 1242
    add-int/lit8 v1, v1, -0x1

    .line 1243
    add-int/lit8 v2, v2, -0x1

    .line 1228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    .line 1255
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 1264
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    invoke-interface {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;->a()V

    .line 1266
    return-void

    .line 1255
    .end local v1           #i:I
    .end local v2           #iSize:I
    .end local v3           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method final b(Ljava/lang/String;)V
    .locals 4
    .parameter "strId"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-nez v0, :cond_1

    .line 546
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 548
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    monitor-exit v1

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    .line 552
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method final b(Ljava/lang/String;F)V
    .locals 3
    .parameter "strId"
    .parameter "alpha"

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1484
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1485
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1493
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1487
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1488
    monitor-exit v2

    goto :goto_0

    .line 1491
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1492
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(F)V

    .line 1493
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1496
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "boclick"

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1573
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1574
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1575
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1576
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1584
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1578
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1579
    monitor-exit v2

    goto :goto_0

    .line 1582
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1583
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    iput-boolean p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->y:Z

    .line 1584
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1587
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final c()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->o:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    if-nez v0, :cond_0

    .line 1400
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->s:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->o:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->o:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 4
    .parameter "strId"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-nez v0, :cond_1

    .line 564
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 566
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    monitor-exit v1

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    .line 570
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method final c(Ljava/lang/String;F)V
    .locals 3
    .parameter "strId"
    .parameter "f"

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1747
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1748
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1749
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1759
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1751
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1752
    if-nez v1, :cond_2

    .line 1753
    monitor-exit v2

    goto :goto_0

    .line 1756
    :cond_2
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c(F)V

    .line 1757
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    .line 1758
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 1759
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final c(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "boFix"

    .prologue
    .line 1673
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1677
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 1678
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 1679
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 1680
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1688
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1682
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v1, :cond_2

    .line 1683
    monitor-exit v2

    goto :goto_0

    .line 1686
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1687
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(Z)V

    .line 1688
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 6
    .parameter "strId"

    .prologue
    const/4 v3, 0x0

    .line 1646
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 1667
    :goto_0
    return-object v2

    .line 1649
    :cond_0
    const/4 v2, 0x0

    .line 1650
    .local v2, position:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 1651
    :try_start_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v5, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 1652
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 1653
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 1655
    :cond_1
    instance-of v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v5, :cond_2

    .line 1656
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 1659
    :cond_2
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1660
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 1661
    .local v0, geoPosition:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    if-eqz v0, :cond_3

    .line 1662
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    .line 1664
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #geoPosition:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->q:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->k:Z

    .line 307
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 311
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 312
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    if-eqz v1, :cond_1

    .line 315
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->n:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 318
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 322
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->g:Landroid/view/ViewGroup;

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 325
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->h:Landroid/widget/LinearLayout;

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-eqz v1, :cond_5

    .line 339
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 341
    :cond_5
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    if-eqz v1, :cond_6

    .line 342
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 344
    :cond_6
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 345
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    .local v0, viGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_7

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 349
    :cond_7
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d:Landroid/view/View;

    .line 352
    .end local v0           #viGroup:Landroid/view/ViewGroup;
    :cond_8
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    .line 353
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 354
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    :cond_9
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->i:Landroid/graphics/Bitmap;

    .line 359
    :cond_a
    return-void
.end method

.method final e(Ljava/lang/String;)Z
    .locals 6
    .parameter "strId"

    .prologue
    const/4 v3, 0x0

    .line 596
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v4, :cond_0

    .line 621
    :goto_0
    return v3

    .line 600
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 601
    :try_start_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v5, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 602
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 603
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 616
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 605
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v5, :cond_2

    .line 606
    monitor-exit v4

    goto :goto_0

    .line 609
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v2, v0

    .line 615
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Z)V

    .line 616
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 621
    const/4 v3, 0x1

    goto :goto_0
.end method

.method final f(Ljava/lang/String;)Z
    .locals 3
    .parameter "strId"

    .prologue
    const/4 v0, 0x1

    .line 652
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 653
    if-nez v1, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final g(Ljava/lang/String;)Z
    .locals 1
    .parameter "strId"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final h(Ljava/lang/String;)F
    .locals 5
    .parameter "strId"

    .prologue
    const/4 v2, 0x0

    .line 1622
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    move v0, v2

    .line 1640
    :goto_0
    return v0

    .line 1625
    :cond_0
    const/4 v0, 0x0

    .line 1626
    .local v0, angle:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v3

    .line 1627
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 1628
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 1629
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1631
    :cond_1
    instance-of v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v4, :cond_2

    .line 1632
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1635
    :cond_2
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1636
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l()F

    move-result v0

    .line 1637
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method final i(Ljava/lang/String;)Z
    .locals 5
    .parameter "strId"

    .prologue
    const/4 v2, 0x0

    .line 1432
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    move v0, v2

    .line 1451
    :goto_0
    return v0

    .line 1435
    :cond_0
    const/4 v0, 0x0

    .line 1436
    .local v0, boResult:Z
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v3

    .line 1437
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 1438
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 1439
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1441
    :cond_1
    instance-of v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v4, :cond_2

    .line 1442
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1445
    :cond_2
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1446
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->j()Z

    move-result v0

    .line 1447
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 1448
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method final j(Ljava/lang/String;)Z
    .locals 5
    .parameter "strId"

    .prologue
    const/4 v2, 0x0

    .line 1593
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    move v0, v2

    .line 1610
    :goto_0
    return v0

    .line 1596
    :cond_0
    const/4 v0, 0x0

    .line 1597
    .local v0, clickable:Z
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v3

    .line 1598
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 1599
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 1600
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1602
    :cond_1
    instance-of v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-nez v4, :cond_2

    .line 1603
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1606
    :cond_2
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 1607
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    iget-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->y:Z

    .line 1609
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
