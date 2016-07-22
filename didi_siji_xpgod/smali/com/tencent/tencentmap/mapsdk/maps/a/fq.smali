.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fq;
.super Ljava/lang/Object;
.source "LocationControl.java"


# instance fields
.field a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fh;)V
    .locals 1
    .parameter "dele"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    .line 11
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    .line 18
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;)V
    .locals 1
    .parameter "locationsource"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;->a(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;)V

    .line 31
    :cond_0
    return-void
.end method

.method public final b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;->d()Landroid/location/Location;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;->a()Z

    .line 52
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;->b()V

    .line 58
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fh;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;->c()Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
