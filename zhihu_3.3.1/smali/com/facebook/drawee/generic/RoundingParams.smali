.class public Lcom/facebook/drawee/generic/RoundingParams;
.super Ljava/lang/Object;
.source "RoundingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

.field private b:Z

.field private c:[F

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 41
    iput-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 43
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 44
    iput v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    .line 45
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    .line 46
    iput v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    return-void
.end method

.method public static e()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->a(Z)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method private i()[F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-nez v0, :cond_0

    .line 155
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the padding cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(ZLjava/lang/Object;)V

    .line 203
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    .line 204
    return-object p0

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFFF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;->i()[F

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput p1, v0, v2

    aput p1, v0, v1

    .line 91
    const/4 v1, 0x2

    const/4 v2, 0x3

    aput p2, v0, v2

    aput p2, v0, v1

    .line 92
    const/4 v1, 0x4

    const/4 v2, 0x5

    aput p3, v0, v2

    aput p3, v0, v1

    .line 93
    const/4 v1, 0x6

    const/4 v2, 0x7

    aput p4, v0, v2

    aput p4, v0, v1

    .line 94
    return-object p0
.end method

.method public a(I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 144
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 145
    return-object p0
.end method

.method public a(IF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the border width cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(ZLjava/lang/Object;)V

    .line 192
    iput p2, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    .line 193
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    .line 194
    return-object p0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    .line 56
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    return v0
.end method

.method public b()[F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    return-object v0
.end method

.method public c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 231
    check-cast p1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 233
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    if-ne v1, v2, :cond_0

    .line 237
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    if-ne v1, v2, :cond_0

    .line 241
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    if-ne v1, v2, :cond_0

    .line 249
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iget-object v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    iget-object v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->hashCode()I

    move-result v0

    .line 264
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 265
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 266
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    add-int/2addr v0, v2

    .line 267
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    add-int/2addr v0, v2

    .line 269
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 271
    return v0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_0

    :cond_2
    move v0, v1

    .line 264
    goto :goto_1

    :cond_3
    move v0, v1

    .line 265
    goto :goto_2

    :cond_4
    move v0, v1

    .line 267
    goto :goto_3
.end method
