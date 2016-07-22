.class Lcom/didi/map/MapController$2$1;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/MapController$2;


# direct methods
.method constructor <init>(Lcom/didi/map/MapController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 239
    iget-object v1, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    iget-wide v1, v1, Lcom/didi/map/MapController$2;->val$lat:D

    iget-object v3, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    iget-wide v3, v3, Lcom/didi/map/MapController$2;->val$lng:D

    iget-object v5, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    iget-object v5, v5, Lcom/didi/map/MapController$2;->val$list:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/map/ZoomManager;->zoomWithBtsMarkers(DDLjava/util/ArrayList;)F

    move-result v0

    .line 241
    .local v0, zoom:F
    iget-object v1, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    iget-wide v1, v1, Lcom/didi/map/MapController$2;->val$lat:D

    iget-object v3, p0, Lcom/didi/map/MapController$2$1;->this$0:Lcom/didi/map/MapController$2;

    iget-wide v3, v3, Lcom/didi/map/MapController$2;->val$lng:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    .line 242
    return-void
.end method
