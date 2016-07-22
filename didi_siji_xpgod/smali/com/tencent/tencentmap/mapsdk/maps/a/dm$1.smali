.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;
.super Ljava/lang/Object;
.source "GLMarkerOverlay3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;->onAnimationStart()V

    .line 97
    :cond_0
    return-void
.end method
