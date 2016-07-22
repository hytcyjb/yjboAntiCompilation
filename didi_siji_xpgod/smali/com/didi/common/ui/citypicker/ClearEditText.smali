.class public Lcom/didi/common/ui/citypicker/ClearEditText;
.super Landroid/widget/EditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setClearIconVisible(Z)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 43
    invoke-virtual {p0, p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    return-void
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "counts"

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 102
    .local v0, translateAnimation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 93
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 88
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setClearIconVisible(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setClearIconVisible(Z)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/citypicker/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    .local v0, right:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/didi/common/ui/citypicker/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 73
    .end local v0           #right:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShakeAnimation()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/citypicker/ClearEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 97
    return-void
.end method
