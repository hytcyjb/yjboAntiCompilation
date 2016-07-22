.class Lcom/didi/map/marker/BaseMarker$1;
.super Ljava/lang/Object;
.source "BaseMarker.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/BaseMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/BaseMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/BaseMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/didi/map/marker/BaseMarker$1;->this$0:Lcom/didi/map/marker/BaseMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker$1;->this$0:Lcom/didi/map/marker/BaseMarker;

    iget-object v0, v0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker$1;->this$0:Lcom/didi/map/marker/BaseMarker;

    iget-object v0, v0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->remove()V

    .line 284
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker$1;->this$0:Lcom/didi/map/marker/BaseMarker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 286
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method
