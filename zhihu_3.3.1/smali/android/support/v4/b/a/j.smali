.class Landroid/support/v4/b/a/j;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperDonut.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/b/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/a/j$b;,
        Landroid/support/v4/b/a/j$a;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field b:Landroid/support/v4/b/a/j$a;

.field c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Landroid/graphics/PorterDuff$Mode;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v4/b/a/j;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->b()Landroid/support/v4/b/a/j$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    .line 60
    iput-object p1, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    .line 51
    invoke-direct {p0, p2}, Landroid/support/v4/b/a/j;->a(Landroid/content/res/Resources;)V

    .line 52
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v0, v0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v0, v0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/b/a/j;->a(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/support/v4/b/a/j;->a(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    return-void
.end method

.method private a([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    iget-object v2, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v2, v2, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    .line 277
    iget-object v3, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v3, v3, Landroid/support/v4/b/a/j$a;->d:Landroid/graphics/PorterDuff$Mode;

    .line 279
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 280
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 281
    iget-boolean v4, p0, Landroid/support/v4/b/a/j;->f:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/b/a/j;->d:I

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/b/a/j;->e:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_0

    .line 282
    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/b/a/j;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    iput v2, p0, Landroid/support/v4/b/a/j;->d:I

    .line 284
    iput-object v3, p0, Landroid/support/v4/b/a/j;->e:Landroid/graphics/PorterDuff$Mode;

    .line 285
    iput-boolean v1, p0, Landroid/support/v4/b/a/j;->f:Z

    move v0, v1

    .line 286
    goto :goto_0

    .line 289
    :cond_3
    iput-boolean v0, p0, Landroid/support/v4/b/a/j;->f:Z

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->clearColorFilter()V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/b/a/j;->a(Landroid/content/res/ColorStateList;)V

    .line 256
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iput-object p1, v0, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    .line 261
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/b/a/j;->a([I)Z

    .line 262
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iput-object p1, v0, Landroid/support/v4/b/a/j$a;->d:Landroid/graphics/PorterDuff$Mode;

    .line 267
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/b/a/j;->a([I)Z

    .line 268
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    :cond_0
    iput-object p1, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    .line 312
    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 315
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 317
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->invalidateSelf()V

    .line 325
    return-void
.end method

.method b()Landroid/support/v4/b/a/j$a;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/support/v4/b/a/j$b;

    iget-object v1, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b/a/j$b;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    invoke-virtual {v0}, Landroid/support/v4/b/a/j$a;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    invoke-virtual {v0}, Landroid/support/v4/b/a/j$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v4/b/a/j$a;->a:I

    .line 195
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    .line 197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->invalidateSelf()V

    .line 232
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v0, v0, Landroid/support/v4/b/a/j$a;->c:Landroid/content/res/ColorStateList;

    .line 130
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/support/v4/b/a/j;->g:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 203
    invoke-virtual {p0}, Landroid/support/v4/b/a/j;->b()Landroid/support/v4/b/a/j$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    .line 204
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Landroid/support/v4/b/a/j;->b:Landroid/support/v4/b/a/j$a;

    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/support/v4/b/a/j$a;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 210
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/a/j;->g:Z

    .line 212
    :cond_2
    return-object p0

    .line 208
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/b/a/j;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 239
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 98
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 110
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 115
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 136
    invoke-direct {p0, p1}, Landroid/support/v4/b/a/j;->a([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/a/j;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0, p2}, Landroid/support/v4/b/a/j;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method
