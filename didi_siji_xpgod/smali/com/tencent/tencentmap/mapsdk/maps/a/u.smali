.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/u;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/q;


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;


# direct methods
.method private constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1, p2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FFFF)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    .line 11
    return-void
.end method

.method public static a(DD)Lcom/tencent/tencentmap/mapsdk/maps/a/u;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 14
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;

    double-to-float v1, p0

    double-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/u;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Z

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c()F

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d()F

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/u;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;

    .line 60
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/u;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point [x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
