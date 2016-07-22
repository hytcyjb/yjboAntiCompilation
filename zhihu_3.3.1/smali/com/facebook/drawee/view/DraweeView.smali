.class public Lcom/facebook/drawee/view/DraweeView;
.super Landroid/widget/ImageView;
.source "DraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/d/b;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/drawee/view/a$a;

.field private b:F

.field private c:Lcom/facebook/drawee/view/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/view/b",
            "<TDH;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/facebook/drawee/view/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/facebook/drawee/view/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/facebook/drawee/view/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v0, Lcom/facebook/drawee/view/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 78
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/b;Landroid/content/Context;)Lcom/facebook/drawee/view/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->setColorFilter(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    return v0
.end method

.method public getController()Lcom/facebook/drawee/d/a;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->d()Lcom/facebook/drawee/d/a;

    move-result-object v0

    return-object v0
.end method

.method public getHierarchy()Lcom/facebook/drawee/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->e()Lcom/facebook/drawee/d/b;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 128
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->b()V

    .line 129
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->c()V

    .line 135
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 146
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->b()V

    .line 147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iput p1, v0, Lcom/facebook/drawee/view/a$a;->a:I

    .line 226
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iput p2, v0, Lcom/facebook/drawee/view/a$a;->b:I

    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iget v1, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 230
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 232
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 227
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/view/a;->a(Lcom/facebook/drawee/view/a$a;FLandroid/view/ViewGroup$LayoutParams;II)V

    .line 233
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iget v0, v0, Lcom/facebook/drawee/view/a$a;->a:I

    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iget v1, v1, Lcom/facebook/drawee/view/a$a;->b:I

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 234
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 140
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->c()V

    .line 141
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 213
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->requestLayout()V

    goto :goto_0
.end method

.method public setController(Lcom/facebook/drawee/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/a;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setHierarchy(Lcom/facebook/drawee/d/b;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/b;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/a;)V

    .line 178
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/a;)V

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/a;)V

    .line 190
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->a(Landroid/content/Context;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->a(Lcom/facebook/drawee/d/a;)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v1

    const-string v2, "holder"

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    .line 239
    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    const-string v0, "<no holder set>"

    goto :goto_0
.end method
