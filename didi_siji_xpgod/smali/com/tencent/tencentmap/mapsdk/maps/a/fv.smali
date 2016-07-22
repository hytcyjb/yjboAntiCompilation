.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fv;
.super Ljava/lang/Object;
.source "MarkerControl.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V
    .locals 1
    .parameter "dele"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    .line 21
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "options"
    .parameter "contr"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    .line 28
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    .locals 1
    .parameter "infowindowadapter"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V
    .locals 1
    .parameter "onmarkerdraglistener"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "fAngle"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;F)V

    .line 166
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 1
    .parameter "strId"
    .parameter "anchorU"
    .parameter "anchorV"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;FF)V

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1
    .parameter "strId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;II)V

    .line 236
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 1
    .parameter "strId"
    .parameter "animation"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 1
    .parameter "strId"
    .parameter "listener"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V
    .locals 1
    .parameter "strId"
    .parameter "icon"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    .line 66
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "strId"
    .parameter "latlng"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 1
    .parameter "strId"
    .parameter "opt"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 242
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "strId"
    .parameter "boFlag"
    .parameter "rotate"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a(Ljava/lang/String;ZZ)V

    .line 186
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->a()V

    .line 60
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->b(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "alpha"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->b(Ljava/lang/String;F)V

    .line 211
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "boclick"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->b(Ljava/lang/String;Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1
    .parameter "strId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->d(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->b()V

    .line 134
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "f"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->c(Ljava/lang/String;F)V

    .line 248
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 1
    .parameter "strId"
    .parameter "boFix"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->c(Ljava/lang/String;Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->c()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->c(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    .line 160
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->e(Ljava/lang/String;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->f(Ljava/lang/String;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1
    .parameter "strId"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->g(Ljava/lang/String;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)F
    .locals 1
    .parameter "strId"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->h(Ljava/lang/String;)F

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1
    .parameter "strId"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->i(Ljava/lang/String;)Z

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1
    .parameter "strId"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fj;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fj;->j(Ljava/lang/String;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
