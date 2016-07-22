.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$a;,
        Landroid/support/design/widget/TextInputLayout$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/CharSequence;

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/content/res/ColorStateList;

.field private final t:Landroid/support/design/widget/CollapsingTextHelper;

.field private u:Z

.field private v:Landroid/support/design/widget/t;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    .line 134
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 137
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 140
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Landroid/view/animation/Interpolator;)V

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->b(Landroid/view/animation/Interpolator;)V

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->d(I)V

    .line 144
    sget-object v0, Landroid/support/design/a$i;->TextInputLayout:[I

    sget v1, Landroid/support/design/a$h;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    sget v1, Landroid/support/design/a$i;->TextInputLayout_hintEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    .line 147
    sget v1, Landroid/support/design/a$i;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    sget v1, Landroid/support/design/a$i;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    .line 151
    sget v1, Landroid/support/design/a$i;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget v1, Landroid/support/design/a$i;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    .line 156
    :cond_0
    sget v1, Landroid/support/design/a$i;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 158
    if-eq v1, v6, :cond_1

    .line 159
    sget v1, Landroid/support/design/a$i;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 163
    :cond_1
    sget v1, Landroid/support/design/a$i;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TextInputLayout;->i:I

    .line 164
    sget v1, Landroid/support/design/a$i;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 166
    sget v2, Landroid/support/design/a$i;->TextInputLayout_counterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 168
    sget v3, Landroid/support/design/a$i;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 170
    sget v3, Landroid/support/design/a$i;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->o:I

    .line 172
    sget v3, Landroid/support/design/a$i;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->p:I

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 177
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 179
    invoke-static {p0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 182
    invoke-static {p0, v5}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 186
    :cond_2
    new-instance v0, Landroid/support/design/widget/TextInputLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TextInputLayout$a;-><init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 187
    return-void
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 280
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->d()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 293
    :goto_1
    return-object p1

    .line 280
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ah;->m(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ah;->b(Landroid/view/View;IIII)V

    .line 460
    return-void
.end method

.method private a(F)V
    .locals 2
    .parameter

    .prologue
    .line 903
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->f()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    if-nez v0, :cond_1

    .line 907
    invoke-static {}, Landroid/support/design/widget/z;->a()Landroid/support/design/widget/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    .line 908
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/t;->a(Landroid/view/animation/Interpolator;)V

    .line 909
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/t;->a(I)V

    .line 910
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V

    .line 917
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->f()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/t;->a(FF)V

    .line 918
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->a()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 675
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 676
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 687
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eq v3, v0, :cond_0

    .line 688
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 689
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->b()V

    .line 691
    :cond_0
    return-void

    .line 679
    :cond_1
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    .line 680
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eq v3, v0, :cond_2

    .line 681
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->p:I

    :goto_2
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 684
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/a$g;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 679
    goto :goto_1

    .line 681
    :cond_4
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->o:I

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 465
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    .line 438
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 439
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 443
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 445
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->a()V

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 453
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    .line 454
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 298
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Landroid/support/design/widget/TextInputLayout;->a([II)Z

    move-result v3

    .line 299
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 301
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->b(I)V

    .line 305
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->a(I)V

    .line 313
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_7

    .line 315
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    .line 320
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 297
    goto :goto_0

    :cond_4
    move v1, v2

    .line 299
    goto :goto_1

    .line 307
    :cond_5
    if-eqz v3, :cond_6

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    .line 308
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->a(I)V

    goto :goto_2

    .line 309
    :cond_6
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/CollapsingTextHelper;->a(I)V

    goto :goto_2

    .line 318
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->c(Z)V

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->l:Z

    return v0
.end method

.method private static a([II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 959
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 960
    if-ne v3, p1, :cond_1

    .line 961
    const/4 v0, 0x1

    .line 964
    :cond_0
    return v0

    .line 959
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 694
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->c()V

    .line 696
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 703
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/h;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 706
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/h;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 715
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 881
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    .line 884
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    if-eqz v0, :cond_1

    .line 885
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->b(F)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 721
    if-nez v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 732
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_2

    .line 735
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/f;->a(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    .line 740
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->w:Z

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    .line 895
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    if-eqz v0, :cond_1

    .line 896
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->b(F)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_1

    .line 225
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->c(Landroid/graphics/Typeface;)V

    .line 233
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->a(F)V

    .line 234
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->c(I)V

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->r:Landroid/content/res/ColorStateList;

    .line 259
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 269
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 270
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->a()V

    .line 274
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 275
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    .line 346
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 847
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Landroid/graphics/Canvas;)V

    .line 850
    :cond_0
    return-void
.end method

.method public getCounterMaxLength()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->d()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 856
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 858
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 860
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/CollapsingTextHelper;->a(IIII)V

    .line 866
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/CollapsingTextHelper;->b(IIII)V

    .line 869
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->h()V

    .line 871
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 801
    check-cast p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 802
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 803
    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 804
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    .line 805
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 791
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 792
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 793
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->a:Ljava/lang/CharSequence;

    .line 796
    :cond_0
    return-object v1
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 877
    invoke-static {p0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 878
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 603
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->l:Z

    if-eq v0, p1, :cond_0

    .line 604
    if-eqz p1, :cond_2

    .line 605
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 608
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ah;->d(Landroid/view/View;I)V

    .line 619
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 620
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 629
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->l:Z

    .line 631
    :cond_0
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 612
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/a$h;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 614
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/a$c;->design_textinput_error_color_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    goto :goto_1

    .line 626
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->m:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public setCounterMaxLength(I)V
    .locals 1
    .parameter

    .prologue
    .line 652
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    if-eq v0, p1, :cond_0

    .line 653
    if-lez p1, :cond_1

    .line 654
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    .line 658
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->l:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(I)V

    .line 662
    :cond_0
    return-void

    .line 656
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->n:I

    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_1
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->k:Ljava/lang/CharSequence;

    .line 540
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-nez v0, :cond_2

    .line 541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 550
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v3

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 553
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_6

    .line 554
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    if-eqz v3, :cond_4

    .line 558
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->f(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    .line 560
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 562
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/bc;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 593
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->b()V

    .line 594
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 551
    goto :goto_1

    .line 574
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 575
    if-eqz v3, :cond_7

    .line 576
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/bc;

    move-result-object v0

    new-instance v2, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    goto :goto_2

    .line 588
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setErrorEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    if-eq v0, p1, :cond_1

    .line 480
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->b()V

    .line 484
    :cond_0
    if-eqz p1, :cond_2

    .line 485
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    .line 487
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->d(Landroid/view/View;I)V

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 506
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->g:Z

    .line 508
    :cond_1
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/a$h;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 493
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/a$c;->design_textinput_error_color_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 501
    :cond_2
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 502
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->b()V

    .line 503
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 340
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->u:Z

    .line 841
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-eq p1, v0, :cond_2

    .line 375
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    .line 377
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 378
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->b:Z

    if-nez v1, :cond_3

    .line 379
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 385
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 400
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :cond_2
    return-void

    .line 387
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 393
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintTextAppearance(I)V
    .locals 2
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->e(I)V

    .line 423
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->j()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->s:Landroid/content/res/ColorStateList;

    .line 425
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 429
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 430
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 433
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->t:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->c(Landroid/graphics/Typeface;)V

    .line 207
    return-void
.end method
