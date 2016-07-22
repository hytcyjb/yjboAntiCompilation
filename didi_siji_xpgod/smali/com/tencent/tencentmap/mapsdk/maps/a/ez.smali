.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ez;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "tile"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a()V

    .line 20
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "tile"
    .parameter "bitmap"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
