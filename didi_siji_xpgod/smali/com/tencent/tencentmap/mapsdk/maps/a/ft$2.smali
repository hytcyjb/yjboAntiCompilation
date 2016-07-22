.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;


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
    .line 106
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V
    .locals 16
    .parameter "act"

    .prologue
    .line 111
    move-object/from16 v0, p1

    iget v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    const/16 v12, 0x2710

    if-eq v11, v12, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    if-eqz v11, :cond_0

    move-object/from16 v1, p1

    .line 117
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    .line 119
    .local v1, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->i()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 120
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->j()I

    move-result v3

    .line 121
    .local v3, ifixx:I
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->k()I

    move-result v4

    .line 124
    .local v4, ifixy:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v12

    iget v12, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v3

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v14

    iget v14, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v14, v4

    int-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    .line 128
    .end local v3           #ifixx:I
    .end local v4           #ifixy:I
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->e()I

    move-result v8

    .line 130
    .local v8, scrollx:I
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->f()I

    move-result v9

    .line 131
    .local v9, scrolly:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    int-to-double v12, v8

    int-to-double v14, v9

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    .line 134
    .end local v8           #scrollx:I
    .end local v9           #scrolly:I
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->g()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 135
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->h()F

    move-result v2

    .line 136
    .local v2, curScale:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    float-to-double v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(D)V

    .line 139
    .end local v2           #curScale:F
    :cond_4
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->l()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 140
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->m()I

    move-result v5

    .line 141
    .local v5, lat:I
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->n()I

    move-result v6

    .line 142
    .local v6, lng:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    .line 143
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->u()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(II)V

    .line 149
    .end local v5           #lat:I
    .end local v6           #lng:I
    :cond_5
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->p()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 150
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->o()F

    move-result v7

    .line 151
    .local v7, rotate:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    float-to-double v12, v7

    invoke-virtual {v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    .line 154
    .end local v7           #rotate:F
    :cond_6
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->q()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 155
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->r()F

    move-result v10

    .line 156
    .local v10, skew:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    float-to-double v12, v10

    invoke-virtual {v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    .line 159
    .end local v10           #skew:F
    :cond_7
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->i()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->j()I

    move-result v3

    .line 161
    .restart local v3       #ifixx:I
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->k()I

    move-result v4

    .line 164
    .restart local v4       #ifixy:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v12

    iget v12, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v3, v12

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-static {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v14

    iget v14, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v4, v14

    int-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    goto/16 :goto_0
.end method
