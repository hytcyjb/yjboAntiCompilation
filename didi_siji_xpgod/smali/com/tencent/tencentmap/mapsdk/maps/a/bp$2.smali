.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/cb;
.source "MapEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bp;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    .line 178
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .locals 1
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 182
    invoke-super {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cb;->a(FF)Z

    move-result v0

    return v0
.end method

.method public final b(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 188
    invoke-super {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cb;->b(FF)Z

    move-result v0

    return v0
.end method

.method public final c(FF)Z
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 194
    invoke-super {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cb;->c(FF)Z

    move-result v0

    return v0
.end method
