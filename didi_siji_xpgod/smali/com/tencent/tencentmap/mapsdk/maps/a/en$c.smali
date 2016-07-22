.class final Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;
.super Ljava/lang/Object;
.source "GLHeatOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    .locals 0
    .parameter
    .parameter "tile"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    .line 568
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
