.class Landroid/support/design/widget/u;
.super Landroid/support/design/widget/t$e;
.source "ValueAnimatorCompatImplEclairMr1.java"


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private b:J

.field private c:Z

.field private final d:[I

.field private final e:[F

.field private f:I

.field private g:Landroid/view/animation/Interpolator;

.field private h:Landroid/support/design/widget/t$e$a;

.field private i:Landroid/support/design/widget/t$e$b;

.field private j:F

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/u;->a:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/t$e;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/u;->d:[I

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/u;->e:[F

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Landroid/support/design/widget/u;->f:I

    .line 185
    new-instance v0, Landroid/support/design/widget/u$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/u$1;-><init>(Landroid/support/design/widget/u;)V

    iput-object v0, p0, Landroid/support/design/widget/u;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/u;->h()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/u;->b:J

    sub-long/2addr v0, v2

    .line 159
    long-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/u;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 160
    iget-object v1, p0, Landroid/support/design/widget/u;->g:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/u;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/design/widget/u;->j:F

    .line 165
    iget-object v0, p0, Landroid/support/design/widget/u;->i:Landroid/support/design/widget/t$e$b;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/u;->i:Landroid/support/design/widget/t$e$b;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$b;->a()V

    .line 170
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/u;->b:J

    iget v4, p0, Landroid/support/design/widget/u;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    .line 173
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->b()V

    .line 179
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    if-eqz v0, :cond_3

    .line 181
    sget-object v0, Landroid/support/design/widget/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/u;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/u;->g:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/u;->g:Landroid/view/animation/Interpolator;

    .line 59
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/u;->b:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->a()V

    .line 66
    :cond_2
    sget-object v0, Landroid/support/design/widget/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/u;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/design/widget/u;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 103
    iget-object v0, p0, Landroid/support/design/widget/u;->e:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 104
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput p1, p0, Landroid/support/design/widget/u;->f:I

    .line 114
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/design/widget/u;->d:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/u;->d:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 93
    return-void
.end method

.method public a(Landroid/support/design/widget/t$e$a;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    .line 82
    return-void
.end method

.method public a(Landroid/support/design/widget/t$e$b;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/widget/u;->i:Landroid/support/design/widget/t$e$b;

    .line 87
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Landroid/support/design/widget/u;->g:Landroid/view/animation/Interpolator;

    .line 77
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/design/widget/u;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/u;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/u;->f()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/design/widget/u;->e:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/u;->e:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/u;->f()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/u;->c:Z

    .line 119
    sget-object v0, Landroid/support/design/widget/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/u;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/u;->h:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->c()V

    .line 124
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/support/design/widget/u;->j:F

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Landroid/support/design/widget/u;->f:I

    int-to-long v0, v0

    return-wide v0
.end method
