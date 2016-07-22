.class public Lcom/facebook/drawee/generic/d;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/facebook/drawee/generic/d;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object p0

    .line 88
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/m;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/m;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 89
    if-eqz p2, :cond_2

    .line 90
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/drawable/m;->a(Landroid/graphics/PointF;)V

    :cond_2
    move-object p0, v0

    .line 92
    goto :goto_0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 216
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object p0

    .line 220
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/d;->a(Lcom/facebook/drawee/drawable/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 222
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->a(I)V

    move-object p0, v0

    .line 223
    goto :goto_0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->c()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object p0

    .line 248
    :cond_1
    instance-of v0, p0, Lcom/facebook/drawee/drawable/g;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 249
    check-cast v0, Lcom/facebook/drawee/drawable/g;

    invoke-static {v0}, Lcom/facebook/drawee/generic/d;->a(Lcom/facebook/drawee/drawable/c;)Lcom/facebook/drawee/drawable/c;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/facebook/drawee/generic/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    invoke-static {v1, p1, p2}, Lcom/facebook/drawee/generic/d;->b(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/facebook/drawee/generic/d;->b(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0
.end method

.method static a(Lcom/facebook/drawee/drawable/c;)Lcom/facebook/drawee/drawable/c;
    .locals 2
    .parameter

    .prologue
    .line 312
    :goto_0
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    if-eq v0, p0, :cond_0

    instance-of v1, v0, Lcom/facebook/drawee/drawable/c;

    if-nez v1, :cond_1

    .line 318
    :cond_0
    return-object p0

    .line 316
    :cond_1
    check-cast v0, Lcom/facebook/drawee/drawable/c;

    move-object p0, v0

    .line 317
    goto :goto_0
.end method

.method static a(Lcom/facebook/drawee/drawable/c;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/facebook/drawee/generic/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/d;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 121
    const-string v1, "Parent has no child drawable!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    check-cast v0, Lcom/facebook/drawee/drawable/m;

    return-object v0
.end method

.method static a(Lcom/facebook/drawee/drawable/j;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->a()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/j;->a(Z)V

    .line 292
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->b()[F

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/j;->a([F)V

    .line 293
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->f()F

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/j;->a(IF)V

    .line 294
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->h()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/j;->a(F)V

    .line 295
    return-void
.end method

.method private static b(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 272
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    invoke-static {p2, p0}, Lcom/facebook/drawee/drawable/k;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Lcom/facebook/drawee/drawable/k;

    move-result-object p0

    .line 274
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/d;->a(Lcom/facebook/drawee/drawable/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 284
    :cond_0
    :goto_0
    return-object p0

    .line 277
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 279
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 280
    invoke-static {p0}, Lcom/facebook/drawee/drawable/l;->a(Landroid/graphics/drawable/ColorDrawable;)Lcom/facebook/drawee/drawable/l;

    move-result-object p0

    .line 281
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/d;->a(Lcom/facebook/drawee/drawable/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0
.end method
