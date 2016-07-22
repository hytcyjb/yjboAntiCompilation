.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/et;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

.field private b:D


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/eq;D)V
    .locals 5
    .parameter "point"
    .parameter "value"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    iget-wide v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 44
    iput-wide p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->b:D

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    return-object v0
.end method

.method public final a(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->b:D

    .line 70
    return-void
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->b:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 15
    instance-of v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/et;

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/et;

    .line 17
    .end local p1
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
