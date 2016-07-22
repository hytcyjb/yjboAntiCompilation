.class final Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;
.super Ljava/lang/Object;
.source "GLHeatOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

.field final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->m(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b()V

    .line 664
    return-void
.end method
