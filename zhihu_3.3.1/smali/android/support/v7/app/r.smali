.class Landroid/support/v7/app/r;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static d:Landroid/support/v7/app/r;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/support/v7/app/r;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/support/v7/app/r;->d:Landroid/support/v7/app/r;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v7/app/r;

    invoke-direct {v0}, Landroid/support/v7/app/r;-><init>()V

    sput-object v0, Landroid/support/v7/app/r;->d:Landroid/support/v7/app/r;

    .line 34
    :cond_0
    sget-object v0, Landroid/support/v7/app/r;->d:Landroid/support/v7/app/r;

    return-object v0
.end method


# virtual methods
.method public a(JDD)V
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const-wide v2, 0xdc6d62da00L

    sub-long v2, p1, v2

    long-to-float v2, v2

    const v3, 0x4ca4cb80

    div-float/2addr v2, v3

    .line 89
    const v3, 0x40c7ae92

    const v4, 0x3c8ceb25

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 92
    float-to-double v4, v3

    const-wide v6, 0x3fa11c5fc0000000L

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3f36e05b00000000L

    const/high16 v8, 0x4000

    mul-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3ed5f61cc0000000L

    const/high16 v8, 0x4040

    mul-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 96
    const-wide v6, 0x3ffcbed85e1ce332L

    add-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L

    add-double/2addr v4, v6

    .line 99
    move-wide/from16 v0, p5

    neg-double v6, v0

    const-wide v8, 0x4076800000000000L

    div-double/2addr v6, v8

    .line 100
    const v8, 0x3a6bedfa

    sub-float/2addr v2, v8

    float-to-double v8, v2

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v2, v8

    .line 101
    const v8, 0x3a6bedfa

    add-float/2addr v2, v8

    float-to-double v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3f75b573eab367a1L

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    const-wide v6, -0x4083bcd35a858794L

    const-wide/high16 v8, 0x4000

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3fda31a380000000L

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    .line 107
    const-wide v6, 0x3f91df46a0000000L

    mul-double v6, v6, p3

    .line 109
    const-wide v8, -0x4045311600000000L

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    .line 113
    const-wide/high16 v6, 0x3ff0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 114
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v7/app/r;->c:I

    .line 115
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/app/r;->a:J

    .line 116
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/app/r;->b:J

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    const-wide/high16 v6, -0x4010

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    .line 119
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/app/r;->c:I

    .line 120
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/app/r;->a:J

    .line 121
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/app/r;->b:J

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide v6, 0x401921fb54442d18L

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 127
    float-to-double v6, v4

    add-double/2addr v6, v2

    const-wide v8, 0x4194997000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide v8, 0xdc6d62da00L

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/support/v7/app/r;->a:J

    .line 128
    float-to-double v4, v4

    sub-double/2addr v2, v4

    const-wide v4, 0x4194997000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide v4, 0xdc6d62da00L

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/app/r;->b:J

    .line 130
    iget-wide v2, p0, Landroid/support/v7/app/r;->b:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    iget-wide v2, p0, Landroid/support/v7/app/r;->a:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    .line 131
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/app/r;->c:I

    goto :goto_0

    .line 133
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v7/app/r;->c:I

    goto :goto_0
.end method
