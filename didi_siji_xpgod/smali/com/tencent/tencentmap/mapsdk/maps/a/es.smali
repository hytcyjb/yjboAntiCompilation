.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/es;
.super Ljava/lang/Object;
.source "HeatTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

.field private g:F

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

.field private i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

.field private j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

.field private volatile k:Z

.field private l:Z

.field private m:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    .line 35
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/es$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    .line 62
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->k:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->l:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    .line 200
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a:Z

    .line 72
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    .line 73
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    .line 74
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(FLcom/tencent/tencentmap/mapsdk/maps/a/er;)V
    .locals 3
    .parameter "alpha"
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 142
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->k:Z

    .line 146
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    .line 147
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    const/high16 v1, 0x3f80

    invoke-direct {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    .line 148
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 149
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(I)V

    .line 150
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    .line 151
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(FLcom/tencent/tencentmap/mapsdk/maps/a/er;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)V
    .locals 0
    .parameter "leftTop20"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 242
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 164
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    .line 165
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-virtual {v0, v3, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    .line 168
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/es;Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->l:Z

    .line 179
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 6
    .parameter "gl"
    .parameter "overlay"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, ret:Z
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->k:Z

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/er;-><init>(Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/en;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    .line 209
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a:Z

    .line 212
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->d()V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->c()Z

    move-result v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->l:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    :cond_1
    :goto_0
    move v0, v1

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/er;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    .line 216
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 221
    :cond_2
    :goto_2
    return v0

    .line 212
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dv;->b()V

    .line 86
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dv;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->m:Landroid/graphics/Bitmap;

    .line 91
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    .line 93
    :cond_1
    return-void
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)V
    .locals 0
    .parameter "rightBottom20"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 250
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    if-nez v3, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    .line 105
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->k:Z

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g:F

    return v0
.end method

.method public final h()Lcom/tencent/tencentmap/mapsdk/maps/a/er;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    return-object v0
.end method

.method public final j()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v0, strBuild:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
