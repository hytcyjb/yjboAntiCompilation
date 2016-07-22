.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
.super Ljava/lang/Object;
.source "GLIconItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/ed;
    .locals 4
    .parameter "gl"
    .parameter "mapView"

    .prologue
    .line 98
    iget-object v1, p2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, texName:I
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->d()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 101
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->a:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->d:I

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;II)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    .line 102
    if-nez v0, :cond_1

    .line 103
    iget-object v1, p2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    return-object v1
.end method
