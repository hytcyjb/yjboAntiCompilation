.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a:F

    .line 1792
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b:Landroid/graphics/PointF;

    .line 1793
    return-void
.end method

.method synthetic constructor <init>(FLandroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1789
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;-><init>(FLandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)F
    .locals 1
    .parameter

    .prologue
    .line 1789
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a:F

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1789
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->a:F

    return p1
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$f;->b:Landroid/graphics/PointF;

    return-object v0
.end method
