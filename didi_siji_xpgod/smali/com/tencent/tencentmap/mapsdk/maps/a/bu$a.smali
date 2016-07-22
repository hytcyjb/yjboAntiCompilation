.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;
.super Ljava/lang/Object;
.source "MapParam.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b:F

    .line 859
    const/high16 v0, 0x3780

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    .line 860
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d:I

    .line 861
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    .line 862
    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    return v0
.end method

.method final a(F)V
    .locals 2
    .parameter "minScale"

    .prologue
    .line 885
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;-><init>()V

    .line 886
    .local v0, scale:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    .line 888
    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    .line 892
    iget v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    div-float v1, p1, v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    .line 893
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;)V
    .locals 1
    .parameter "mapScale"

    .prologue
    .line 869
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    .line 870
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b:F

    .line 871
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    .line 872
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d:I

    .line 873
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    .line 874
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    .line 875
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    .line 876
    return-void
.end method

.method final b()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    return v0
.end method

.method final b(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    .locals 10
    .parameter "scale"

    .prologue
    const/high16 v9, 0x4000

    .line 901
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    .line 902
    .local v1, MIN_SCALE:F
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->b:F

    .line 903
    .local v0, MAX_SCALE:F
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    .line 906
    .local v2, MIN_SCALE_LEVEL:I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 907
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 909
    const/4 v4, 0x0

    .line 910
    .local v4, i:I
    move v6, v1

    .line 911
    .local v6, levelScale:F
    :goto_0
    cmpl-float v8, p1, v6

    if-gtz v8, :cond_1

    .line 915
    const v8, 0x3f4ccccd

    mul-float/2addr v8, v6

    cmpg-float v8, p1, v8

    if-gez v8, :cond_0

    .line 916
    add-int/lit8 v4, v4, -0x1

    .line 917
    div-float/2addr v6, v9

    .line 920
    :cond_0
    add-int v7, v2, v4

    .line 921
    .local v7, scaleLevel:I
    div-float v3, p1, v6

    .line 924
    .local v3, glScale:F
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    .line 925
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    .line 928
    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    if-eq v8, v7, :cond_2

    const/4 v5, 0x1

    .line 929
    .local v5, isScaleLevelChanged:Z
    :goto_1
    iput v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    .line 931
    if-eqz v5, :cond_3

    sget-object v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    :goto_2
    return-object v8

    .line 912
    .end local v3           #glScale:F
    .end local v5           #isScaleLevelChanged:Z
    .end local v7           #scaleLevel:I
    :cond_1
    mul-float/2addr v6, v9

    .line 911
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 928
    .restart local v3       #glScale:F
    .restart local v7       #scaleLevel:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 932
    .restart local v5       #isScaleLevelChanged:Z
    :cond_3
    sget-object v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    goto :goto_2
.end method

.method final c()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1031
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->c:I

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 1011
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    if-nez v2, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1015
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;

    .line 1016
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method final f()F
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->a:F

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scale:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mGLScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$a;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
