.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;
.super Ljava/lang/Object;
.source "GLMarkerOverlay3.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter "alph"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->s:F

    .line 152
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter "scalex"
    .parameter "scaleY"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->t:F

    .line 167
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->u:F

    .line 168
    return-void
.end method

.method public final a(FFFF)V
    .locals 3
    .parameter "angle"
    .parameter "pivotx"
    .parameter "pivoty"
    .parameter "pivotz"

    .prologue
    const/high16 v2, 0x43b4

    .line 137
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    .line 138
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    rem-float/2addr v1, v2

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    .line 139
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    .line 140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    rem-float/2addr v1, v2

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    .line 142
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->i:F

    .line 143
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->j:F

    .line 144
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iput p4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->k:F

    .line 145
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->h:Z

    .line 146
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    .line 161
    :cond_0
    return-void
.end method
