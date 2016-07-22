.class public Lcom/facebook/imagepipeline/producers/o;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# direct methods
.method static a(F)I
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 99
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x2

    .line 104
    :goto_1
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v4, v0

    sub-double/2addr v2, v4

    div-double v2, v8, v2

    .line 105
    int-to-double v4, v0

    div-double v4, v8, v4

    const-wide v6, 0x3fd5555560000000L

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 106
    float-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_1
.end method

.method public static a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->c(Lcom/facebook/imagepipeline/f/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x1

    .line 59
    :cond_0
    return v0

    .line 41
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/o;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)F

    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_2

    .line 44
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o;->b(F)I

    move-result v0

    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 52
    :goto_1
    div-int v2, v1, v0

    int-to-float v2, v2

    const/high16 v3, 0x4500

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v2

    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v2, v3, :cond_3

    .line 54
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/o;->a(F)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static b(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)F
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->c(Lcom/facebook/imagepipeline/f/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v5

    .line 67
    if-eqz v5, :cond_0

    iget v0, v5, Lcom/facebook/imagepipeline/common/c;->b:I

    if-lez v0, :cond_0

    iget v0, v5, Lcom/facebook/imagepipeline/common/c;->a:I

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    const/high16 v0, 0x3f80

    .line 94
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/o;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    .line 73
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v4

    .line 74
    :goto_1
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    move v2, v0

    .line 76
    :goto_2
    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    .line 79
    :goto_3
    iget v1, v5, Lcom/facebook/imagepipeline/common/c;->a:I

    int-to-float v1, v1

    int-to-float v6, v2

    div-float v6, v1, v6

    .line 80
    iget v1, v5, Lcom/facebook/imagepipeline/common/c;->b:I

    int-to-float v1, v1

    int-to-float v7, v0

    div-float v7, v1, v7

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 82
    const-string v8, "DownsampleUtil"

    const-string v9, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v5, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 86
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    iget v3, v5, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const/4 v3, 0x2

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    const/4 v2, 0x3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v2

    const/4 v0, 0x4

    .line 90
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x5

    .line 91
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x6

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v0

    const/4 v0, 0x7

    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    .line 82
    invoke-static {v8, v9, v10}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 94
    goto :goto_0

    :cond_3
    move v1, v3

    .line 73
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    goto :goto_3
.end method

.method static b(F)I
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 115
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 116
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0

    .line 118
    :cond_1
    const/4 v0, 0x2

    .line 120
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    int-to-double v2, v1

    div-double v2, v8, v2

    .line 121
    mul-int/lit8 v1, v0, 0x2

    int-to-double v4, v1

    div-double v4, v8, v4

    const-wide v6, 0x3fd5555560000000L

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 122
    float-to-double v4, p0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 125
    mul-int/lit8 v0, v0, 0x2

    .line 126
    goto :goto_0
.end method

.method private static c(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->f()I

    move-result v1

    .line 134
    if-eqz v1, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    move v0, v1

    .line 136
    goto :goto_0
.end method
