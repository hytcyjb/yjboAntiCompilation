.class public Lcom/didi/beatles/ui/component/RedTipTextView;
.super Landroid/widget/TextView;
.source "RedTipTextView.java"


# static fields
.field public static final RED_TIP_GONE:I = 0x2

.field public static final RED_TIP_INVISIBLE:I = 0x0

.field public static final RED_TIP_VISIBLE:I = 0x1


# instance fields
.field private tipVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/RedTipTextView;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    .line 28
    invoke-virtual {p0, p2}, Lcom/didi/beatles/ui/component/RedTipTextView;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    .line 33
    invoke-virtual {p0, p2}, Lcom/didi/beatles/ui/component/RedTipTextView;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/RedTipTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/psnger/R$styleable;->RedTipTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .end local v0           #array:Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const-wide v6, 0x3fe3333333333333L

    const/4 v4, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget v3, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    if-ne v3, v4, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/RedTipTextView;->getWidth()I

    move-result v2

    .line 49
    .local v2, width:I
    const/16 v0, 0x14

    .line 50
    .local v0, paddingRight:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v1, paint:Landroid/graphics/Paint;
    const/high16 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    int-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v3, v3

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    const/16 v5, 0xa

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    .end local v0           #paddingRight:I
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #width:I
    :cond_0
    return-void
.end method

.method public setTextViewVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 60
    iput p1, p0, Lcom/didi/beatles/ui/component/RedTipTextView;->tipVisibility:I

    .line 61
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/RedTipTextView;->invalidate()V

    .line 62
    return-void
.end method
