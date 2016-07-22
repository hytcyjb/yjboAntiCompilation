.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;
.super Ljava/lang/Object;
.source "MapEngine.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l()V
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
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->k()V

    .line 378
    :cond_0
    return-void
.end method
