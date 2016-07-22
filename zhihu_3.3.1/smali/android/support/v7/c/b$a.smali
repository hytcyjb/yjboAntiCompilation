.class public final Landroid/support/v7/c/b$a;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    .line 575
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/c/b$a;->d:I

    .line 576
    const/16 v0, 0x6400

    iput v0, p0, Landroid/support/v7/c/b$a;->e:I

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/c/b$a;->f:I

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/b$a;->g:Ljava/util/List;

    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/b$a;->g:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/c/b;->g()Landroid/support/v7/c/b$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iput-object p1, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/c/b$a;->a:Ljava/util/List;

    .line 594
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->a:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->b:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->c:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->d:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->e:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    sget-object v1, Landroid/support/v7/c/c;->f:Landroid/support/v7/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 851
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 852
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 854
    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 856
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 873
    :goto_0
    return-object v1

    .line 861
    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 862
    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 864
    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 868
    mul-int v0, v6, v7

    new-array v0, v0, [I

    .line 869
    :goto_1
    if-ge v2, v7, :cond_1

    .line 870
    iget-object v4, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    mul-int/2addr v4, v3

    iget-object v5, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    mul-int v5, v2, v6

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 873
    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    .line 881
    const-wide/high16 v0, -0x4010

    .line 883
    iget v2, p0, Landroid/support/v7/c/b$a;->e:I

    if-lez v2, :cond_1

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 885
    iget v3, p0, Landroid/support/v7/c/b$a;->e:I

    if-le v2, v3, :cond_0

    .line 886
    iget v0, p0, Landroid/support/v7/c/b$a;->e:I

    int-to-double v0, v0

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 895
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 900
    :goto_1
    return-object p1

    .line 888
    :cond_1
    iget v2, p0, Landroid/support/v7/c/b$a;->f:I

    if-lez v2, :cond_0

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 890
    iget v3, p0, Landroid/support/v7/c/b$a;->f:I

    if-le v2, v3, :cond_0

    .line 891
    iget v0, p0, Landroid/support/v7/c/b$a;->f:I

    int-to-double v0, v0

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 900
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/support/v7/c/b;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 756
    .line 762
    iget-object v0, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 766
    iget-object v0, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/support/v7/c/b$a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 768
    if-eqz v1, :cond_0

    .line 769
    const-string v0, "Processed Bitmap"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/b$a;->h:Landroid/graphics/Rect;

    .line 773
    iget-object v3, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 777
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 778
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 779
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 781
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 786
    :cond_1
    new-instance v3, Landroid/support/v7/c/a;

    invoke-direct {p0, v2}, Landroid/support/v7/c/b$a;->a(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    iget v5, p0, Landroid/support/v7/c/b$a;->d:I

    iget-object v0, p0, Landroid/support/v7/c/b$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_0
    invoke-direct {v3, v4, v5, v0}, Landroid/support/v7/c/a;-><init>([II[Landroid/support/v7/c/b$b;)V

    .line 792
    iget-object v0, p0, Landroid/support/v7/c/b$a;->b:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 793
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 796
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/c/a;->a()Ljava/util/List;

    move-result-object v0

    .line 798
    if-eqz v1, :cond_3

    .line 799
    const-string v2, "Color quantization completed"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 807
    :cond_3
    :goto_1
    new-instance v2, Landroid/support/v7/c/b;

    iget-object v3, p0, Landroid/support/v7/c/b$a;->c:Ljava/util/List;

    invoke-direct {v2, v0, v3, v1}, Landroid/support/v7/c/b;-><init>(Ljava/util/List;Ljava/util/List;Landroid/support/v7/c/b$1;)V

    .line 809
    invoke-static {v2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/b;)V

    .line 811
    if-eqz v1, :cond_4

    .line 812
    const-string v0, "Created Palette"

    invoke-virtual {v1, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 816
    :cond_4
    return-object v2

    .line 786
    :cond_5
    iget-object v0, p0, Landroid/support/v7/c/b$a;->g:Ljava/util/List;

    iget-object v6, p0, Landroid/support/v7/c/b$a;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/support/v7/c/b$b;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/c/b$b;

    goto :goto_0

    .line 803
    :cond_6
    iget-object v0, p0, Landroid/support/v7/c/b$a;->a:Ljava/util/List;

    goto :goto_1
.end method
