.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;,
        Landroid/support/design/widget/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/ag;

.field private b:Landroid/support/design/widget/SwipeDismissBehavior$a;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/widget/ag$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 85
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 89
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    .line 90
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 91
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 213
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ag$a;

    .line 362
    return-void
.end method

.method static a(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(III)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    if-nez v0, :cond_0

    .line 356
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ag$a;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    .line 360
    :cond_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ag$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(FFF)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    return v0
.end method

.method private static b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ag;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    return-object v0
.end method

.method private static c(FFF)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/SwipeDismissBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    return v0
.end method

.method static synthetic e(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    return v0
.end method

.method static synthetic f(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 146
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 128
    return-void
.end method

.method public a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    .line 118
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-static {p3}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    .line 186
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_2

    .line 191
    :goto_1
    return v1

    .line 175
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 181
    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ag;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public b(F)V
    .locals 2
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 155
    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ag;->b(Landroid/view/MotionEvent;)V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
