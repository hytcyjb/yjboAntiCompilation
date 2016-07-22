.class final Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;
.super Ljava/lang/Object;
.source "MarkerManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 254
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 255
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->j()Z

    .line 256
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->requestRender()V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 274
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 275
    const/high16 p1, 0x3f80

    .line 279
    :cond_0
    :goto_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    .line 280
    const/high16 p2, 0x3f80

    .line 284
    :cond_1
    :goto_1
    sput p1, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d:F

    .line 285
    sput p2, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->e:F

    .line 286
    return-void

    .line 276
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 277
    const/4 p1, 0x0

    goto :goto_0

    .line 281
    :cond_3
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 282
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 262
    sput p1, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    .line 263
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 2
    .parameter "ani"
    .parameter "listner"

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iput-object p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 268
    sput-boolean p1, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->c:Z

    .line 269
    return-void
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    goto :goto_0
.end method

.method public final c(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->glAnimation:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    goto :goto_0
.end method
