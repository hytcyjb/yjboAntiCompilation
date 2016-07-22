.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
.source "AnimateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;
    }
.end annotation


# instance fields
.field A:F

.field B:F

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

.field private F:Z

.field private G:Landroid/view/animation/Interpolator;

.field private H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:F

.field private W:F

.field private X:D

.field private Y:D

.field private Z:D

.field private aa:D

.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:Z

.field private af:Z

.field private ag:Z

.field protected k:I

.field protected l:J

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:F

.field v:F

.field w:F

.field x:F

.field y:F

.field z:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    const/16 v0, 0x2710

    invoke-direct {p0, v0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 24
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->C:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->D:Ljava/lang/Runnable;

    .line 46
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    .line 49
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->k:I

    .line 50
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->F:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->l:J

    .line 52
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->G:Landroid/view/animation/Interpolator;

    .line 53
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 55
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->I:Z

    .line 57
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 59
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    .line 60
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->L:I

    .line 61
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->M:I

    .line 62
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    .line 63
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->O:I

    .line 64
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    .line 65
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Q:I

    .line 67
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->R:Z

    .line 68
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->S:Z

    .line 69
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->T:Z

    .line 70
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->U:Z

    .line 71
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    .line 72
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    .line 73
    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->X:D

    .line 74
    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    .line 75
    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Z:D

    .line 76
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    .line 78
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ab:Z

    .line 79
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ac:I

    .line 80
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ad:I

    .line 82
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ae:Z

    .line 83
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->m:I

    .line 84
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->n:I

    .line 85
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->o:I

    .line 86
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->p:I

    .line 87
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->q:I

    .line 88
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->r:I

    .line 89
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->s:I

    .line 90
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->t:I

    .line 92
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->af:Z

    .line 93
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->u:F

    .line 94
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->v:F

    .line 95
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    .line 96
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->x:F

    .line 98
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ag:Z

    .line 99
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->y:F

    .line 100
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->z:F

    .line 101
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->A:F

    .line 102
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->B:F

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter "zoomto"

    .prologue
    .line 296
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->R:Z

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 275
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    .line 278
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->L:I

    .line 279
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->M:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    .line 281
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 407
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    .line 110
    return-void
.end method

.method protected final a()Z
    .locals 19

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->F:Z

    if-nez v13, :cond_6

    .line 116
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->F:Z

    .line 118
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    if-eqz v13, :cond_0

    .line 119
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->O:I

    .line 120
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Q:I

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->T:Z

    if-eqz v13, :cond_11

    .line 123
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->X:D

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->a()F

    move-result v15

    float-to-double v15, v15

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Z:D

    .line 124
    const-wide/high16 v13, 0x3ff0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    .line 159
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ae:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->I:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->g()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v7

    .line 168
    .local v7, geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :goto_1
    if-eqz v7, :cond_2

    .line 169
    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->o:I

    .line 170
    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->p:I

    .line 172
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->m:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->o:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->q:I

    .line 173
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->n:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->p:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->r:I

    .line 177
    .end local v7           #geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->af:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->e()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->v:F

    .line 181
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->u:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->v:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    .line 182
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    const/high16 v14, 0x4334

    cmpl-float v13, v13, v14

    if-lez v13, :cond_19

    .line 183
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    const/high16 v14, 0x43b4

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    .line 189
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->f()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->z:F

    .line 192
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->z:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->A:F

    .line 196
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->l:J

    .line 199
    :cond_6
    const/high16 v5, 0x3f80

    .line 200
    .local v5, fTimeRate:F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    if-nez v13, :cond_7

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 202
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->l:J

    sub-long/2addr v13, v15

    .line 203
    long-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->k:I

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 204
    const/high16 v13, 0x3f80

    cmpl-float v13, v5, v13

    if-lez v13, :cond_7

    .line 205
    const/high16 v5, 0x3f80

    .line 210
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->G:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 211
    .local v2, fInterValue:F
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 213
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 214
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->L:I

    int-to-float v13, v13

    mul-float/2addr v13, v2

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    .line 215
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->M:I

    int-to-float v13, v13

    mul-float/2addr v13, v2

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    .line 216
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->O:I

    sub-int v11, v13, v14

    .line 217
    .local v11, temx:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Q:I

    sub-int v12, v13, v14

    .line 218
    .local v12, temy:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->O:I

    .line 219
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Q:I

    .line 220
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    .line 221
    move-object/from16 v0, p0

    iput v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    .line 223
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->L:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gtz v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->M:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lez v13, :cond_9

    .line 224
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 228
    .end local v11           #temx:I
    .end local v12           #temy:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->R:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->S:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->T:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 229
    :cond_a
    const-wide/high16 v13, 0x3ff0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Z:D

    const-wide/high16 v17, 0x3ff0

    sub-double v15, v15, v17

    float-to-double v0, v2

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    .line 230
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    div-double v9, v13, v15

    .line 231
    .local v9, temrate:D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    .line 232
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    .line 233
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->U:Z

    if-nez v13, :cond_b

    .line 234
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 238
    .end local v9           #temrate:D
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ae:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->o:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->q:I

    int-to-float v14, v14

    mul-float/2addr v14, v2

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->s:I

    .line 240
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->p:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->r:I

    int-to-float v14, v14

    mul-float/2addr v14, v2

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->t:I

    .line 241
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->q:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->r:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_d

    .line 242
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 246
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->af:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 247
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->v:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->x:F

    .line 248
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-lez v13, :cond_e

    .line 249
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 253
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 254
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->z:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->A:F

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->B:F

    .line 255
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->A:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-lez v13, :cond_f

    .line 256
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 260
    :cond_f
    const/high16 v13, 0x3f80

    cmpl-float v13, v5, v13

    if-ltz v13, :cond_1a

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_10

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->C:Ljava/lang/Runnable;

    invoke-interface {v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->a(Ljava/lang/Runnable;)V

    .line 265
    :cond_10
    const/4 v13, 0x1

    .line 267
    :goto_3
    return v13

    .line 125
    .end local v2           #fInterValue:F
    .end local v5           #fTimeRate:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->R:Z

    if-eqz v13, :cond_15

    .line 126
    const/16 v8, 0x13

    .line 127
    .local v8, imaxlevel:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_12

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->c()I

    move-result v8

    .line 130
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    int-to-float v14, v8

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_13

    .line 131
    int-to-float v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    .line 134
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v13, :cond_14

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->b()F

    move-result v6

    .line 136
    .local v6, fcurlevel:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    sub-float/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3f50624dd2f1a9fcL

    cmpg-double v13, v13, v15

    if-gez v13, :cond_14

    .line 137
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->U:Z

    .line 141
    .end local v6           #fcurlevel:F
    :cond_14
    int-to-float v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->V:F

    sub-float v3, v13, v14

    .line 142
    .local v3, fLevelSpan:F
    const-wide/high16 v13, 0x3ff0

    const-wide/high16 v15, 0x4000

    float-to-double v0, v3

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->X:D

    .line 143
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->X:D

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->a()F

    move-result v15

    float-to-double v15, v15

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Z:D

    .line 144
    const-wide/high16 v13, 0x3ff0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    goto/16 :goto_0

    .line 145
    .end local v3           #fLevelSpan:F
    .end local v8           #imaxlevel:I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->S:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3f50624dd2f1a9fcL

    cmpg-double v13, v13, v15

    if-gez v13, :cond_16

    .line 148
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->U:Z

    .line 150
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_17

    .line 151
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    .line 152
    const-wide/high16 v13, 0x3ff0

    const-wide/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-float v4, v13

    .line 156
    .local v4, fSpanRate:F
    :goto_4
    float-to-double v13, v4

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Z:D

    .line 157
    const-wide/high16 v13, 0x3ff0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->aa:D

    goto/16 :goto_0

    .line 154
    .end local v4           #fSpanRate:F
    :cond_17
    const-wide/high16 v13, 0x3ff0

    const-wide/high16 v15, 0x3fe0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    div-double/2addr v13, v15

    double-to-float v4, v13

    .restart local v4       #fSpanRate:F
    goto :goto_4

    .line 165
    .end local v4           #fSpanRate:F
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-interface {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v7

    .restart local v7       #geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    goto/16 :goto_1

    .line 184
    .end local v7           #geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    const/high16 v14, -0x3ccc

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    const/high16 v14, 0x43b4

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->w:F

    goto/16 :goto_2

    .line 267
    .restart local v2       #fInterValue:F
    .restart local v5       #fTimeRate:F
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b()V

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->J:Z

    .line 414
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->H:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->E:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->D:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;->a(Ljava/lang/Runnable;)V

    .line 418
    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 1
    .parameter "zoomby"

    .prologue
    .line 304
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->W:F

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->S:Z

    goto :goto_0
.end method

.method public final b(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 325
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ac:I

    .line 326
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ad:I

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ab:Z

    .line 328
    return-void
.end method

.method public final c(F)V
    .locals 2
    .parameter "rotate"

    .prologue
    const/high16 v1, 0x43b4

    .line 361
    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float p1, v0, v1

    .line 362
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->u:F

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->af:Z

    .line 364
    return-void
.end method

.method public final c(II)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 343
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->m:I

    .line 344
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->n:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ae:Z

    .line 346
    return-void
.end method

.method public final d(F)V
    .locals 3
    .parameter "skew"

    .prologue
    const/high16 v0, 0x4234

    const/high16 v2, 0x43b4

    .line 375
    rem-float v1, p1, v2

    add-float/2addr v1, v2

    rem-float p1, v1, v2

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .end local p1
    move p1, v0

    .line 376
    .restart local p1
    :cond_0
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->y:F

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ag:Z

    .line 378
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->K:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->N:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->P:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->S:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->R:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->T:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()F
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->Y:D

    double-to-float v0, v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ab:Z

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ac:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ad:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ae:Z

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->s:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->t:I

    return v0
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->x:F

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->af:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->ag:Z

    return v0
.end method

.method public final r()F
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->B:F

    return v0
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 421
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->k:I

    .line 422
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->I:Z

    .line 426
    return-void
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->I:Z

    return v0
.end method
