.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/VisibilityAwareImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$b;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/PorterDuff$Mode;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Landroid/graphics/Rect;

.field private i:Landroid/support/design/widget/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    .line 111
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 113
    sget-object v0, Landroid/support/design/a$i;->FloatingActionButton:[I

    sget v1, Landroid/support/design/a$h;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 117
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 119
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 120
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    .line 121
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    .line 122
    sget v1, Landroid/support/design/a$i;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 123
    sget v2, Landroid/support/design/a$i;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 125
    sget v3, Landroid/support/design/a$i;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/design/a$d;->design_fab_image_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 129
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    .line 131
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v6, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/design/widget/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 133
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/i;->c(F)V

    .line 134
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/i;->d(F)V

    .line 135
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->g()V

    .line 136
    return-void
.end method

.method private static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 397
    .line 398
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 399
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 400
    sparse-switch v1, :sswitch_data_0

    .line 417
    :goto_0
    :sswitch_0
    return p0

    .line 410
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 414
    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    sparse-switch p0, :sswitch_data_0

    .line 433
    :goto_0
    return-object p1

    .line 423
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 425
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 427
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 429
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 431
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/i$a;
    .locals 1
    .parameter

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method private a()Landroid/support/design/widget/i;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 647
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 648
    new-instance v0, Landroid/support/design/widget/j;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/j;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V

    .line 652
    :goto_0
    return-object v0

    .line 649
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 650
    new-instance v0, Landroid/support/design/widget/h;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/h;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V

    goto :goto_0

    .line 652
    :cond_1
    new-instance v0, Landroid/support/design/widget/g;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$1;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/g;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/o;)V

    goto :goto_0
.end method

.method private a(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/i$a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/i;->b(Landroid/support/design/widget/i$a;Z)V

    .line 260
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/support/design/widget/FloatingActionButton$a;Z)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    return v0
.end method

.method private b(Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/i$a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i$a;Z)V

    .line 282
    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;Z)V

    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    return v0
.end method

.method private getImpl()Landroid/support/design/widget/i;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/design/widget/i;

    if-nez v0, :cond_0

    .line 640
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->a()Landroid/support/design/widget/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/design/widget/i;

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:Landroid/support/design/widget/i;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 359
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/i;->a([I)V

    .line 360
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->a()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    packed-switch v0, :pswitch_data_0

    .line 340
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 337
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 366
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->b()V

    .line 367
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 347
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->h()V

    .line 348
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 353
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->i()V

    .line 354
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 142
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 143
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 147
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 153
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 237
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 232
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 191
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 192
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(Landroid/content/res/ColorStateList;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 220
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 221
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1
    .parameter

    .prologue
    .line 635
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->c(F)V

    .line 636
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 167
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Z

    .line 297
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/i;->c()V

    .line 299
    :cond_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method
