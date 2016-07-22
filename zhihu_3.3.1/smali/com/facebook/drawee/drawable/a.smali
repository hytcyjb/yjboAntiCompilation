.class public Lcom/facebook/drawee/drawable/a;
.super Landroid/graphics/drawable/Drawable;
.source "ArrayDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/facebook/drawee/drawable/n;
.implements Lcom/facebook/drawee/drawable/o;


# instance fields
.field private a:Lcom/facebook/drawee/drawable/o;

.field private final b:Lcom/facebook/drawee/drawable/d;

.field private final c:[Landroid/graphics/drawable/Drawable;

.field private final d:[Lcom/facebook/drawee/drawable/c;

.field private final e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v1, Lcom/facebook/drawee/drawable/d;

    invoke-direct {v1}, Lcom/facebook/drawee/drawable/d;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/a;->e:Landroid/graphics/Rect;

    .line 46
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->g:Z

    .line 49
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->h:Z

    .line 56
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-static {v1, p0, p0}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/o;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    new-array v0, v0, [Lcom/facebook/drawee/drawable/c;

    iput-object v0, p0, Lcom/facebook/drawee/drawable/a;->d:[Lcom/facebook/drawee/drawable/c;

    .line 62
    return-void
.end method

.method private c(I)Lcom/facebook/drawee/drawable/c;
    .locals 1
    .parameter

    .prologue
    .line 312
    new-instance v0, Lcom/facebook/drawee/drawable/a$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/a$1;-><init>(Lcom/facebook/drawee/drawable/a;I)V

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 80
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_1
.end method

.method public a(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    if-ltz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 89
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 90
    if-eq p2, v0, :cond_2

    .line 91
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/a;->h:Z

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-static {v1, v3, v3}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/o;)V

    .line 96
    invoke-static {p2, v3, v3}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/o;)V

    .line 97
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    invoke-static {p2, v1}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/d;)V

    .line 99
    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->getLevel()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->getState()[I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 103
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->isVisible()Z

    move-result v1

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 106
    :cond_1
    invoke-static {p2, p0, p0}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/o;)V

    .line 107
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/a;->g:Z

    .line 108
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v1, p1

    .line 109
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->invalidateSelf()V

    .line 111
    :cond_2
    return-object v0

    :cond_3
    move v0, v2

    .line 87
    goto :goto_0

    :cond_4
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->a:Lcom/facebook/drawee/drawable/o;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->a:Lcom/facebook/drawee/drawable/o;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/o;->a(Landroid/graphics/Matrix;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->a:Lcom/facebook/drawee/drawable/o;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->a:Lcom/facebook/drawee/drawable/o;

    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/o;->a(Landroid/graphics/RectF;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/drawee/drawable/o;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/facebook/drawee/drawable/a;->a:Lcom/facebook/drawee/drawable/o;

    .line 350
    return-void
.end method

.method public b(I)Lcom/facebook/drawee/drawable/c;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 304
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->d:[Lcom/facebook/drawee/drawable/c;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 305
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->d:[Lcom/facebook/drawee/drawable/c;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->d:[Lcom/facebook/drawee/drawable/c;

    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/a;->c(I)Lcom/facebook/drawee/drawable/c;

    move-result-object v1

    aput-object v1, v0, p1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->d:[Lcom/facebook/drawee/drawable/c;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    move v0, v2

    .line 303
    goto :goto_0

    :cond_2
    move v1, v2

    .line 304
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 190
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 129
    .line 130
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    .line 132
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    if-lez v1, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getIntrinsicWidth()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 117
    .line 118
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    if-lez v1, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 231
    const/4 v1, -0x2

    .line 240
    :cond_0
    return v1

    .line 233
    :cond_1
    const/4 v1, -0x1

    .line 234
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 236
    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    .line 234
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 198
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 199
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 200
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 201
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->e:Landroid/graphics/Rect;

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 205
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 207
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 208
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 209
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 210
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->invalidateSelf()V

    .line 332
    return-void
.end method

.method public isStateful()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 151
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->g:Z

    if-nez v0, :cond_2

    .line 152
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/a;->f:Z

    move v0, v1

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 155
    iget-boolean v4, p0, Lcom/facebook/drawee/drawable/a;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/a;->f:Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 155
    goto :goto_1

    .line 157
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/drawee/drawable/a;->g:Z

    .line 159
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->f:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/a;->h:Z

    .line 225
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 143
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 176
    move v1, v0

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 179
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return v1
.end method

.method protected onStateChange([I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    move v1, v0

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 167
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/drawee/drawable/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 337
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->a(I)V

    .line 246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 248
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->a(Landroid/graphics/ColorFilter;)V

    .line 257
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 259
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->a(Z)V

    .line 268
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 270
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/drawee/drawable/a;->b:Lcom/facebook/drawee/drawable/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/d;->b(Z)V

    .line 279
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    .line 290
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/facebook/drawee/drawable/a;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    .line 292
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    return v1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/drawable/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method
