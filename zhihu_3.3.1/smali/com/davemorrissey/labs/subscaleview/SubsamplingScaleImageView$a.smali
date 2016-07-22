.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:J

.field private i:Z

.field private j:I

.field private k:J

.field private l:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h:J

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->i:Z

    .line 1783
    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j:I

    .line 1784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->a:F

    return p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j:I

    return p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-wide p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->e:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->l:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    return-object p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b:F

    return p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-wide p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->c:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->l:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

    return-object v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J
    .locals 2
    .parameter

    .prologue
    .line 1772
    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->k:J

    return-wide v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)J
    .locals 2
    .parameter

    .prologue
    .line 1772
    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->f:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)I
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->j:I

    return v0
.end method

.method static synthetic e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->g:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->a:F

    return v0
.end method

.method static synthetic g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)F
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->b:F

    return v0
.end method

.method static synthetic h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->f:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->g:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic k(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->e:Landroid/graphics/PointF;

    return-object v0
.end method
