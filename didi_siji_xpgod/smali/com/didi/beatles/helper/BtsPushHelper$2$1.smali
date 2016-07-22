.class Lcom/didi/beatles/helper/BtsPushHelper$2$1;
.super Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;
.source "BtsPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsPushHelper$2;->onPushMessageReceived(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable",
        "<",
        "Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/helper/BtsPushHelper$2;


# direct methods
.method constructor <init>(Lcom/didi/beatles/helper/BtsPushHelper$2;Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPushHelper$2$1;->this$0:Lcom/didi/beatles/helper/BtsPushHelper$2;

    invoke-direct {p0, p2}, Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    sget-object v4, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    monitor-enter v4

    .line 130
    :try_start_0
    sget-object v2, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;

    iget-object v3, p0, Lcom/didi/beatles/helper/BtsPushHelper$2$1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;

    invoke-interface {v2, v3}, Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;->onReceive(Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;)V

    goto :goto_0

    .line 134
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    return-void
.end method
