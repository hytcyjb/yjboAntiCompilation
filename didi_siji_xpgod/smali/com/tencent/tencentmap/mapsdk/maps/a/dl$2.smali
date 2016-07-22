.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;
.super Ljava/lang/Object;
.source "GLMarkerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;->onAnimationEnd()V

    .line 125
    :cond_0
    return-void
.end method
