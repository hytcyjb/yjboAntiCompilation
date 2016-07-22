.class abstract Landroid/support/design/widget/i;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/i$a;
    }
.end annotation


# static fields
.field static final h:[I

.field static final i:[I

.field static final j:[I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Landroid/support/design/widget/b;

.field e:Landroid/graphics/drawable/Drawable;

.field f:F

.field g:F

.field final k:Landroid/support/design/widget/VisibilityAwareImageButton;

.field final l:Landroid/support/design/widget/o;

.field private m:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/i;->h:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/i;->i:[I

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/i;->j:[I

    return-void

    .line 47
    nop

    :array_0
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data

    .line 49
    :array_1
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Landroid/support/design/widget/i;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 62
    iput-object p2, p0, Landroid/support/design/widget/i;->l:Landroid/support/design/widget/o;

    .line 63
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/support/design/widget/i$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/i$1;-><init>(Landroid/support/design/widget/i;)V

    iput-object v0, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()F
.end method

.method a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/i;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/support/design/widget/i;->j()Landroid/support/design/widget/b;

    move-result-object v1

    .line 140
    sget v2, Landroid/support/design/a$c;->design_fab_stroke_top_outer_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/design/a$c;->design_fab_stroke_top_inner_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/design/a$c;->design_fab_stroke_end_inner_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Landroid/support/design/a$c;->design_fab_stroke_end_outer_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/b;->a(IIII)V

    .line 145
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b;->a(F)V

    .line 146
    invoke-virtual {v1, p2}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    .line 147
    return-object v1
.end method

.method abstract a(F)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a(Landroid/graphics/Rect;)V
.end method

.method abstract a(Landroid/support/design/widget/i$a;Z)V
.end method

.method abstract a([I)V
.end method

.method abstract b()V
.end method

.method abstract b(F)V
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method abstract b(Landroid/support/design/widget/i$a;Z)V
.end method

.method abstract c()V
.end method

.method final c(F)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Landroid/support/design/widget/i;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Landroid/support/design/widget/i;->f:F

    .line 77
    invoke-virtual {p0, p1}, Landroid/support/design/widget/i;->a(F)V

    .line 79
    :cond_0
    return-void
.end method

.method final d(F)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Landroid/support/design/widget/i;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 85
    iput p1, p0, Landroid/support/design/widget/i;->g:F

    .line 86
    invoke-virtual {p0, p1}, Landroid/support/design/widget/i;->b(F)V

    .line 88
    :cond_0
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/design/widget/i;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final g()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p0, v0}, Landroid/support/design/widget/i;->a(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0, v0}, Landroid/support/design/widget/i;->b(Landroid/graphics/Rect;)V

    .line 112
    iget-object v1, p0, Landroid/support/design/widget/i;->l:Landroid/support/design/widget/o;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/o;->a(IIII)V

    .line 113
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/support/design/widget/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Landroid/support/design/widget/i;->l()V

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/i;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 124
    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/design/widget/i;->k:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 131
    :cond_0
    return-void
.end method

.method j()Landroid/support/design/widget/b;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Landroid/support/design/widget/b;

    invoke-direct {v0}, Landroid/support/design/widget/b;-><init>()V

    return-object v0
.end method

.method k()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 172
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 173
    return-object v0
.end method
