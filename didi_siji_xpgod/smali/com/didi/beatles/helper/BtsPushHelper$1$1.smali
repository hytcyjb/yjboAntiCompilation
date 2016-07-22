.class Lcom/didi/beatles/helper/BtsPushHelper$1$1;
.super Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;
.source "BtsPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsPushHelper$1;->onPushMessageReceived(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable",
        "<",
        "Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/helper/BtsPushHelper$1;


# direct methods
.method constructor <init>(Lcom/didi/beatles/helper/BtsPushHelper$1;Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPushHelper$1$1;->this$0:Lcom/didi/beatles/helper/BtsPushHelper$1;

    invoke-direct {p0, p2}, Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 67
    sget-object v4, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    monitor-enter v4

    .line 69
    :try_start_0
    sget-object v3, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;

    .local v2, l:Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->getOid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->getOid()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/didi/beatles/helper/BtsPushHelper$1$1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    iget-object v3, v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->getRole()I

    move-result v5

    iget-object v3, p0, Lcom/didi/beatles/helper/BtsPushHelper$1$1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    iget-object v3, v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->user_role:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/didi/beatles/helper/BtsPushHelper$1$1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    invoke-virtual {v2, v3}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->onReceive(Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V

    goto :goto_0

    .line 82
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 78
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #l:Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/didi/beatles/helper/BtsPushHelper$1$1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    invoke-virtual {v2, v3}, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->onReceive(Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V

    goto :goto_0

    .line 82
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;>;"
    .end local v2           #l:Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    return-void
.end method
