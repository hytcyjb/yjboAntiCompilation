.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
.super Ljava/lang/Object;
.source "BitmapFormater.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:F

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "iFormateType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "marker_default.png"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b:I

    .line 28
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->c:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->d:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->e:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->f:Ljava/lang/String;

    .line 32
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->g:F

    .line 34
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 35
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "mContex"

    .prologue
    const/high16 v7, 0x4352

    const/high16 v6, 0x4334

    const/high16 v5, 0x42f0

    const/high16 v4, 0x4270

    const/high16 v3, 0x41f0

    .line 62
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 63
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v3, "android.graphics.Bitmap"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 175
    :goto_0
    return-object v1

    .line 66
    :cond_1
    if-nez p1, :cond_2

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b:I

    packed-switch v1, :pswitch_data_0

    .line 175
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 71
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "res_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 72
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_4

    .line 73
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 78
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->c:I

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 79
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 80
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 86
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asset_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_5

    .line 88
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 92
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 93
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 94
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 95
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 98
    :cond_6
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 105
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_7

    .line 107
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 109
    :cond_7
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 131
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 132
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_8

    .line 133
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 138
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 139
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 144
    :pswitch_4
    const-string v1, "asset_marker_default.png"

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 145
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_9

    .line 146
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 148
    :cond_9
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 149
    const-string v1, "marker_default.png"

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 150
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 151
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 158
    :pswitch_5
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->g:F

    const/4 v0, 0x0

    cmpg-float v2, v1, v3

    if-gez v2, :cond_c

    const-string v0, "RED.png"

    .line 159
    .local v0, strBitmapName:Ljava/lang/String;
    :cond_a
    :goto_2
    if-eqz v0, :cond_3

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asset_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    .line 161
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_b

    .line 162
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 164
    :cond_b
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 165
    invoke-static {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 166
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 167
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 158
    .end local v0           #strBitmapName:Ljava/lang/String;
    :cond_c
    cmpl-float v2, v1, v3

    if-ltz v2, :cond_d

    cmpg-float v2, v1, v4

    if-gez v2, :cond_d

    const-string v0, "ORANGE.png"

    goto :goto_2

    :cond_d
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_e

    cmpg-float v2, v1, v5

    if-gez v2, :cond_e

    const-string v0, "YELLOW.png"

    goto :goto_2

    :cond_e
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_f

    cmpg-float v2, v1, v6

    if-gez v2, :cond_f

    const-string v0, "GREEN.png"

    goto :goto_2

    :cond_f
    cmpl-float v2, v1, v6

    if-ltz v2, :cond_10

    cmpg-float v2, v1, v7

    if-gez v2, :cond_10

    const-string v0, "CYAN.png"

    goto :goto_2

    :cond_10
    cmpl-float v2, v1, v7

    if-ltz v2, :cond_11

    const/high16 v2, 0x4370

    cmpg-float v2, v1, v2

    if-gez v2, :cond_11

    const-string v0, "AZURE.png"

    goto :goto_2

    :cond_11
    const/high16 v2, 0x4370

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    const/high16 v2, 0x4387

    cmpg-float v2, v1, v2

    if-gez v2, :cond_12

    const-string v0, "BLUE.png"

    goto/16 :goto_2

    :cond_12
    const/high16 v2, 0x4387

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_13

    const/high16 v2, 0x4396

    cmpg-float v2, v1, v2

    if-gez v2, :cond_13

    const-string v0, "VIOLET.png"

    goto/16 :goto_2

    :cond_13
    const/high16 v2, 0x4396

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_14

    const/high16 v2, 0x43a5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_14

    const-string v0, "MAGENTAV.png"

    goto/16 :goto_2

    :cond_14
    const/high16 v2, 0x43a5

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    const-string v0, "ROSE.png"

    goto/16 :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(F)V
    .locals 0
    .parameter "color"

    .prologue
    .line 239
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->g:F

    .line 240
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 223
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->c:I

    .line 224
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->h:Landroid/graphics/Bitmap;

    .line 244
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->d:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->e:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->f:Ljava/lang/String;

    .line 236
    return-void
.end method
