.class Landroid/support/design/widget/g;
.super Landroid/support/design/widget/i;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/g$b;,
        Landroid/support/design/widget/g$c;,
        Landroid/support/design/widget/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/design/widget/n;

.field private m:I

.field private n:Landroid/support/design/widget/q;

.field private o:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/i;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V

    .line 46
    invoke-virtual {p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/g;->m:I

    .line 48
    new-instance v0, Landroid/support/design/widget/q;

    invoke-direct {v0}, Landroid/support/design/widget/q;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/q;->a(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    sget-object v1, Landroid/support/design/widget/g;->h:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/q;->a([ILandroid/view/animation/Animation;)V

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    sget-object v1, Landroid/support/design/widget/g;->i:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/q;->a([ILandroid/view/animation/Animation;)V

    .line 57
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    sget-object v1, Landroid/support/design/widget/g;->j:[I

    new-instance v2, Landroid/support/design/widget/g$c;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$c;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/q;->a([ILandroid/view/animation/Animation;)V

    .line 59
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2
    .parameter

    .prologue
    .line 225
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    iget v0, p0, Landroid/support/design/widget/g;->m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/support/design/widget/g;->o:Z

    return p1
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 268
    new-array v0, v1, [[I

    .line 269
    new-array v1, v1, [I

    .line 272
    sget-object v2, Landroid/support/design/widget/g;->i:[I

    aput-object v2, v0, v4

    .line 273
    aput p0, v1, v4

    .line 274
    const/4 v2, 0x1

    .line 276
    sget-object v3, Landroid/support/design/widget/g;->h:[I

    aput-object v3, v0, v2

    .line 277
    aput p0, v1, v2

    .line 278
    const/4 v2, 0x2

    .line 281
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 282
    aput v4, v1, v2

    .line 285
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/support/design/widget/g;->f:F

    return v0
.end method

.method a(F)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    iget v1, p0, Landroid/support/design/widget/g;->g:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/n;->a(FF)V

    .line 134
    invoke-virtual {p0}, Landroid/support/design/widget/g;->g()V

    .line 136
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/g;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/b;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    .line 109
    :cond_1
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/support/design/widget/g;->k()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 68
    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/g;->k()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/widget/g;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 81
    if-lez p4, :cond_1

    .line 82
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/g;->a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/b;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/b;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 89
    :goto_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/g;->e:Landroid/graphics/drawable/Drawable;

    .line 91
    new-instance v0, Landroid/support/design/widget/n;

    iget-object v1, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/g;->e:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/widget/g;->l:Landroid/support/design/widget/o;

    invoke-interface {v3}, Landroid/support/design/widget/o;->a()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/g;->f:F

    iget v5, p0, Landroid/support/design/widget/g;->f:F

    iget v6, p0, Landroid/support/design/widget/g;->g:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/n;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/n;->a(Z)V

    .line 98
    iget-object v0, p0, Landroid/support/design/widget/g;->l:Landroid/support/design/widget/o;

    iget-object v1, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    invoke-interface {v0, v1}, Landroid/support/design/widget/o;->a(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/g;->d:Landroid/support/design/widget/b;

    .line 86
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 116
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n;->getPadding(Landroid/graphics/Rect;)Z

    .line 222
    return-void
.end method

.method a(Landroid/support/design/widget/i$a;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/support/design/widget/g;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1}, Landroid/support/design/widget/i$a;->b()V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v1, Landroid/support/design/widget/g$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/g$1;-><init>(Landroid/support/design/widget/g;ZLandroid/support/design/widget/i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    iget-object v1, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method a([I)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/q;->a([I)V

    .line 149
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/design/widget/g;->n:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->b()V

    .line 154
    return-void
.end method

.method b(F)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/n;

    iget v1, p0, Landroid/support/design/widget/g;->f:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->c(F)V

    .line 142
    invoke-virtual {p0}, Landroid/support/design/widget/g;->g()V

    .line 144
    :cond_0
    return-void
.end method

.method b(Landroid/support/design/widget/i$a;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/g;->o:Z

    if-eqz v0, :cond_2

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->clearAnimation()V

    .line 194
    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 197
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    sget-object v1, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    new-instance v1, Landroid/support/design/widget/g$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/g$2;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    iget-object v1, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    if-eqz p1, :cond_1

    .line 210
    invoke-interface {p1}, Landroid/support/design/widget/i$a;->a()V

    goto :goto_0
.end method

.method c()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
