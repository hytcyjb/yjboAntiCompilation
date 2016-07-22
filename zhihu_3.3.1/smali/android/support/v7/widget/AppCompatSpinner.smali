.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatSpinner$b;,
        Landroid/support/v7/widget/AppCompatSpinner$a;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:[I


# instance fields
.field private d:Landroid/support/v7/widget/h;

.field private e:Landroid/support/v7/widget/f;

.field private f:Landroid/content/Context;

.field private g:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

.field private h:Landroid/widget/SpinnerAdapter;

.field private i:Z

.field private j:Landroid/support/v7/widget/AppCompatSpinner$b;

.field private k:I

.field private final l:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->a:Z

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    .line 68
    new-array v0, v1, [I

    const v1, 0x10102f1

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->c:[I

    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v0, v2

    .line 66
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    sget v0, Landroid/support/v7/a/a$a;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->l:Landroid/graphics/Rect;

    .line 197
    sget-object v0, Landroid/support/v7/a/a$k;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v7}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ap;

    move-result-object v4

    .line 200
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->d:Landroid/support/v7/widget/h;

    .line 201
    new-instance v0, Landroid/support/v7/widget/f;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->d:Landroid/support/v7/widget/h;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;Landroid/support/v7/widget/h;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    .line 203
    if-eqz p5, :cond_5

    .line 204
    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, p1, p5}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    .line 216
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_9

    .line 222
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/AppCompatSpinner;->c:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 224
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result p4

    .line 230
    :cond_0
    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    :cond_1
    :goto_1
    if-ne p4, v3, :cond_2

    .line 241
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$b;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$b;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/a/a$k;->Spinner:[I

    invoke-static {v2, p2, v5, p3, v7}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ap;

    move-result-object v2

    .line 244
    sget v5, Landroid/support/v7/a/a$k;->Spinner_android_dropDownWidth:I

    const/4 v6, -0x2

    invoke-virtual {v2, v5, v6}, Landroid/support/v7/widget/ap;->f(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->k:I

    .line 246
    sget v5, Landroid/support/v7/a/a$k;->Spinner_android_popupBackground:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 248
    sget v5, Landroid/support/v7/a/a$k;->Spinner_android_prompt:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v2}, Landroid/support/v7/widget/ap;->a()V

    .line 251
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    .line 252
    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner$1;

    invoke-direct {v2, p0, p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$b;)V

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->g:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    .line 269
    :cond_2
    sget v0, Landroid/support/v7/a/a$k;->Spinner_android_entries:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ap;->e(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_3

    .line 271
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget v5, Landroid/support/v7/a/a$h;->support_simple_spinner_dropdown_item:I

    invoke-direct {v2, p1, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 273
    sget v0, Landroid/support/v7/a/a$h;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 274
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 277
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/widget/ap;->a()V

    .line 279
    iput-boolean v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->i:Z

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->h:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->h:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->h:Landroid/widget/SpinnerAdapter;

    .line 288
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 289
    return-void

    .line 206
    :cond_5
    sget v0, Landroid/support/v7/a/a$k;->Spinner_popupTheme:I

    invoke-virtual {v4, v0, v7}, Landroid/support/v7/widget/ap;->g(II)I

    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    new-instance v2, Landroid/support/v7/view/d;

    invoke-direct {v2, p1, v0}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    goto/16 :goto_0

    .line 212
    :cond_6
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->a:Z

    if-nez v0, :cond_7

    move-object v0, p1

    :goto_2
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2

    .line 227
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 228
    :goto_3
    :try_start_2
    const-string v5, "AppCompatSpinner"

    const-string v6, "Could not read android:spinnerMode"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 230
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 231
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    throw v0

    :cond_9
    move p4, v3

    .line 236
    goto/16 :goto_1

    .line 230
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 227
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 530
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return v0

    .line 537
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 539
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 544
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 545
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 546
    sub-int v3, v8, v1

    .line 547
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 548
    :goto_1
    if-ge v5, v8, :cond_2

    .line 549
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 550
    if-eq v0, v1, :cond_4

    move-object v1, v2

    .line 554
    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 555
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 556
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 561
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 548
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 565
    :cond_2
    if-eqz p2, :cond_3

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->l:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$b;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->a:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/AppCompatSpinner;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->k:I

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()V

    .line 527
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->f()I

    move-result v0

    .line 361
    :goto_0
    return v0

    .line 358
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_1

    .line 359
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->g()I

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 374
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->k:I

    .line 378
    :goto_0
    return v0

    .line 375
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_1

    .line 376
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 318
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_1

    .line 319
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->a:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->i()V

    .line 405
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 421
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 426
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->g:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->g:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->c()V

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter

    .prologue
    .line 385
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->i:Z

    if-nez v0, :cond_1

    .line 386
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->h:Landroid/widget/SpinnerAdapter;

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner$a;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner$a;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->f:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(I)V

    .line 457
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->b(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->c(I)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_1

    .line 366
    iput p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->k:I

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->b:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->j:Landroid/support/v7/widget/AppCompatSpinner$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Ljava/lang/CharSequence;)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 479
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 506
    :cond_0
    return-void
.end method
