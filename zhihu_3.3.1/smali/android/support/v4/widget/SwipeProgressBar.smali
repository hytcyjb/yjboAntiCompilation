.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/support/v4/view/b/b;

    invoke-direct {v0}, Landroid/support/v4/view/b/b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->b:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->c:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->i:Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->h:Landroid/view/View;

    .line 72
    const/high16 v0, -0x4d00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->d:I

    .line 73
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->e:I

    .line 74
    const/high16 v0, 0x4d00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->f:I

    .line 75
    const/high16 v0, 0x1a00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->g:I

    .line 76
    return-void
.end method
