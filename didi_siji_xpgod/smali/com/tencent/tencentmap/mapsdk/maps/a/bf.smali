.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
.super Ljava/lang/Object;
.source "DoublePoint.java"


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 15
    iput-wide p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 16
    return-void
.end method


# virtual methods
.method public final a(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 20
    iput-wide p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 21
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 25
    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 26
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 27
    .local v0, o:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 29
    .end local v0           #o:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
