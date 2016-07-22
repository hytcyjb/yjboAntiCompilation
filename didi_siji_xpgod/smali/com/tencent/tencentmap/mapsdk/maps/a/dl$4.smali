.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;
.super Ljava/lang/Object;
.source "GLMarkerOverlay.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter "alph"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    .line 160
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter "scalex"
    .parameter "scaleY"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->t:F

    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->u:F

    .line 184
    return-void
.end method

.method public final a(FFFF)V
    .locals 2
    .parameter "angle"
    .parameter "pivotx"
    .parameter "pivoty"
    .parameter "pivotz"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    .line 150
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->i:F

    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->j:F

    .line 152
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iput p4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->k:F

    .line 153
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->h:Z

    .line 154
    return-void
.end method

.method public final a(II)V
    .locals 9
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 165
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v3, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, dLat:I
    const/4 v2, 0x0

    .line 169
    .local v2, dLon:I
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-boolean v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v3

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)I

    move-result v7

    int-to-double v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    invoke-interface {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 171
    .local v0, current:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v4

    sub-int v1, v3, v4

    .line 172
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v4

    sub-int v2, v3, v4

    .line 174
    .end local v0           #current:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    add-int v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 175
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    add-int v4, p2, v2

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    .line 177
    .end local v1           #dLat:I
    .end local v2           #dLon:I
    :cond_1
    return-void
.end method
