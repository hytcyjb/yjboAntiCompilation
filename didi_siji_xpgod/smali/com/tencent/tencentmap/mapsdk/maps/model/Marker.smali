.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;Ljava/lang/String;)V
    .locals 3
    .parameter "opt"
    .parameter "contr"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->c:Z

    .line 16
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 17
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->e:Z

    .line 20
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 22
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 202
    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 205
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->c(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 78
    .local v0, position:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->h(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public final hideInfoWindow()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->j(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isDraggable()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public final isInfoWindowEnable()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    return v0
.end method

.method public final isInfoWindowShown()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isNaviState()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->c:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->b(Ljava/lang/String;F)V

    .line 234
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->alpha(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setAnchor(FF)V
    .locals 2
    .parameter "anchorU"
    .parameter "anchorV"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;FF)V

    .line 152
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    goto :goto_0
.end method

.method public final setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    goto :goto_0
.end method

.method public final setClickable(Z)V
    .locals 2
    .parameter "boclick"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final setDraggable(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->b()V

    .line 119
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->draggable(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setFixingPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;II)V

    .line 262
    return-void
.end method

.method public final setFixingPointEnable(Z)V
    .locals 2
    .parameter "boFix"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->c(Ljava/lang/String;Z)V

    .line 258
    return-void
.end method

.method public final setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setInfoWindowEnable(Z)V
    .locals 1
    .parameter "boEnable"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setMarkerOptions(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 3
    .parameter "opt"

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 269
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 270
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 272
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 273
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 275
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->draggable(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 276
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 278
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 280
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 281
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->alpha(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 282
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setNaviState(ZZ)V
    .locals 2
    .parameter "boInMap"
    .parameter "rotate"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;ZZ)V

    .line 68
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->c:Z

    goto :goto_0
.end method

.method public final setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latlng"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 41
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setPositionNotUpdate(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latlng"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setRotateAngle(F)V
    .locals 2
    .parameter "fAngle"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;F)V

    .line 176
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setRotateAngleNotUpdate(F)V
    .locals 2
    .parameter "fAngle"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;F)V

    .line 191
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 103
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->visible(Z)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->c(Ljava/lang/String;F)V

    .line 287
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 288
    return-void
.end method

.method public final showInfoWindow()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startAnimation()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->i(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
