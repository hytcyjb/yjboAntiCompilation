.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;


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
    .line 52
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 68
    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .line 70
    .local v7, geoNew:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->A:I

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F

    move-result v10

    .line 79
    .local v10, fZoomlevel:F
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    iget-object v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 83
    .local v9, callback:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    .line 84
    .local v11, late6:I
    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v12

    .line 85
    .local v12, lnge6:I
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 86
    .local v8, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 88
    invoke-virtual {v8, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 89
    invoke-virtual {v8, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 91
    invoke-virtual {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 92
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 95
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 97
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x:I

    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y:I

    .line 99
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z:I

    .line 100
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->A:I

    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    goto/16 :goto_0

    .line 76
    .end local v8           #animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    .end local v9           #callback:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    .end local v10           #fZoomlevel:F
    .end local v11           #late6:I
    .end local v12           #lnge6:I
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v1

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x:I

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y:I

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v3

    iget v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z:I

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v4

    iget v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->A:I

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F

    move-result v10

    .restart local v10       #fZoomlevel:F
    goto/16 :goto_1
.end method
