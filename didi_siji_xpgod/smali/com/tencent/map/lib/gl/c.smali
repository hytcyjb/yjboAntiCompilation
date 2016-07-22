.class public final Lcom/tencent/map/lib/gl/c;
.super Ljava/lang/Object;
.source "JNICallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/lib/gl/c$a;,
        Lcom/tencent/map/lib/gl/c$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

.field private c:Lcom/tencent/map/lib/gl/c$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Lcom/tencent/map/lib/gl/c$a;)V
    .locals 0
    .parameter "res"
    .parameter "downloader"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/tencent/map/lib/gl/c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    .line 83
    iput-object p2, p0, Lcom/tencent/map/lib/gl/c;->c:Lcom/tencent/map/lib/gl/c$a;

    .line 84
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter "fontSize"

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;[B)Ljava/lang/Object;
    .locals 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x4000

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, returnParam:Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 115
    .end local v0           #returnParam:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 99
    .restart local v0       #returnParam:Ljava/lang/Object;
    :pswitch_0
    invoke-static {p4}, Lcom/tencent/map/lib/gl/c$b;->a([B)Lcom/tencent/map/lib/gl/c$b;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/tencent/map/lib/gl/c;->a(I)V

    iget v2, v1, Lcom/tencent/map/lib/gl/c$b;->b:I

    iget v3, v1, Lcom/tencent/map/lib/gl/c$b;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v0           #returnParam:Ljava/lang/Object;
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, v1, Lcom/tencent/map/lib/gl/c$b;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v1, v1, Lcom/tencent/map/lib/gl/c$b;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v4, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, p3, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    .local v0, returnParam:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 102
    .local v0, returnParam:Ljava/lang/Object;
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/map/lib/gl/c;->a(I)V

    iget-object v1, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/map/lib/gl/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    new-instance v0, Landroid/graphics/PointF;

    .end local v0           #returnParam:Ljava/lang/Object;
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 103
    .local v0, returnParam:Landroid/graphics/PointF;
    goto :goto_0

    .line 105
    .local v0, returnParam:Ljava/lang/Object;
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/map/lib/gl/c;->c:Lcom/tencent/map/lib/gl/c$a;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Engine callback download:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/map/lib/gl/c;->c:Lcom/tencent/map/lib/gl/c$a;

    invoke-interface {v1, p3}, Lcom/tencent/map/lib/gl/c$a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "engine callback loadImage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/map/lib/gl/c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    invoke-static {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, returnParam:Landroid/graphics/Bitmap;
    :goto_1
    goto/16 :goto_0

    .line 108
    .local v0, returnParam:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/tencent/map/lib/gl/c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    invoke-virtual {v1, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 111
    :pswitch_4
    if-eqz p4, :cond_0

    new-instance v1, Lcom/tencent/map/lib/gl/c$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/tencent/map/lib/gl/c$1;-><init>(Lcom/tencent/map/lib/gl/c;Ljava/lang/String;[B)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tencent/map/lib/gl/c$1;->b([Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
