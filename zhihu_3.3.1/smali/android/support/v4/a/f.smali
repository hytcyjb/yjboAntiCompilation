.class Landroid/support/v4/a/f;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/f$a;,
        Landroid/support/v4/a/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/a/g;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/support/v4/a/f$b;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/f$b;-><init>(Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v4/a/f;->a:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/f;->a:Landroid/animation/TimeInterpolator;

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/a/f;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 134
    return-void
.end method
