.class public Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.super Landroid/view/View;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;,
        Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:Landroid/graphics/PointF;

.field private C:Landroid/graphics/PointF;

.field private D:Ljava/lang/Float;

.field private E:Landroid/graphics/PointF;

.field private F:Landroid/graphics/PointF;

.field private G:I

.field private H:I

.field private I:I

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Rect;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Landroid/view/GestureDetector;

.field private Q:Lcom/davemorrissey/labs/subscaleview/a/d;

.field private final R:Ljava/lang/Object;

.field private S:Lcom/davemorrissey/labs/subscaleview/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lcom/davemorrissey/labs/subscaleview/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private U:Landroid/graphics/PointF;

.field private V:F

.field private final W:F

.field private aa:Landroid/graphics/PointF;

.field private ab:F

.field private ac:Landroid/graphics/PointF;

.field private ad:Z

.field private ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

.field private af:Z

.field private ag:Z

.field private ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

.field private ai:Landroid/view/View$OnLongClickListener;

.field private aj:Lcom/davemorrissey/labs/subscaleview/b;

.field private ak:Landroid/os/Handler;

.field private al:Landroid/graphics/Paint;

.field private am:Landroid/graphics/Paint;

.field private an:Landroid/graphics/Paint;

.field private ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

.field private ap:Landroid/graphics/Matrix;

.field private aq:Landroid/graphics/RectF;

.field private ar:[F

.field private as:[F

.field private g:Landroid/graphics/Bitmap;

.field private h:Z

.field private i:Z

.field private j:Landroid/net/Uri;

.field private k:I

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 82
    const-class v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b:Ljava/util/List;

    .line 104
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c:Ljava/util/List;

    .line 111
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d:Ljava/util/List;

    .line 120
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e:Ljava/util/List;

    .line 129
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 264
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    .line 156
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    .line 159
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->p:F

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->q:I

    .line 165
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->r:I

    .line 168
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->s:I

    .line 174
    iput-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    .line 175
    iput-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->v:Z

    .line 176
    iput-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w:Z

    .line 179
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->x:F

    .line 180
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->y:I

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->R:Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a/a;

    const-class v1, Lcom/davemorrissey/labs/subscaleview/a/e;

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/a/a;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 218
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a/a;

    const-class v1, Lcom/davemorrissey/labs/subscaleview/a/f;

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/a/a;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->T:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 260
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ar:[F

    .line 261
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    .line 265
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumDpi(I)V

    .line 266
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 267
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 268
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;

    invoke-direct {v1, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    .line 280
    if-eqz p2, :cond_6

    .line 281
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/davemorrissey/labs/subscaleview/c$a;->SubsamplingScaleImageView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 285
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/a;->a(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/a;->a()Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/a;)V

    .line 288
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 290
    if-lez v1, :cond_1

    .line 291
    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/a;->a(I)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/a;->a()Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/a;)V

    .line 294
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 297
    :cond_2
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 300
    :cond_3
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 303
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 304
    const/4 v1, 0x5

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    .line 306
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    :cond_6
    const/high16 v0, 0x41a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->W:F

    .line 310
    return-void
.end method

.method private a(FFFF)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1884
    sub-float v0, p1, p2

    .line 1885
    sub-float v1, p3, p4

    .line 1886
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(IJFFJ)F
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2075
    packed-switch p1, :pswitch_data_0

    .line 2081
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected easing type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    .line 2077
    invoke-direct/range {v1 .. v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(JFFJ)F

    move-result v0

    .line 2079
    :goto_0
    return v0

    :pswitch_1
    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(JFFJ)F

    move-result v0

    goto :goto_0

    .line 2075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(JFFJ)F
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2094
    long-to-float v0, p1

    long-to-float v1, p5

    div-float/2addr v0, v1

    .line 2095
    neg-float v1, p4

    mul-float/2addr v1, v0

    const/high16 v2, 0x4000

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    return p1
.end method

.method private a(F)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1247
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->q:I

    if-lez v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1249
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 1250
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->q:I

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr p1, v0

    .line 1253
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    .line 1254
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1258
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1259
    :cond_1
    const/16 v0, 0x20

    .line 1280
    :goto_0
    return v0

    .line 1262
    :cond_2
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v3

    if-gt v3, v0, :cond_3

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 1265
    :cond_3
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1266
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1271
    if-ge v0, v1, :cond_4

    :goto_1
    move v1, v2

    .line 1276
    :goto_2
    mul-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_5

    .line 1277
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 1271
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1280
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    return p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1702
    .line 1703
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1705
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 1706
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1707
    if-eqz v1, :cond_7

    .line 1708
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1709
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1710
    sget-object v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1716
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move v6, v0

    .line 1740
    :cond_0
    :goto_2
    return v6

    .line 1713
    :cond_1
    :try_start_2
    sget-object v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move v0, v6

    goto :goto_0

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    :goto_3
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    const-string v1, "Could not get orientation of image from media store"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1721
    :cond_3
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    :try_start_3
    new-instance v0, Landroid/media/ExifInterface;

    const-string v1, "file:///"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1724
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 1725
    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 1727
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1728
    const/16 v6, 0x5a

    goto :goto_2

    .line 1729
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1730
    const/16 v6, 0xb4

    goto :goto_2

    .line 1731
    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 1732
    const/16 v6, 0x10e

    goto :goto_2

    .line 1734
    :cond_6
    sget-object v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported EXIF orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1736
    :catch_1
    move-exception v0

    .line 1737
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    const-string v1, "Could not get EXIF orientation of image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1718
    :catch_2
    move-exception v1

    move v6, v0

    goto :goto_3

    :cond_7
    move v0, v6

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Canvas;)Landroid/graphics/Point;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x800

    .line 1814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1816
    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v1, "getMaximumBitmapWidth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1817
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "getMaximumBitmapHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1818
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    :goto_0
    return-object v0

    .line 1819
    :catch_0
    move-exception v0

    .line 1823
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private a(FFF)Landroid/graphics/PointF;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2016
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2017
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 2018
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    if-nez v2, :cond_0

    .line 2019
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    .line 2021
    :cond_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;F)F

    .line 2022
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v0, v0

    mul-float v3, p1, p3

    sub-float/2addr v0, v3

    int-to-float v1, v1

    mul-float v3, p2, p3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 2023
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-direct {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V

    .line 2024
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2032
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 2033
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 2034
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2035
    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    div-float/2addr v1, p3

    .line 2036
    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    div-float/2addr v0, p3

    .line 2037
    invoke-virtual {p4, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 2038
    return-object p4
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ai:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    return-object p1
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 1656
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ag:Z

    if-eqz v0, :cond_2

    .line 1657
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1660
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1661
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    .line 1665
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    .line 1666
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1668
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1663
    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1678
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Z)V

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    if-nez v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1683
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    .line 1684
    iput-boolean p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    .line 1685
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    .line 1686
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    .line 1687
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    .line 1688
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->I:I

    .line 1689
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g()Z

    move-result v0

    .line 1690
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h()Z

    move-result v1

    .line 1691
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 1692
    :cond_3
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1693
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :cond_4
    monitor-exit p0

    return-void

    .line 1677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/graphics/Point;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1129
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    .line 1130
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-direct {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V

    .line 1134
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(F)I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    .line 1135
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-le v0, v5, :cond_0

    .line 1136
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    .line 1139
    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->J:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/a/d;->b()V

    .line 1144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    .line 1145
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/a/b;Landroid/net/Uri;Z)V

    .line 1146
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :goto_0
    monitor-exit p0

    return-void

    .line 1150
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Landroid/graphics/Point;)V

    .line 1152
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 1154
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    invoke-direct {v2, p0, v3, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/a/d;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)V

    .line 1155
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1157
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 852
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 859
    :cond_0
    :goto_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 860
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    float-to-double v0, v0

    float-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 861
    :goto_1
    if-eqz v0, :cond_4

    .line 862
    :goto_2
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->y:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 863
    invoke-virtual {p0, v2, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FLandroid/graphics/PointF;)V

    .line 869
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 870
    return-void

    .line 855
    :cond_2
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 856
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 860
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 861
    :cond_4
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v2

    goto :goto_2

    .line 864
    :cond_5
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->y:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    if-nez v0, :cond_7

    .line 865
    :cond_6
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a(Z)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a()V

    goto :goto_3

    .line 866
    :cond_7
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 867
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a(Z)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a()V

    goto :goto_3
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1858
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1867
    :goto_0
    return-void

    .line 1860
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 1861
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1862
    :cond_1
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 1863
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1865
    :cond_2
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/os/AsyncTask;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1744
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->t:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1746
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    const-string v1, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1747
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1748
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "executeOnExecutor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/concurrent/Executor;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1749
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    :goto_0
    return-void

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    sget-object v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    const-string v2, "Failed to execute AsyncTask on thread pool executor, falling back to single threaded executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    :cond_0
    new-array v0, v6, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 2
    .parameter

    .prologue
    .line 1802
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    .line 1804
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    .line 1805
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    .line 1806
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1808
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Bitmap;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/a/d;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a/d;III)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/davemorrissey/labs/subscaleview/a/d;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-eq v0, p3, :cond_2

    .line 1470
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Z)V

    .line 1471
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1472
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    if-nez v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1475
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    .line 1480
    :cond_2
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    .line 1481
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    .line 1482
    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    .line 1483
    iput p4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->I:I

    .line 1484
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g()Z

    .line 1485
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h()Z

    .line 1486
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 1487
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    monitor-exit p0

    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 433
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 434
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    .line 435
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    .line 436
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    .line 437
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    .line 438
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    .line 439
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    .line 440
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    .line 441
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 442
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    .line 443
    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    .line 444
    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    .line 445
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    .line 446
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->V:F

    .line 447
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aa:Landroid/graphics/PointF;

    .line 448
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    .line 449
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ac:Landroid/graphics/PointF;

    .line 450
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ad:Z

    .line 451
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 452
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    .line 453
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    .line 454
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    .line 455
    if-eqz p1, :cond_2

    .line 456
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    .line 457
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    if-eqz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    invoke-interface {v0}, Lcom/davemorrissey/labs/subscaleview/a/d;->b()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    :cond_1
    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    .line 467
    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    .line 468
    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->I:I

    .line 469
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->J:Landroid/graphics/Rect;

    .line 470
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    .line 471
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    .line 472
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ag:Z

    .line 473
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    .line 474
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    .line 475
    iput-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 480
    invoke-static {v0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 481
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 482
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    invoke-static {v0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 487
    :cond_5
    iput-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    .line 489
    :cond_6
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 490
    return-void
.end method

.method private a(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/high16 v2, 0x3f00

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 1291
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->r:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    .line 1295
    :cond_0
    invoke-static {p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1296
    invoke-static {p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f(F)F

    move-result v4

    .line 1297
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v4, v1

    .line 1298
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v1

    int-to-float v1, v1

    mul-float v6, v4, v1

    .line 1300
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->r:I

    if-ne v1, v10, :cond_4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1301
    iget v1, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 1302
    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 1312
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v1

    if-lez v1, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 1313
    :goto_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v7

    if-gtz v7, :cond_2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v7

    if-lez v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v2, v7

    .line 1317
    :cond_3
    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->r:I

    if-ne v7, v10, :cond_7

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1318
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1319
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 1328
    :goto_2
    iget v2, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 1329
    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 1331
    invoke-static {p2, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;F)F

    .line 1332
    return-void

    .line 1303
    :cond_4
    if-eqz p1, :cond_5

    .line 1304
    iget v1, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 1305
    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 1307
    :cond_5
    iget v1, v3, Landroid/graphics/PointF;->x:F

    neg-float v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 1308
    iget v1, v3, Landroid/graphics/PointF;->y:F

    neg-float v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1312
    goto/16 :goto_1

    .line 1320
    :cond_7
    if-eqz p1, :cond_8

    .line 1321
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    mul-float/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1322
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    mul-float/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_2

    .line 1324
    :cond_8
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1325
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_2
.end method

.method private a([FFFFFFFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1038
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 1039
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 1040
    const/4 v0, 0x2

    aput p4, p1, v0

    .line 1041
    const/4 v0, 0x3

    aput p5, p1, v0

    .line 1042
    const/4 v0, 0x4

    aput p6, p1, v0

    .line 1043
    const/4 v0, 0x5

    aput p7, p1, v0

    .line 1044
    const/4 v0, 0x6

    aput p8, p1, v0

    .line 1045
    const/4 v0, 0x7

    aput p9, p1, v0

    .line 1046
    return-void
.end method

.method private a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1210
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(F)F

    move-result v0

    .line 1211
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(F)F

    move-result v1

    .line 1212
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(F)F

    move-result v2

    .line 1213
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(F)F

    move-result v3

    .line 1214
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    return p1
.end method

.method private b(F)F
    .locals 2
    .parameter

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc0

    .line 1906
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(JFFJ)F
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, 0x4000

    .line 2107
    long-to-float v0, p1

    long-to-float v1, p5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 2108
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 2109
    div-float v1, p4, v2

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    .line 2112
    :goto_0
    return v0

    .line 2111
    :cond_0
    sub-float/2addr v0, v3

    .line 2112
    neg-float v1, p4

    div-float/2addr v1, v2

    sub-float v2, v0, v2

    mul-float/2addr v0, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    goto :goto_0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    return p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    return-object p1
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2001
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 2002
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2003
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 2004
    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 2005
    invoke-direct {p0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e(F)F

    move-result v3

    float-to-int v3, v3

    .line 2001
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2007
    return-object p2
.end method

.method private b(Landroid/graphics/Point;)V
    .locals 17
    .parameter

    .prologue
    .line 1362
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    .line 1363
    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    .line 1364
    const/4 v3, 0x1

    .line 1365
    const/4 v2, 0x1

    .line 1367
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v5

    div-int v6, v5, v3

    .line 1368
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v5

    div-int v8, v5, v2

    .line 1369
    div-int v5, v6, v4

    .line 1370
    div-int v7, v8, v4

    .line 1371
    :goto_1
    add-int v9, v5, v3

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Point;->x:I

    if-gt v9, v10, :cond_0

    int-to-double v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v5

    int-to-double v12, v5

    const-wide/high16 v14, 0x3ff4

    mul-double/2addr v12, v14

    cmpl-double v5, v10, v12

    if-lez v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ge v4, v5, :cond_9

    .line 1372
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v3

    div-int v5, v3, v6

    .line 1374
    div-int v3, v5, v4

    move/from16 v16, v3

    move v3, v6

    move v6, v5

    move/from16 v5, v16

    goto :goto_1

    .line 1376
    :goto_2
    add-int v8, v5, v2

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    if-gt v8, v9, :cond_1

    int-to-double v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v5

    int-to-double v10, v5

    const-wide/high16 v12, 0x3ff4

    mul-double/2addr v10, v12

    cmpl-double v5, v8, v10

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ge v4, v5, :cond_2

    .line 1377
    :cond_1
    add-int/lit8 v7, v2, 0x1

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v2

    div-int v5, v2, v7

    .line 1379
    div-int v2, v5, v4

    move/from16 v16, v2

    move v2, v7

    move v7, v5

    move/from16 v5, v16

    goto :goto_2

    .line 1381
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    mul-int v5, v3, v2

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    const/4 v5, 0x0

    move v10, v5

    :goto_3
    if-ge v10, v3, :cond_7

    .line 1383
    const/4 v5, 0x0

    move v9, v5

    :goto_4
    if-ge v9, v2, :cond_6

    .line 1384
    new-instance v12, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    const/4 v5, 0x0

    invoke-direct {v12, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    .line 1385
    invoke-static {v12, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;I)I

    .line 1386
    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    :goto_5
    invoke-static {v12, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1387
    new-instance v13, Landroid/graphics/Rect;

    mul-int v14, v10, v6

    mul-int v15, v9, v7

    add-int/lit8 v5, v3, -0x1

    if-ne v10, v5, :cond_4

    .line 1390
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v5

    move v8, v5

    :goto_6
    add-int/lit8 v5, v2, -0x1

    if-ne v9, v5, :cond_5

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v5

    :goto_7
    invoke-direct {v13, v14, v15, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1387
    invoke-static {v12, v13}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1393
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v8, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1394
    new-instance v5, Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v12, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1395
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_4

    .line 1386
    :cond_3
    const/4 v5, 0x0

    goto :goto_5

    .line 1390
    :cond_4
    add-int/lit8 v5, v10, 0x1

    mul-int/2addr v5, v6

    move v8, v5

    goto :goto_6

    .line 1391
    :cond_5
    add-int/lit8 v5, v9, 0x1

    mul-int/2addr v5, v7

    goto :goto_7

    .line 1382
    :cond_6
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_3

    .line 1398
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1405
    return-void

    .line 1402
    :cond_8
    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_0

    :cond_9
    move v5, v7

    move v7, v8

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private b(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1169
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1204
    :cond_0
    return-void

    .line 1171
    :cond_1
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1175
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 1177
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    if-lt v4, v1, :cond_4

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    if-le v4, v1, :cond_5

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-eq v4, v5, :cond_5

    .line 1178
    :cond_4
    invoke-static {v0, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1179
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1180
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1181
    invoke-static {v0, v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1184
    :cond_5
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    if-ne v4, v1, :cond_7

    .line 1185
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1186
    invoke-static {v0, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1187
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 1188
    new-instance v4, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    invoke-direct {v4, p0, v5, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$h;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Lcom/davemorrissey/labs/subscaleview/a/d;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)V

    .line 1189
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1191
    :cond_6
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-eq v4, v5, :cond_3

    .line 1192
    invoke-static {v0, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    .line 1193
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1194
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1195
    invoke-static {v0, v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1198
    :cond_7
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v4

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ne v4, v5, :cond_3

    .line 1199
    invoke-static {v0, v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;Z)Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    return p1
.end method

.method private c(F)F
    .locals 2
    .parameter

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc0

    .line 1914
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f(F)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aa:Landroid/graphics/PointF;

    return-object p1
.end method

.method private c(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1340
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    .line 1342
    const/4 v0, 0x1

    .line 1343
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    .line 1345
    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    if-nez v1, :cond_1

    .line 1346
    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;-><init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    .line 1348
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;F)F

    .line 1349
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1350
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-direct {p0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(ZLcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)V

    .line 1351
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)F

    move-result v1

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 1352
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ao:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1353
    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1356
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    return v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ad:Z

    return p1
.end method

.method private d(F)F
    .locals 2
    .parameter

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc0

    .line 1954
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ac:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e(F)F
    .locals 2
    .parameter

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc0

    .line 1962
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    return v0
.end method

.method private f(F)F
    .locals 2
    .parameter

    .prologue
    .line 2060
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2061
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2062
    return v0
.end method

.method static synthetic f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    return v0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1052
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    if-nez v1, :cond_0

    .line 1067
    :goto_0
    return v0

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 1056
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1057
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    if-ne v1, v5, :cond_3

    .line 1058
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 1059
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_2
    move v2, v3

    .line 1060
    goto :goto_2

    :cond_3
    move v0, v2

    move v2, v0

    .line 1064
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1065
    goto :goto_0

    :cond_5
    move v0, v3

    .line 1067
    goto :goto_0
.end method

.method static synthetic g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/b;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aj:Lcom/davemorrissey/labs/subscaleview/b;

    return-object v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1076
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1077
    :goto_0
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1078
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j()V

    .line 1079
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    .line 1080
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b()V

    .line 1081
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;->a()V

    .line 1085
    :cond_1
    return v0

    .line 1076
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRequiredRotation()I
    .locals 2

    .prologue
    .line 1873
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1874
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->I:I

    .line 1876
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    return v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f()Z

    move-result v0

    .line 1094
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ag:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1095
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j()V

    .line 1096
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ag:Z

    .line 1097
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c()V

    .line 1098
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;->b()V

    .line 1102
    :cond_0
    return v0
.end method

.method static synthetic i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1109
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    .line 1111
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1112
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1113
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    if-eqz v0, :cond_1

    .line 1116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    .line 1117
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1118
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1119
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1121
    :cond_1
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1221
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-gtz v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 1227
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 1228
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    .line 1229
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1232
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1233
    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    .line 1234
    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    .line 1235
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 1236
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    .line 1240
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->v:Z

    return v0
.end method

.method private declared-synchronized k()V
    .locals 1

    .prologue
    .line 1565
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g()Z

    .line 1566
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h()Z

    .line 1567
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1568
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1571
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    .line 1572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    .line 1575
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    monitor-exit p0

    return-void

    .line 1565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w:Z

    return v0
.end method

.method private l()I
    .locals 2

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    .line 1832
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 1833
    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    .line 1835
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    goto :goto_0
.end method

.method static synthetic l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    return-object v0
.end method

.method private m()I
    .locals 2

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    .line 1845
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 1846
    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    .line 1848
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    goto :goto_0
.end method

.method static synthetic m(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aa:Landroid/graphics/PointF;

    return-object v0
.end method

.method private n()F
    .locals 4

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 2046
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2047
    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->s:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2048
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2052
    :goto_0
    return v0

    .line 2049
    :cond_0
    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->s:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->p:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2050
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->p:F

    goto :goto_0

    .line 2052
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->J:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    return-object v0
.end method

.method static synthetic p(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->R:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k()V

    return-void
.end method

.method static synthetic r(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    return-object v0
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->P:Landroid/view/GestureDetector;

    .line 559
    return-void
.end method


# virtual methods
.method public final a(FF)Landroid/graphics/PointF;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1928
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 1943
    const/4 p3, 0x0

    .line 1946
    :goto_0
    return-object p3

    .line 1945
    :cond_0
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(F)F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .parameter

    .prologue
    .line 1921
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final a(FLandroid/graphics/PointF;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 2292
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    .line 2293
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    .line 2294
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    .line 2295
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2296
    return-void
.end method

.method public final a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "imageSource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    invoke-direct {p0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Z)V

    .line 382
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    .line 384
    :cond_1
    if-eqz p2, :cond_5

    .line 385
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->f()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->g()I

    move-result v0

    if-gtz v0, :cond_4

    .line 389
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_4
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->f()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    .line 392
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->g()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    .line 393
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->K:Landroid/graphics/Rect;

    .line 394
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 395
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i:Z

    .line 396
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Bitmap;)V

    .line 407
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 408
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Bitmap;IZ)V

    .line 427
    :goto_1
    return-void

    .line 398
    :cond_6
    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->b()Landroid/net/Uri;

    move-result-object v4

    .line 399
    if-nez v4, :cond_7

    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/davemorrissey/labs/subscaleview/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 402
    :cond_7
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/a/b;Landroid/net/Uri;Z)V

    .line 403
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 409
    :cond_8
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 410
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->i()Z

    move-result v1

    invoke-direct {p0, v0, v6, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Bitmap;IZ)V

    goto :goto_1

    .line 412
    :cond_9
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->J:Landroid/graphics/Rect;

    .line 413
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    .line 414
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    .line 417
    :cond_a
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/a;->e()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->J:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    .line 419
    :cond_b
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->T:Lcom/davemorrissey/labs/subscaleview/a/b;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$i;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/a/b;Landroid/net/Uri;)V

    .line 420
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V

    goto/16 :goto_1

    .line 423
    :cond_c
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j:Landroid/net/Uri;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$c;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/a/b;Landroid/net/Uri;Z)V

    .line 424
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/os/AsyncTask;)V

    goto/16 :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2320
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    return v0
.end method

.method public final b(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 1991
    const/4 p3, 0x0

    .line 1994
    :goto_0
    return-object p3

    .line 1993
    :cond_0
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e(F)F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .parameter

    .prologue
    .line 1969
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 2330
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 2345
    return-void
.end method

.method public final getAppliedOrientation()I
    .locals 1

    .prologue
    .line 2376
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 2272
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2273
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2274
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 2240
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    return v0
.end method

.method public final getMinScale()F
    .locals 1

    .prologue
    .line 2247
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 2368
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    return v0
.end method

.method public final getSHeight()I
    .locals 1

    .prologue
    .line 2360
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    return v0
.end method

.method public final getSWidth()I
    .locals 1

    .prologue
    .line 2352
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 2281
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    return v0
.end method

.method public final getState()Lcom/davemorrissey/labs/subscaleview/ImageViewState;
    .locals 4

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-lez v0, :cond_0

    .line 2385
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    .line 2387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter

    .prologue
    .line 878
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i()V

    .line 882
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->Q:Lcom/davemorrissey/labs/subscaleview/a/d;

    if-eqz v2, :cond_2

    .line 888
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Canvas;)Landroid/graphics/Point;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/Point;)V

    .line 894
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j()V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    if-eqz v2, :cond_6

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_9

    const/4 v2, 0x1

    move v10, v2

    .line 905
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F

    move-result v7

    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(IJFFJ)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v2

    iget v6, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(IJFFJ)F

    move-result v11

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v2

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J

    move-result-wide v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(IJFFJ)F

    move-result v2

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(F)F

    move-result v5

    sub-float/2addr v5, v11

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e(F)F

    move-result v5

    sub-float v2, v5, v2

    sub-float v2, v4, v2

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 916
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    :cond_3
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 917
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    .line 918
    if-eqz v10, :cond_5

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 921
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    move-result-object v2

    invoke-interface {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :cond_4
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 928
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 931
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    if-eqz v2, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 934
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 937
    const/4 v2, 0x0

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v13, v2

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 939
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_b

    .line 940
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 941
    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    .line 942
    :cond_8
    const/4 v13, 0x1

    goto :goto_5

    .line 904
    :cond_9
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_1

    .line 916
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 922
    :catch_0
    move-exception v2

    .line 923
    sget-object v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    const-string v4, "Error thrown by animation listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_b
    move v2, v13

    move v13, v2

    .line 946
    goto :goto_4

    .line 949
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 950
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v14, :cond_e

    if-eqz v13, :cond_d

    .line 951
    :cond_e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_f
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    .line 952
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 953
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    if-eqz v2, :cond_10

    .line 955
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 957
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    if-nez v2, :cond_11

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    .line 958
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ar:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v8, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v9, v2

    const/4 v10, 0x0

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a([FFFFFFFFF)V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    if-nez v2, :cond_14

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a([FFFFFFFFF)V

    .line 969
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ar:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 970
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 971
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    if-eqz v2, :cond_13

    .line 972
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 977
    :cond_13
    :goto_8
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    if-eqz v2, :cond_f

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 962
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_15

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a([FFFFFFFFF)V

    goto/16 :goto_7

    .line 964
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_16

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a([FFFFFFFFF)V

    goto/16 :goto_7

    .line 966
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_12

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->as:[F

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v2

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a([FFFFFFFFF)V

    goto/16 :goto_7

    .line 974
    :cond_17
    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    if-eqz v2, :cond_13

    .line 975
    const-string v2, "LOADING"

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-static {v12}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x23

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 984
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    if-eqz v2, :cond_0

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a0

    const/high16 v4, 0x4170

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Translate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a0

    const/high16 v4, 0x420c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source center: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a0

    const/high16 v4, 0x425c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    if-eqz v2, :cond_0

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->k(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 994
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x4120

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 995
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x41a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 996
    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x41c8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x41f0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1001
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 1004
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h:Z

    if-eqz v4, :cond_1a

    .line 1005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 1006
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    .line 1009
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    if-nez v4, :cond_1b

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    .line 1010
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1f

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1023
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    if-eqz v2, :cond_1e

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    if-nez v2, :cond_1d

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    .line 1025
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aq:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1029
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1017
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_20

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_9

    .line 1019
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1c

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ap:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_9
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 581
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 582
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 583
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 584
    if-eq v4, v6, :cond_0

    move v4, v0

    .line 585
    :goto_0
    if-eq v5, v6, :cond_1

    .line 588
    :goto_1
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->G:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->H:I

    if-lez v1, :cond_4

    .line 589
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 590
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v1

    .line 591
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v0

    .line 598
    :goto_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 599
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 600
    invoke-virtual {p0, v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMeasuredDimension(II)V

    .line 601
    return-void

    :cond_0
    move v4, v1

    .line 584
    goto :goto_0

    :cond_1
    move v0, v1

    .line 585
    goto :goto_1

    .line 592
    :cond_2
    if-eqz v0, :cond_3

    .line 593
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v0

    int-to-double v0, v0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v0, v4

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    move v1, v3

    goto :goto_2

    .line 594
    :cond_3
    if-eqz v4, :cond_4

    .line 595
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v0

    int-to-double v0, v0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v0, v4

    int-to-double v4, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    move v1, v3

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 567
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->af:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 568
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 569
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->D:Ljava/lang/Float;

    .line 570
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->E:Landroid/graphics/PointF;

    .line 572
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x40a0

    const/high16 v6, 0x4000

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 609
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 840
    :cond_0
    :goto_0
    return v1

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    move-result-object v2

    invoke-interface {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 624
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    .line 628
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->P:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->P:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    :cond_3
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    .line 630
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 631
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    goto :goto_0

    .line 616
    :catch_0
    move-exception v2

    .line 617
    sget-object v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a:Ljava/lang/String;

    const-string v4, "Error thrown by animation listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 635
    :cond_4
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    .line 636
    :cond_5
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    .line 638
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 840
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 643
    :sswitch_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ae:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;

    .line 644
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 645
    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    .line 646
    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 647
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->v:Z

    if-eqz v2, :cond_8

    .line 649
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFFF)F

    move-result v2

    .line 650
    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    .line 651
    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->V:F

    .line 652
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 653
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float/2addr v0, v6

    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 659
    :goto_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 656
    :cond_8
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    goto :goto_2

    .line 660
    :cond_9
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 663
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 666
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 671
    :sswitch_1
    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    if-lez v3, :cond_b

    .line 672
    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFFF)F

    move-result v2

    .line 675
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    .line 678
    iget-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->v:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5, v3, v6, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(FFFF)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_a

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->V:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_a

    iget-boolean v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    if-eqz v5, :cond_b

    .line 679
    :cond_a
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    .line 680
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 683
    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->V:F

    div-float v6, v2, v6

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 685
    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c

    .line 687
    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->V:F

    .line 688
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v2

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    .line 689
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 690
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 710
    :goto_3
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 711
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    :goto_4
    move v0, v1

    .line 793
    :cond_b
    :goto_5
    if-eqz v0, :cond_7

    .line 794
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    goto/16 :goto_0

    .line 691
    :cond_c
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    if-eqz v2, :cond_d

    .line 694
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    .line 695
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 696
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    div-float/2addr v6, v7

    mul-float/2addr v2, v6

    .line 697
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 698
    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    sub-float v2, v3, v2

    iput v2, v6, Landroid/graphics/PointF;->x:F

    .line 699
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    sub-float v3, v4, v5

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 700
    :cond_d
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    if-eqz v2, :cond_e

    .line 702
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 703
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 706
    :cond_e
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 707
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 713
    :cond_f
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    if-eqz v2, :cond_17

    .line 716
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->W:F

    add-float v4, v2, v3

    .line 718
    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    .line 719
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ac:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    move v2, v1

    .line 720
    :goto_6
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ac:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v7, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 722
    const/high16 v3, 0x3f80

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    div-float v5, v4, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f00

    mul-float/2addr v5, v3

    .line 724
    const v3, 0x3cf5c28f

    cmpl-float v3, v5, v3

    if-gtz v3, :cond_11

    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ad:Z

    if-eqz v3, :cond_12

    .line 725
    :cond_11
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ad:Z

    .line 727
    const/high16 v3, 0x3f80

    .line 728
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_27

    .line 729
    if-eqz v2, :cond_14

    const/high16 v2, 0x3f80

    add-float/2addr v2, v5

    .line 732
    :goto_7
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n()F

    move-result v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    mul-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    .line 734
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    if-eqz v2, :cond_15

    .line 735
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 736
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    .line 737
    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    .line 738
    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->A:F

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    .line 739
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v2, v6, v2

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 740
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v3, v5, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 752
    :cond_12
    :goto_8
    iput v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ab:F

    .line 754
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 755
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    move v0, v1

    .line 758
    goto/16 :goto_5

    :cond_13
    move v2, v0

    .line 719
    goto/16 :goto_6

    .line 729
    :cond_14
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v5

    goto :goto_7

    .line 741
    :cond_15
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    if-eqz v2, :cond_16

    .line 743
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 744
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    iget-object v6, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->F:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_8

    .line 747
    :cond_16
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 748
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_8

    .line 758
    :cond_17
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    if-nez v2, :cond_b

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 763
    cmpl-float v2, v5, v8

    if-gtz v2, :cond_18

    cmpl-float v2, v3, v8

    if-gtz v2, :cond_18

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    if-eqz v2, :cond_b

    .line 765
    :cond_18
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 766
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 768
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 769
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->y:F

    .line 770
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 771
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1c

    move v4, v1

    .line 772
    :goto_9
    if-eqz v4, :cond_1d

    cmpl-float v2, v5, v3

    if-lez v2, :cond_1d

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    if-nez v2, :cond_1d

    move v2, v1

    .line 773
    :goto_a
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1e

    const/high16 v6, 0x4170

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e

    move v3, v1

    .line 774
    :goto_b
    if-nez v2, :cond_1f

    if-eqz v4, :cond_19

    if-nez v3, :cond_19

    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    if-eqz v2, :cond_1f

    .line 775
    :cond_19
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 783
    :cond_1a
    :goto_c
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    if-nez v2, :cond_1b

    .line 784
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 785
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 786
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 789
    :cond_1b
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    goto/16 :goto_4

    :cond_1c
    move v4, v0

    .line 771
    goto :goto_9

    :cond_1d
    move v2, v0

    .line 772
    goto :goto_a

    :cond_1e
    move v3, v0

    .line 773
    goto :goto_b

    .line 776
    :cond_1f
    cmpl-float v2, v5, v8

    if-lez v2, :cond_1a

    .line 778
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    .line 779
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_c

    .line 802
    :sswitch_2
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ak:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    if-eqz v3, :cond_20

    .line 804
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->N:Z

    .line 805
    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ad:Z

    if-nez v3, :cond_20

    .line 806
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aa:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-direct {p0, v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 809
    :cond_20
    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    if-lez v3, :cond_26

    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    if-eqz v3, :cond_26

    .line 810
    :cond_21
    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    if-eqz v3, :cond_22

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 812
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 813
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->C:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v3, v1, :cond_25

    .line 815
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 820
    :cond_22
    :goto_d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_23

    .line 822
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    .line 824
    :cond_23
    const/4 v3, 0x2

    if-ge v2, v3, :cond_24

    .line 826
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 827
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    .line 830
    :cond_24
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    goto/16 :goto_0

    .line 817
    :cond_25
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->U:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_d

    .line 833
    :cond_26
    if-ne v2, v1, :cond_0

    .line 834
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->L:Z

    .line 835
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->M:Z

    .line 836
    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->O:I

    goto/16 :goto_0

    :cond_27
    move v2, v3

    goto/16 :goto_7

    .line 639
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x105 -> :sswitch_0
        0x106 -> :sswitch_2
    .end sparse-switch
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2150
    if-nez p1, :cond_0

    .line 2151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decoder class cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2153
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a/a;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/a/a;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 2154
    return-void
.end method

.method public final setBitmapDecoderFactory(Lcom/davemorrissey/labs/subscaleview/a/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2162
    if-nez p1, :cond_0

    .line 2163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decoder factory cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2165
    :cond_0
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->S:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 2166
    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2503
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m:Z

    .line 2504
    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .locals 2
    .parameter

    .prologue
    .line 2472
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2473
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 2474
    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 2475
    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 2462
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->x:F

    .line 2463
    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 3
    .parameter

    .prologue
    .line 2482
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2485
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->y:I

    .line 2486
    return-void
.end method

.method public final setImage(Lcom/davemorrissey/labs/subscaleview/a;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, v0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    .line 336
    return-void
.end method

.method public final setMaxScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 2202
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->o:F

    .line 2203
    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 2
    .parameter

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2232
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 2233
    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 2234
    return-void
.end method

.method public final setMinScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 2210
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->p:F

    .line 2211
    return-void
.end method

.method public final setMinimumDpi(I)V
    .locals 2
    .parameter

    .prologue
    .line 2220
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2221
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 2222
    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 2223
    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 3
    .parameter

    .prologue
    .line 2186
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2189
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->s:I

    .line 2190
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 2192
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2194
    :cond_1
    return-void
.end method

.method public setMinimumTileDpi(I)V
    .locals 2
    .parameter

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2260
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 2261
    int-to-float v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->q:I

    .line 2262
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Z)V

    .line 2264
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2266
    :cond_0
    return-void
.end method

.method public setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;)V
    .locals 0
    .parameter

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ah:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;

    .line 2519
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->ai:Landroid/view/View$OnLongClickListener;

    .line 2512
    return-void
.end method

.method public setOnTapListener(Lcom/davemorrissey/labs/subscaleview/b;)V
    .locals 0
    .parameter

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->aj:Lcom/davemorrissey/labs/subscaleview/b;

    .line 2524
    return-void
.end method

.method public final setOrientation(I)V
    .locals 3
    .parameter

    .prologue
    .line 321
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->n:I

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 327
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->requestLayout()V

    .line 328
    return-void
.end method

.method public final setPanEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    .line 2429
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->u:Z

    .line 2430
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2432
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->z:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2433
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Z)V

    .line 2435
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2438
    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 3
    .parameter

    .prologue
    .line 2172
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pan limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2175
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->r:I

    .line 2176
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Z)V

    .line 2178
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2180
    :cond_1
    return-void
.end method

.method public setParallelLoadingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2496
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->t:Z

    .line 2497
    return-void
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2415
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->w:Z

    .line 2416
    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2124
    if-nez p1, :cond_0

    .line 2125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decoder class cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2127
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a/a;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/a/a;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->T:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 2128
    return-void
.end method

.method public final setRegionDecoderFactory(Lcom/davemorrissey/labs/subscaleview/a/b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/a/b",
            "<+",
            "Lcom/davemorrissey/labs/subscaleview/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2137
    if-nez p1, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decoder factory cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_0
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->T:Lcom/davemorrissey/labs/subscaleview/a/b;

    .line 2141
    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 2445
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    .line 2452
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->invalidate()V

    .line 2453
    return-void

    .line 2448
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    .line 2449
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2450
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->an:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public final setZoomEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2401
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->v:Z

    .line 2402
    return-void
.end method
