.class public Lcom/didi/frame/carpool/CarPoolHelper;
.super Ljava/lang/Object;
.source "CarPoolHelper.java"


# static fields
.field private static carPoolListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/carpool/CarPoolListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/carpool/CarPoolHelper;->carPoolListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCarModelListener(Lcom/didi/frame/carpool/CarPoolListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/didi/frame/carpool/CarPoolHelper;->carPoolListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static enableTrigger(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 64
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->enableTrigger()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->disableTrigger()V

    goto :goto_0
.end method

.method public static getCarPoolType()I
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v0

    return v0
.end method

.method public static lockCarPoolType(ZZZ)V
    .locals 1
    .parameter "canFlag"
    .parameter "noFlag"
    .parameter "onlyFlag"

    .prologue
    .line 52
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/didi/frame/carpool/CarPoolOperator;->lockCarPoolType(ZZZ)V

    .line 55
    :cond_0
    return-void
.end method

.method public static notifyChange(I)V
    .locals 4
    .parameter "carPoolType"

    .prologue
    .line 31
    sget-object v3, Lcom/didi/frame/carpool/CarPoolHelper;->carPoolListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/carpool/CarPoolListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 36
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/carpool/CarPoolListener;>;"
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/carpool/CarPoolListener;

    .line 39
    .local v1, listener:Lcom/didi/frame/carpool/CarPoolListener;
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, p0}, Lcom/didi/frame/carpool/CarPoolListener;->onCarPoolChanged(I)V

    goto :goto_0

    .line 43
    .end local v1           #listener:Lcom/didi/frame/carpool/CarPoolListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/carpool/CarPoolListener;>;"
    :cond_1
    return-void
.end method

.method public static removeCarModelListener(Lcom/didi/frame/carpool/CarPoolListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/didi/frame/carpool/CarPoolHelper;->carPoolListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static saveCarPoolType(I)V
    .locals 1
    .parameter "carPoolType"

    .prologue
    .line 74
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/common/config/TaxiPreferences;->setCarPoolType(I)V

    .line 75
    return-void
.end method

.method public static setCurrentCarPoolType(I)V
    .locals 2
    .parameter "carPoolType"

    .prologue
    .line 58
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/didi/frame/carpool/CarPoolOperator;->setSelected(II)V

    .line 61
    :cond_0
    return-void
.end method

.method public static setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 46
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 49
    :cond_0
    return-void
.end method
