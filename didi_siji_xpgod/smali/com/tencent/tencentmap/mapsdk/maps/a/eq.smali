.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/eq;
.super Ljava/lang/Object;
.source "FixedDoublePoint.java"


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 27
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;

    .line 31
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/eq;
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    iget-wide v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_4
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    iget-wide v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 34
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    .line 41
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    :goto_0
    long-to-int v0, v1

    .line 42
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    int-to-long v1, v1

    iget-wide v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :cond_0
    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 44
    return v1

    .end local v0           #result:I
    :cond_1
    move-wide v1, v3

    .line 41
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
