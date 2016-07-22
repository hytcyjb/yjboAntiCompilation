.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;,
        Lcom/github/clans/fab/FloatingActionButton$b;,
        Lcom/github/clans/fab/FloatingActionButton$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/Xfermode;


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Z

.field private H:J

.field private I:F

.field private J:J

.field private K:D

.field private L:Z

.field private M:I

.field private N:F

.field private O:F

.field private P:F

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Z

.field a:I

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/GestureDetector;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->h:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 50
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 51
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4040

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 63
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    .line 74
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 78
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 79
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    .line 86
    const/high16 v0, 0x4343

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    .line 89
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Z

    .line 90
    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:I

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    .line 575
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$2;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:Landroid/view/GestureDetector;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x1

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 50
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 51
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4040

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 63
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    .line 74
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c0

    invoke-static {v0, v1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 78
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 79
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    .line 86
    const/high16 v0, 0x4343

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    .line 89
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Z

    .line 90
    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:I

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    .line 575
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$2;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:Landroid/view/GestureDetector;

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 426
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$a;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton$a;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$1;)V

    .line 427
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton$a;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    return-object v0
.end method

.method private a(J)V
    .locals 7
    .parameter

    .prologue
    const-wide v4, 0x407f400000000000L

    .line 289
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 290
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    .line 292
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 293
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    .line 295
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Z

    .line 298
    :cond_0
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:D

    div-double/2addr v0, v4

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    .line 299
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    .line 301
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Z

    if-eqz v2, :cond_2

    .line 302
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 311
    :goto_1
    return-void

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_2
    const/high16 v2, 0x3f80

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 305
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 306
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    goto :goto_1

    .line 309
    :cond_3
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    sget-object v0, Lcom/github/clans/fab/a$e;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_colorNormal:I

    const v2, -0x25bcca

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 123
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_colorPressed:I

    const v2, -0x18afbd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 124
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_colorDisabled:I

    const v2, -0x555556

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 125
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_colorRipple:I

    const v2, -0x66000001

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 126
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_showShadow:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 127
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_shadowColor:I

    const/high16 v2, 0x6600

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 128
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_shadowRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 129
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_shadowXOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 130
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_shadowYOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 131
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_size:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    .line 132
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Ljava/lang/String;

    .line 133
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress_indeterminate:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 134
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress_color:I

    const v2, -0xff6978

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 135
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress_backgroundColor:I

    const/high16 v2, 0x4d00

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    .line 136
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress_max:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    .line 137
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress_showBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    .line 139
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    .line 141
    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    .line 144
    :cond_0
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget v1, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    .line 146
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    .line 153
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/res/TypedArray;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->b(Landroid/content/res/TypedArray;)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setClickable(Z)V

    .line 168
    return-void

    .line 149
    :cond_3
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    goto :goto_0

    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    if-eqz v0, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 162
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    invoke-virtual {p0, v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->a(IZ)V

    goto :goto_1
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_showAnimation:I

    sget v1, Lcom/github/clans/fab/a$a;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 172
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    return v0
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    sget v0, Lcom/github/clans/fab/a$e;->FloatingActionButton_fab_hideAnimation:I

    sget v1, Lcom/github/clans/fab/a$a;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/animation/Animation;

    .line 178
    return-void
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->k()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    return v0
.end method

.method static synthetic f(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    return v0
.end method

.method private getCircleSize()I
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-nez v0, :cond_0

    sget v0, Lcom/github/clans/fab/a$b;->fab_size_normal:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/github/clans/fab/a$b;->fab_size_mini:I

    goto :goto_0
.end method

.method private getShadowX()I
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()F

    move-result v0

    return v0
.end method

.method static synthetic j()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->h:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic j(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private k()I
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v1, :cond_0

    .line 188
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 190
    :cond_0
    return v0
.end method

.method private l()I
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v1, :cond_0

    .line 196
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 198
    :cond_0
    return v0
.end method

.method private m()F
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private n()F
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 403
    new-array v0, v7, [I

    const v2, -0x101009e

    aput v2, v0, v6

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    invoke-direct {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 404
    new-array v0, v7, [I

    const v2, 0x10100a7

    aput v2, v0, v6

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    invoke-direct {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 405
    new-array v0, v6, [I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    invoke-direct {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 407
    invoke-static {}, Lcom/github/clans/fab/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 410
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$1;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$1;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 416
    invoke-virtual {p0, v7}, Lcom/github/clans/fab/FloatingActionButton;->setClipToOutline(Z)V

    .line 417
    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    .line 422
    :goto_0
    return-object v0

    .line 421
    :cond_0
    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 422
    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    .line 442
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Z

    if-nez v0, :cond_2

    .line 443
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 447
    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    .line 451
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Z

    .line 453
    :cond_2
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v0, :cond_2

    .line 459
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 460
    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 465
    :goto_1
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setX(F)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setY(F)V

    .line 467
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_1

    .line 462
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 463
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:F

    goto :goto_1
.end method

.method private r()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    .line 481
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    .line 482
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    .line 485
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->k()I

    move-result v5

    sub-int v0, v5, v0

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 486
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()I

    move-result v5

    sub-int v1, v5, v1

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    .line 488
    return-void

    :cond_1
    move v0, v1

    .line 480
    goto :goto_0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/github/clans/fab/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 518
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 519
    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 520
    return-void
.end method

.method public declared-synchronized a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1188
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    .line 1189
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 1191
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Z

    if-nez v0, :cond_2

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1196
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    .line 1198
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()V

    .line 1199
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 1200
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1202
    if-gez p1, :cond_5

    .line 1203
    const/4 p1, 0x0

    .line 1208
    :cond_3
    :goto_1
    int-to-float v0, p1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1212
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    if-lez v0, :cond_6

    int-to-float v0, p1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    .line 1213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 1215
    if-nez p2, :cond_4

    .line 1216
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 1219
    :cond_4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V

    goto :goto_0

    .line 1204
    :cond_5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I

    if-le p1, v0, :cond_3

    .line 1205
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1212
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    if-eqz p1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->d()V

    .line 1052
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1054
    :cond_1
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()V

    .line 1066
    :cond_0
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1068
    :cond_1
    return-void
.end method

.method c()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/github/clans/fab/FloatingActionButton$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/github/clans/fab/FloatingActionButton$b;-><init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$1;)V

    aput-object v4, v1, v2

    .line 351
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v6

    .line 352
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 361
    :goto_0
    const/4 v1, -0x1

    .line 362
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v4

    if-lez v1, :cond_3

    :goto_1
    sub-int v1, v4, v1

    div-int/lit8 v7, v1, 0x2

    .line 366
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 367
    :goto_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 369
    :cond_1
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v4, :cond_6

    .line 370
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    add-int/2addr v1, v4

    .line 371
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    add-int/2addr v2, v4

    move v5, v2

    move v4, v1

    .line 382
    :goto_3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_4
    add-int v2, v4, v7

    add-int v3, v5, v7

    add-int/2addr v4, v7

    add-int/2addr v5, v7

    .line 381
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 389
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 390
    return-void

    .line 355
    :cond_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 356
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v2

    .line 357
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 365
    :cond_3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 366
    goto :goto_2

    :cond_5
    move v1, v6

    .line 382
    goto :goto_4

    :cond_6
    move v5, v2

    move v4, v1

    goto :goto_3
.end method

.method d()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 500
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 505
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    return-void
.end method

.method f()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 524
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 526
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-static {}, Lcom/github/clans/fab/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 529
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 530
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 531
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0

    .line 526
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 529
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method g()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const v4, 0x101009e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 537
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 539
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-static {}, Lcom/github/clans/fab/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 542
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 543
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 544
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method public getButtonSize()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    return v0
.end method

.method getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 396
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcom/github/clans/fab/Label;
    .locals 1

    .prologue
    .line 513
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 1

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 1223
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    return v0
.end method

.method getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v7, 0x447a

    const/4 v4, 0x0

    const/high16 v2, 0x43b4

    .line 233
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v0, :cond_3

    .line 236
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z

    if-eqz v0, :cond_4

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    sub-long/2addr v0, v8

    .line 246
    long-to-float v3, v0

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v7

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->a(J)V

    .line 250
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 251
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 252
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 255
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 256
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    const/high16 v1, 0x42b4

    sub-float v2, v0, v1

    .line 257
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:I

    int-to-float v0, v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    add-float v3, v0, v1

    .line 259
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const/4 v2, 0x0

    .line 261
    const/high16 v3, 0x4307

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 282
    :goto_0
    if-eqz v6, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V

    .line 286
    :cond_3
    return-void

    .line 266
    :cond_4
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, v7

    .line 269
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    mul-float/2addr v0, v1

    .line 271
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 272
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 276
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 279
    :goto_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 274
    :cond_5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->k()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 621
    instance-of v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    if-nez v0, :cond_0

    .line 622
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 642
    :goto_0
    return-void

    .line 626
    :cond_0
    check-cast p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    .line 627
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 629
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 630
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    .line 631
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    .line 632
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 633
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 634
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    .line 635
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 636
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    .line 637
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    .line 638
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 639
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 600
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 602
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    invoke-direct {v1, v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 604
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    .line 605
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    .line 606
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    .line 607
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    .line 608
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    .line 609
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    .line 610
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    .line 611
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    .line 612
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    .line 613
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    .line 614
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    .line 616
    return-object v1

    .line 611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 315
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 317
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 319
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 327
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 329
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()V

    .line 330
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->r()V

    .line 331
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 332
    return-void

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    if-eqz v0, :cond_2

    .line 321
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:I

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->a(IZ)V

    .line 322
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    goto :goto_0

    .line 323
    :cond_2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->q()V

    .line 325
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 552
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 572
    :goto_0
    return v0

    .line 554
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 555
    packed-switch v1, :pswitch_data_0

    .line 570
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 572
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 557
    :pswitch_1
    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->e()V

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    goto :goto_1

    .line 564
    :pswitch_2
    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->e()V

    .line 567
    :cond_3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    goto :goto_1

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setButtonSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 833
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use @FabSize constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-eq v0, p1, :cond_1

    .line 838
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    .line 839
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 841
    :cond_1
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1
    .parameter

    .prologue
    .line 893
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    if-eq p1, v0, :cond_0

    .line 894
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 895
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 897
    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    .line 901
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1
    .parameter

    .prologue
    .line 848
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    if-eq v0, p1, :cond_0

    .line 849
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 850
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 852
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 856
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1
    .parameter

    .prologue
    .line 863
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    if-eq p1, v0, :cond_0

    .line 864
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 865
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 867
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 871
    return-void
.end method

.method public setColorRipple(I)V
    .locals 1
    .parameter

    .prologue
    .line 878
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    if-eq p1, v0, :cond_0

    .line 879
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 880
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 882
    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1
    .parameter

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 886
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .parameter

    .prologue
    .line 1117
    invoke-static {}, Lcom/github/clans/fab/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1118
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1119
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    .line 1121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1125
    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x4000

    .line 1135
    const/high16 v0, 0x2600

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 1136
    div-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 1137
    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 1138
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a:I

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 1140
    invoke-static {}, Lcom/github/clans/fab/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1142
    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 1143
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 1144
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1146
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    :cond_0
    :goto_1
    return-void

    .line 1138
    :cond_1
    div-float v0, p1, v1

    goto :goto_0

    .line 1151
    :cond_2
    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 1152
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1242
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1243
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 1244
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setEnabled(Z)V

    .line 1247
    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Landroid/view/animation/Animation;

    .line 1096
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 796
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 797
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 799
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    .line 805
    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:Landroid/graphics/drawable/Drawable;

    .line 806
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 808
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1164
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1165
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 1168
    :cond_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    .line 1170
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Z

    .line 1171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:J

    .line 1172
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()V

    .line 1173
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()V

    .line 1174
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    monitor-exit p0

    return-void

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Ljava/lang/String;

    .line 1080
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    :cond_0
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 2
    .parameter

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v1

    .line 1100
    if-eqz v1, :cond_0

    .line 1101
    invoke-virtual {v1, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 1102
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/github/clans/fab/Label;->setHandleVisibilityChanges(Z)V

    .line 1104
    :cond_0
    return-void

    .line 1102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 337
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 338
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v0, p1

    .line 339
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v0, p1

    .line 340
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v0, p1

    .line 341
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .parameter

    .prologue
    .line 1178
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    monitor-exit p0

    return-void

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 812
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/View$OnClickListener;

    .line 814
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 815
    if-eqz v0, :cond_0

    .line 816
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$3;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 1023
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-eq v0, p1, :cond_0

    .line 1024
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 1025
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1027
    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1016
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-eq v1, v0, :cond_0

    .line 1017
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    .line 1018
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1020
    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .parameter

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 942
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 943
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 944
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 2
    .parameter

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 925
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    if-eq v1, v0, :cond_0

    .line 926
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 927
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 928
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 930
    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1
    .parameter

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 974
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 975
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 976
    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 2
    .parameter

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 957
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-eq v1, v0, :cond_0

    .line 958
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 959
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 960
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 962
    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1
    .parameter

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 1006
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 1007
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 1008
    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 2
    .parameter

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 989
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    if-eq v1, v0, :cond_0

    .line 990
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 991
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 992
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 994
    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 1092
    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    monitor-exit p0

    return-void

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowShadow(Z)V
    .locals 1
    .parameter

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    if-eq v0, p1, :cond_0

    .line 909
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:Z

    .line 910
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    .line 912
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 1251
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1252
    sget v0, Lcom/github/clans/fab/a$d;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 1253
    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 1256
    :cond_0
    return-void
.end method
