.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/v;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/q;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/s;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    cmpg-float v0, p3, p1

    if-ltz v0, :cond_0

    cmpg-float v0, p4, p2

    if-gez v0, :cond_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 13
    :cond_1
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    .line 14
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    .line 15
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    .line 16
    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    .line 17
    return-void
.end method

.method public static a(DDDD)Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 5
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 45
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    double-to-float v1, p0

    double-to-float v2, p2

    double-to-float v3, p4

    double-to-float v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(FFFF)Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;-><init>(FFFF)V

    return-object v0
.end method

.method private static a(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 112
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Z
    .locals 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 58
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 59
    .local v0, xMaxLeft:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 60
    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 64
    .local v1, yMaxBottom:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 65
    cmpl-float v3, v3, v1

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .locals 0

    .prologue
    .line 129
    return-object p0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 6
    .parameter "r"

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    iget v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    iget v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v5, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;-><init>(FFFF)V

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    return v0
.end method

.method public final c(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)F
    .locals 5
    .parameter "r"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    iget v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    iget v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FFFF)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v0

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    .line 108
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    return v0
.end method

.method public final g()F
    .locals 3

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final h()F
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 124
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rectangle [x1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
