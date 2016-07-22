.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ee;
.super Ljava/lang/Object;
.source "GLIconItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Z

.field protected c:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a:F

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->b:Z

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/ed;
    .locals 2
    .parameter "gl"
    .parameter "mapView"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;

    .line 171
    .local v0, state:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;

    .line 189
    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "iconBmp"
    .parameter "iconId"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 128
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;-><init>()V

    .line 129
    .local v0, state:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->a:Landroid/graphics/Bitmap;

    .line 130
    iput-object p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->b:Ljava/lang/String;

    .line 131
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->d:I

    .line 132
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;

    .line 138
    .end local v0           #state:Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;
    :cond_0
    return-void
.end method
