.class Lcom/didi/map/listener/MapListener$2;
.super Landroid/os/Handler;
.source "MapListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/listener/MapListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/listener/MapListener;


# direct methods
.method constructor <init>(Lcom/didi/map/listener/MapListener;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 213
    const-string v3, "maplistener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHandlerTouchEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_2

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 218
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 219
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/listener/MarkerListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/didi/map/listener/MarkerListener;->onMapTouchEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    .end local v2           #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    :catch_0
    move-exception v3

    .line 238
    :cond_1
    :goto_1
    return-void

    .line 226
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_1

    .line 228
    :try_start_1
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 229
    .restart local v1       #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 230
    .restart local v2       #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 231
    iget-object v3, p0, Lcom/didi/map/listener/MapListener$2;->this$0:Lcom/didi/map/listener/MapListener;

    #getter for: Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/didi/map/listener/MapListener;->access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/listener/MarkerListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/didi/map/listener/MarkerListener;->onMapTouchEvent(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 234
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    .end local v2           #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
