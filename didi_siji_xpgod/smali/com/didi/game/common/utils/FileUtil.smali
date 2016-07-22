.class public Lcom/didi/game/common/utils/FileUtil;
.super Lcom/didi/common/util/FileUtil;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/didi/common/util/FileUtil;-><init>()V

    return-void
.end method

.method public static byte2KB(J)J
    .locals 2
    .parameter "byteSize"

    .prologue
    .line 13
    const-wide/16 v0, 0x400

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static byte2MB(JI)D
    .locals 3
    .parameter "byteSize"
    .parameter "point"

    .prologue
    .line 31
    new-instance v0, Ljava/math/BigDecimal;

    long-to-float v1, p0

    const/high16 v2, 0x4980

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeSizeLevel(JII)D
    .locals 8
    .parameter "size"
    .parameter "levelStep"
    .parameter "point"

    .prologue
    const/4 v7, 0x4

    const-wide/high16 v5, 0x4090

    .line 42
    if-lez p2, :cond_0

    .line 43
    new-instance v0, Ljava/math/BigDecimal;

    long-to-double v1, p0

    int-to-double v3, p2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, p3, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    .line 44
    :cond_0
    if-gez p2, :cond_1

    .line 45
    new-instance v0, Ljava/math/BigDecimal;

    long-to-double v1, p0

    int-to-double v3, p2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, p3, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 47
    :cond_1
    long-to-double v0, p0

    goto :goto_0
.end method

.method public static kb2MB(JI)D
    .locals 4
    .parameter "kbSize"
    .parameter "point"

    .prologue
    .line 22
    new-instance v0, Ljava/math/BigDecimal;

    long-to-float v1, p0

    long-to-float v2, p0

    const/high16 v3, 0x4480

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
