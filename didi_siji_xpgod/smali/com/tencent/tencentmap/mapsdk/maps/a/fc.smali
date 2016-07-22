.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fc;
.super Ljava/lang/Object;
.source "CircleControl.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fg;)V
    .locals 1
    .parameter "cirdel"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    .line 11
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;
    .locals 1
    .parameter "circleoptions"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    .line 18
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 1
    .parameter "strId"
    .parameter "radius"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "width"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "strId"
    .parameter "latlng"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->b()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "zIndex"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->b(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
