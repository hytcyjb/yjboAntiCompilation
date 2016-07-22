.class Landroid/support/v7/widget/p;
.super Ljava/lang/Object;
.source "CardViewEclairMr1.java"

# interfaces
.implements Landroid/support/v7/widget/q;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/support/v7/widget/o;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/af;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/o;)F
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->c()F

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;IFFF)Landroid/support/v7/widget/af;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/support/v7/widget/af;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/af;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/support/v7/widget/p$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/p$1;-><init>(Landroid/support/v7/widget/p;)V

    sput-object v0, Landroid/support/v7/widget/af;->c:Landroid/support/v7/widget/af$a;

    .line 73
    return-void
.end method

.method public a(Landroid/support/v7/widget/o;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/af;->a(F)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->f(Landroid/support/v7/widget/o;)V

    .line 121
    return-void
.end method

.method public a(Landroid/support/v7/widget/o;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/af;->a(I)V

    .line 115
    return-void
.end method

.method public a(Landroid/support/v7/widget/o;Landroid/content/Context;IFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;IFFF)Landroid/support/v7/widget/af;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Landroid/support/v7/widget/o;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->a(Z)V

    .line 81
    invoke-interface {p1, v0}, Landroid/support/v7/widget/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->f(Landroid/support/v7/widget/o;)V

    .line 83
    return-void
.end method

.method public b(Landroid/support/v7/widget/o;)F
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->d()F

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/o;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/af;->c(F)V

    .line 141
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->f(Landroid/support/v7/widget/o;)V

    .line 142
    return-void
.end method

.method public c(Landroid/support/v7/widget/o;)F
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->e()F

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/widget/o;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/af;->b(F)V

    .line 131
    return-void
.end method

.method public d(Landroid/support/v7/widget/o;)F
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->a()F

    move-result v0

    return v0
.end method

.method public e(Landroid/support/v7/widget/o;)F
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->b()F

    move-result v0

    return v0
.end method

.method public f(Landroid/support/v7/widget/o;)V
    .locals 4
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->a(Landroid/graphics/Rect;)V

    .line 95
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->b(Landroid/support/v7/widget/o;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->c(Landroid/support/v7/widget/o;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/o;->a(II)V

    .line 97
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/support/v7/widget/o;->a(IIII)V

    .line 99
    return-void
.end method

.method public g(Landroid/support/v7/widget/o;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public h(Landroid/support/v7/widget/o;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->i(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/af;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/o;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->a(Z)V

    .line 109
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->f(Landroid/support/v7/widget/o;)V

    .line 110
    return-void
.end method
