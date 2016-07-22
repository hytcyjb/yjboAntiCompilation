.class public Lcom/didi/frame/wait/WaitHelper;
.super Ljava/lang/Object;
.source "WaitHelper.java"


# static fields
.field private static waitListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/wait/WaitListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/wait/WaitHelper;->waitListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/didi/frame/wait/WaitListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/didi/frame/wait/WaitHelper;->waitListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static notifyChange(II)V
    .locals 4
    .parameter "lastTime"
    .parameter "newTime"

    .prologue
    .line 41
    sget-object v3, Lcom/didi/frame/wait/WaitHelper;->waitListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/wait/WaitListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 46
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/wait/WaitListener;>;"
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/wait/WaitListener;

    .line 49
    .local v1, listener:Lcom/didi/frame/wait/WaitListener;
    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v1, p0, p1}, Lcom/didi/frame/wait/WaitListener;->onWaitTimeChange(II)V

    goto :goto_0

    .line 53
    .end local v1           #listener:Lcom/didi/frame/wait/WaitListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/wait/WaitListener;>;"
    :cond_1
    return-void
.end method

.method public static remove(Lcom/didi/frame/wait/WaitListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/didi/frame/wait/WaitHelper;->waitListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setWaitTime(I)V
    .locals 1
    .parameter "waitTime"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->setWaitTime(I)V

    .line 33
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v0

    invoke-static {v0, p0}, Lcom/didi/frame/wait/WaitHelper;->notifyChange(II)V

    .line 34
    return-void
.end method
