.class public Landroid/support/v7/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Landroid/support/v7/widget/o;


# static fields
.field private static final a:Landroid/support/v7/widget/q;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 76
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-direct {v0}, Landroid/support/v7/widget/n;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    .line 82
    :goto_0
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()V

    .line 83
    return-void

    .line 77
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 78
    new-instance v0, Landroid/support/v7/widget/r;

    invoke-direct {v0}, Landroid/support/v7/widget/r;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0}, Landroid/support/v7/widget/p;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->g:Landroid/graphics/Rect;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->g:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardView;->g:Landroid/graphics/Rect;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 212
    sget-object v0, Landroid/support/v7/b/a$d;->CardView:[I

    sget v1, Landroid/support/v7/b/a$c;->CardView_Light:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 215
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 216
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 217
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardMaxElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 218
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardUseCompatPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/CardView;->b:Z

    .line 219
    sget v1, Landroid/support/v7/b/a$d;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/CardView;->c:Z

    .line 220
    sget v1, Landroid/support/v7/b/a$d;->CardView_contentPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 221
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/b/a$d;->CardView_contentPaddingLeft:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 223
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/b/a$d;->CardView_contentPaddingTop:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 225
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/b/a$d;->CardView_contentPaddingRight:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v2, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/b/a$d;->CardView_contentPaddingBottom:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 229
    cmpl-float v1, v5, v6

    if-lez v1, :cond_0

    move v6, v5

    .line 232
    :cond_0
    sget v1, Landroid/support/v7/b/a$d;->CardView_android_minWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/CardView;->d:I

    .line 233
    sget v1, Landroid/support/v7/b/a$d;->CardView_android_minHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/CardView;->e:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/o;Landroid/content/Context;IFFF)V

    .line 237
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    iget v0, p0, Landroid/support/v7/widget/CardView;->d:I

    if-le p1, v0, :cond_0

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 262
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/CardView;->e:I

    if-le p2, v0, :cond_1

    .line 263
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 265
    :cond_1
    return-void
.end method

.method public a(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iget-object v3, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 344
    return-void
.end method

.method public getCardElevation()F
    .locals 1

    .prologue
    .line 366
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/q;->e(Landroid/support/v7/widget/o;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    .prologue
    .line 392
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/o;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->c:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 331
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/q;->d(Landroid/support/v7/widget/o;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->b:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 185
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    instance-of v0, v0, Landroid/support/v7/widget/n;

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 187
    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 197
    sparse-switch v0, :sswitch_data_1

    .line 205
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 209
    :goto_2
    return-void

    .line 190
    :sswitch_0
    sget-object v1, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p0}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/o;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 200
    :sswitch_1
    sget-object v1, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p0}, Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/o;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 207
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 197
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 274
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/o;I)V

    .line 275
    return-void
.end method

.method public setCardElevation(F)V
    .locals 1
    .parameter

    .prologue
    .line 355
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/o;F)V

    .line 356
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1
    .parameter

    .prologue
    .line 381
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/o;F)V

    .line 382
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput p1, p0, Landroid/support/v7/widget/CardView;->e:I

    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 249
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput p1, p0, Landroid/support/v7/widget/CardView;->d:I

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 243
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->c:Z

    if-ne p1, v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->c:Z

    .line 425
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/q;->h(Landroid/support/v7/widget/o;)V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 1
    .parameter

    .prologue
    .line 321
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/o;F)V

    .line 322
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->b:Z

    if-ne v0, p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/CardView;->b:Z

    .line 159
    sget-object v0, Landroid/support/v7/widget/CardView;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/q;->g(Landroid/support/v7/widget/o;)V

    goto :goto_0
.end method
