.class final Lcom/didi/map/marker/MarkerController$1;
.super Ljava/lang/Object;
.source "MarkerController.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/MarkerController;->removeHotMarkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/didi/map/marker/MarkerController$1;->val$marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/didi/map/marker/MarkerController$1;->val$marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->remove()V

    .line 1565
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 1560
    return-void
.end method
