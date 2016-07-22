.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gb;
.super Ljava/lang/Object;
.source "PolylineControl.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fm;)V
    .locals 1
    .parameter "dele"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    .line 14
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1
    .parameter "polylineoptions"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/gb;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    .line 21
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "width"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1
    .parameter "strId"
    .parameter "index"
    .parameter "length"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "strId"
    .parameter "strTextureName"
    .parameter "strTextureCapName"
    .parameter "rowCount"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "strId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, points:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[I[I)V
    .locals 1
    .parameter "strId"
    .parameter "colors"
    .parameter "indexs"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a(Ljava/lang/String;[I[I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "zIndex"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->b(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "arrow"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;->a()V

    goto :goto_0
.end method
