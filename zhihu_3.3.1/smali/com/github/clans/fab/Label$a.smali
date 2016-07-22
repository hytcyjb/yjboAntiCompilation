.class Lcom/github/clans/fab/Label$a;
.super Landroid/graphics/drawable/Drawable;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/Label;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Lcom/github/clans/fab/Label;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 333
    iput-object p1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/Label$a;->b:Landroid/graphics/Paint;

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/Label$a;->c:Landroid/graphics/Paint;

    .line 334
    invoke-direct {p0}, Lcom/github/clans/fab/Label$a;->a()V

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/github/clans/fab/Label;Lcom/github/clans/fab/Label$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/github/clans/fab/Label$a;-><init>(Lcom/github/clans/fab/Label;)V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 338
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/github/clans/fab/Label;->setLayerType(ILandroid/graphics/Paint;)V

    .line 339
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 340
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v1}, Lcom/github/clans/fab/Label;->b(Lcom/github/clans/fab/Label;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->c:Landroid/graphics/Paint;

    invoke-static {}, Lcom/github/clans/fab/Label;->g()Landroid/graphics/Xfermode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 344
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/github/clans/fab/Label$a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v1}, Lcom/github/clans/fab/Label;->c(Lcom/github/clans/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v2}, Lcom/github/clans/fab/Label;->d(Lcom/github/clans/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v3}, Lcom/github/clans/fab/Label;->e(Lcom/github/clans/fab/Label;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v4}, Lcom/github/clans/fab/Label;->f(Lcom/github/clans/fab/Label;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 347
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 351
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    .line 352
    invoke-static {v1}, Lcom/github/clans/fab/Label;->c(Lcom/github/clans/fab/Label;)I

    move-result v1

    iget-object v2, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v2}, Lcom/github/clans/fab/Label;->d(Lcom/github/clans/fab/Label;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    .line 353
    invoke-static {v2}, Lcom/github/clans/fab/Label;->c(Lcom/github/clans/fab/Label;)I

    move-result v2

    iget-object v3, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v3}, Lcom/github/clans/fab/Label;->e(Lcom/github/clans/fab/Label;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    .line 354
    invoke-static {v3}, Lcom/github/clans/fab/Label;->g(Lcom/github/clans/fab/Label;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    .line 355
    invoke-static {v4}, Lcom/github/clans/fab/Label;->h(Lcom/github/clans/fab/Label;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 358
    iget-object v1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v1}, Lcom/github/clans/fab/Label;->i(Lcom/github/clans/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v2}, Lcom/github/clans/fab/Label;->i(Lcom/github/clans/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/clans/fab/Label$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 359
    iget-object v1, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v1}, Lcom/github/clans/fab/Label;->i(Lcom/github/clans/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/clans/fab/Label$a;->a:Lcom/github/clans/fab/Label;

    invoke-static {v2}, Lcom/github/clans/fab/Label;->i(Lcom/github/clans/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/clans/fab/Label$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 365
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    return-void
.end method
