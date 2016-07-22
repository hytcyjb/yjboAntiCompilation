.class public Lcom/facebook/common/util/a;
.super Ljava/lang/Object;
.source "HashCodeUtil.java"


# direct methods
.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    add-int/lit8 v0, p0, 0x1f

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    .line 108
    return v0
.end method

.method public static a(IIIIII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    add-int/lit8 v0, p0, 0x1f

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p3

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p4

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p5

    .line 160
    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 88
    if-nez p0, :cond_0

    move v0, v5

    .line 89
    :goto_0
    if-nez p1, :cond_1

    move v1, v5

    .line 90
    :goto_1
    if-nez p2, :cond_2

    move v2, v5

    .line 91
    :goto_2
    if-nez p3, :cond_3

    move v3, v5

    .line 92
    :goto_3
    if-nez p4, :cond_4

    move v4, v5

    .line 93
    :goto_4
    if-nez p5, :cond_5

    .line 88
    :goto_5
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/util/a;->a(IIIIII)I

    move-result v0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_5
.end method
