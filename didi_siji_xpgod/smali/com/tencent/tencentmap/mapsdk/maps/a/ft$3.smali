.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h()F

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "run"

    .prologue
    .line 237
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->o()F

    move-result v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v0

    goto :goto_0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v0

    goto :goto_0
.end method

.method public final g()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    goto :goto_0
.end method
