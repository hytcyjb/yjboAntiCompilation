.class public final Landroid/support/v7/c/b$c;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->a:I

    .line 426
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->b:I

    .line 427
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->c:I

    .line 428
    iput p1, p0, Landroid/support/v7/c/b$c;->d:I

    .line 429
    iput p2, p0, Landroid/support/v7/c/b$c;->e:I

    .line 430
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/high16 v3, 0x4090

    const/high16 v7, 0x4040

    const/4 v6, 0x1

    const/high16 v5, -0x100

    const/4 v4, -0x1

    .line 495
    iget-boolean v0, p0, Landroid/support/v7/c/b$c;->f:Z

    if-nez v0, :cond_0

    .line 497
    iget v0, p0, Landroid/support/v7/c/b$c;->d:I

    invoke-static {v4, v0, v3}, Landroid/support/v4/b/a;->a(IIF)I

    move-result v0

    .line 499
    iget v1, p0, Landroid/support/v7/c/b$c;->d:I

    invoke-static {v4, v1, v7}, Landroid/support/v4/b/a;->a(IIF)I

    move-result v1

    .line 502
    if-eq v0, v4, :cond_1

    if-eq v1, v4, :cond_1

    .line 504
    invoke-static {v4, v0}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->h:I

    .line 505
    invoke-static {v4, v1}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->g:I

    .line 506
    iput-boolean v6, p0, Landroid/support/v7/c/b$c;->f:Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget v2, p0, Landroid/support/v7/c/b$c;->d:I

    invoke-static {v5, v2, v3}, Landroid/support/v4/b/a;->a(IIF)I

    move-result v2

    .line 512
    iget v3, p0, Landroid/support/v7/c/b$c;->d:I

    invoke-static {v5, v3, v7}, Landroid/support/v4/b/a;->a(IIF)I

    move-result v3

    .line 515
    if-eq v2, v4, :cond_2

    if-eq v2, v4, :cond_2

    .line 517
    invoke-static {v5, v2}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->h:I

    .line 518
    invoke-static {v5, v3}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b$c;->g:I

    .line 519
    iput-boolean v6, p0, Landroid/support/v7/c/b$c;->f:Z

    goto :goto_0

    .line 525
    :cond_2
    if-eq v0, v4, :cond_3

    invoke-static {v4, v0}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    :goto_1
    iput v0, p0, Landroid/support/v7/c/b$c;->h:I

    .line 528
    if-eq v1, v4, :cond_4

    invoke-static {v4, v1}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    :goto_2
    iput v0, p0, Landroid/support/v7/c/b$c;->g:I

    .line 531
    iput-boolean v6, p0, Landroid/support/v7/c/b$c;->f:Z

    goto :goto_0

    .line 525
    :cond_3
    invoke-static {v5, v2}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    goto :goto_1

    .line 528
    :cond_4
    invoke-static {v5, v3}, Landroid/support/v4/b/a;->c(II)I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Landroid/support/v7/c/b$c;->d:I

    return v0
.end method

.method public b()[F
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/c/b$c;->i:[F

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/c/b$c;->i:[F

    .line 463
    :cond_0
    iget v0, p0, Landroid/support/v7/c/b$c;->a:I

    iget v1, p0, Landroid/support/v7/c/b$c;->b:I

    iget v2, p0, Landroid/support/v7/c/b$c;->c:I

    iget-object v3, p0, Landroid/support/v7/c/b$c;->i:[F

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/b/a;->a(III[F)V

    .line 464
    iget-object v0, p0, Landroid/support/v7/c/b$c;->i:[F

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/c/b$c;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/support/v7/c/b$c;->f()V

    .line 481
    iget v0, p0, Landroid/support/v7/c/b$c;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Landroid/support/v7/c/b$c;->f()V

    .line 491
    iget v0, p0, Landroid/support/v7/c/b$c;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    if-ne p0, p1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 553
    goto :goto_0

    .line 556
    :cond_3
    check-cast p1, Landroid/support/v7/c/b$c;

    .line 557
    iget v2, p0, Landroid/support/v7/c/b$c;->e:I

    iget v3, p1, Landroid/support/v7/c/b$c;->e:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/support/v7/c/b$c;->d:I

    iget v3, p1, Landroid/support/v7/c/b$c;->d:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Landroid/support/v7/c/b$c;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/c/b$c;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [RGB: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/c/b$c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [HSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/c/b$c;->b()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Population: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/c/b$c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Title Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/c/b$c;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Body Text: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/c/b$c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
