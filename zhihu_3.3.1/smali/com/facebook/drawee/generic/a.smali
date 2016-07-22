.class public Lcom/facebook/drawee/generic/a;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Lcom/facebook/drawee/d/c;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/content/res/Resources;

.field private c:Lcom/facebook/drawee/generic/RoundingParams;

.field private final d:Lcom/facebook/drawee/generic/c;

.field private final e:Lcom/facebook/drawee/drawable/f;

.field private final f:Lcom/facebook/drawee/drawable/g;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method constructor <init>(Lcom/facebook/drawee/generic/b;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->a()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    .line 105
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->r()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 107
    new-instance v0, Lcom/facebook/drawee/drawable/g;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/drawable/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    .line 109
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->p()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 111
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    add-int v7, v1, v2

    .line 116
    add-int v1, v6, v0

    .line 117
    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lcom/facebook/drawee/generic/a;->g:I

    .line 118
    add-int/lit8 v1, v2, 0x1

    iput v2, p0, Lcom/facebook/drawee/generic/a;->i:I

    .line 119
    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lcom/facebook/drawee/generic/a;->h:I

    .line 120
    add-int/lit8 v1, v2, 0x1

    iput v2, p0, Lcom/facebook/drawee/generic/a;->j:I

    .line 121
    add-int/lit8 v8, v1, 0x1

    iput v1, p0, Lcom/facebook/drawee/generic/a;->k:I

    .line 123
    add-int v1, v8, v7

    .line 126
    new-array v9, v1, [Landroid/graphics/drawable/Drawable;

    .line 127
    if-lez v0, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 130
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v6

    invoke-direct {p0, v0, v11}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v1

    move v1, v2

    .line 131
    goto :goto_3

    :cond_0
    move v0, v6

    .line 109
    goto :goto_0

    :cond_1
    move v1, v6

    .line 110
    goto :goto_1

    :cond_2
    move v2, v6

    .line 111
    goto :goto_2

    .line 133
    :cond_3
    iget v0, p0, Lcom/facebook/drawee/generic/a;->g:I

    .line 134
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->d()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v2

    .line 133
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 136
    iget v10, p0, Lcom/facebook/drawee/generic/a;->i:I

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->k()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v2

    .line 139
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->m()Landroid/graphics/PointF;

    move-result-object v3

    .line 140
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->l()Landroid/graphics/Matrix;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->n()Landroid/graphics/ColorFilter;

    move-result-object v5

    move-object v0, p0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v10

    .line 142
    iget v0, p0, Lcom/facebook/drawee/generic/a;->h:I

    .line 143
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->j()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v2

    .line 142
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 145
    iget v0, p0, Lcom/facebook/drawee/generic/a;->j:I

    .line 146
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->f()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v2

    .line 145
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 148
    iget v0, p0, Lcom/facebook/drawee/generic/a;->k:I

    .line 149
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->h()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v2

    .line 148
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 151
    if-lez v7, :cond_5

    .line 153
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 155
    add-int/lit8 v1, v6, 0x1

    add-int v3, v8, v6

    invoke-direct {p0, v0, v11}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v3

    move v6, v1

    .line 156
    goto :goto_4

    .line 158
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 159
    add-int v0, v8, v6

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v11}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v9, v0

    .line 164
    :cond_5
    new-instance v0, Lcom/facebook/drawee/drawable/f;

    invoke-direct {v0, v9}, Lcom/facebook/drawee/drawable/f;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    .line 165
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/f;->c(I)V

    .line 168
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 169
    invoke-static {v0, v1}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/facebook/drawee/generic/c;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/c;

    .line 173
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/c;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/c;->mutate()Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->d()V

    .line 176
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 195
    invoke-static {v0, p2}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    invoke-static {p1, p2, p3}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    invoke-static {v0, p4}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method private a(F)V
    .locals 2
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/facebook/drawee/generic/a;->h:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->c(I)Lcom/facebook/drawee/drawable/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    const v0, 0x3f7fbe77

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 245
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 246
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 248
    :cond_1
    iget v0, p0, Lcom/facebook/drawee/generic/a;->h:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 256
    :goto_1
    const v0, 0x461c4000

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 250
    :cond_2
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 251
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 253
    :cond_3
    iget v0, p0, Lcom/facebook/drawee/generic/a;->h:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 226
    if-ltz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/f;->d(I)V

    .line 229
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 232
    if-ltz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/f;->e(I)V

    .line 235
    :cond_0
    return-void
.end method

.method private c(I)Lcom/facebook/drawee/drawable/c;
    .locals 2
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/f;->b(I)Lcom/facebook/drawee/drawable/c;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/drawee/drawable/h;

    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/drawable/h;

    .line 341
    :cond_0
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/drawee/drawable/m;

    if-eqz v1, :cond_1

    .line 342
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/drawable/m;

    .line 344
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/g;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 201
    return-void
.end method

.method private d(I)Lcom/facebook/drawee/drawable/m;
    .locals 2
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->c(I)Lcom/facebook/drawee/drawable/c;

    move-result-object v0

    .line 368
    instance-of v1, v0, Lcom/facebook/drawee/drawable/m;

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Lcom/facebook/drawee/drawable/m;

    .line 371
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v0, v1}, Lcom/facebook/drawee/generic/d;->a(Lcom/facebook/drawee/drawable/c;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/m;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->a()V

    .line 207
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->c()V

    .line 209
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->e()V

    .line 211
    iget v0, p0, Lcom/facebook/drawee/generic/a;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->d()V

    .line 213
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->b()V

    .line 215
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/facebook/drawee/generic/a;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 219
    iget v0, p0, Lcom/facebook/drawee/generic/a;->i:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 220
    iget v0, p0, Lcom/facebook/drawee/generic/a;->h:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 221
    iget v0, p0, Lcom/facebook/drawee/generic/a;->j:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 222
    iget v0, p0, Lcom/facebook/drawee/generic/a;->k:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->b(I)V

    .line 223
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/c;

    return-object v0
.end method

.method public a(FZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->a()V

    .line 290
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/a;->a(F)V

    .line 291
    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->d()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->b()V

    .line 295
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 397
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/g;->b(Landroid/graphics/RectF;)V

    .line 402
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->d:Lcom/facebook/drawee/generic/c;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/generic/c;->d(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v1, p0, Lcom/facebook/drawee/generic/a;->f:Lcom/facebook/drawee/drawable/g;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/drawable/g;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->a()V

    .line 278
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->e()V

    .line 279
    iget v0, p0, Lcom/facebook/drawee/generic/a;->i:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    .line 280
    invoke-direct {p0, p2}, Lcom/facebook/drawee/generic/a;->a(F)V

    .line 281
    if-eqz p3, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->d()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->b()V

    .line 285
    return-void
.end method

.method public a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget v0, p0, Lcom/facebook/drawee/generic/a;->i:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->d(I)Lcom/facebook/drawee/drawable/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/m;->a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 392
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->a()V

    .line 300
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->e()V

    .line 301
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    iget v1, p0, Lcom/facebook/drawee/generic/a;->k:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget v0, p0, Lcom/facebook/drawee/generic/a;->k:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->b()V

    .line 307
    return-void

    .line 304
    :cond_0
    iget v0, p0, Lcom/facebook/drawee/generic/a;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->c()V

    .line 269
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->d()V

    .line 270
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->a()V

    .line 312
    invoke-direct {p0}, Lcom/facebook/drawee/generic/a;->e()V

    .line 313
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    iget v1, p0, Lcom/facebook/drawee/generic/a;->j:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget v0, p0, Lcom/facebook/drawee/generic/a;->j:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/a;->e:Lcom/facebook/drawee/drawable/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/f;->b()V

    .line 319
    return-void

    .line 316
    :cond_0
    iget v0, p0, Lcom/facebook/drawee/generic/a;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/drawee/generic/a;->a(I)V

    goto :goto_0
.end method
