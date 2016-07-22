.class public Lcom/didi/frame/carmodel/CarModelHelper;
.super Ljava/lang/Object;
.source "CarModelHelper.java"


# static fields
.field private static carModelListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/carmodel/CarModelListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/carmodel/CarModelHelper;->carModelListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/didi/frame/carmodel/CarModelHelper;->carModelListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static notifyChange(Lcom/didi/car/model/CarModel;Z)V
    .locals 4
    .parameter "model"
    .parameter "added"

    .prologue
    .line 29
    sget-object v3, Lcom/didi/frame/carmodel/CarModelHelper;->carModelListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/carmodel/CarModelListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 34
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/carmodel/CarModelListener;>;"
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/carmodel/CarModelListener;

    .line 37
    .local v1, listener:Lcom/didi/frame/carmodel/CarModelListener;
    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v1, p0, p1}, Lcom/didi/frame/carmodel/CarModelListener;->onCarModelChange(Lcom/didi/car/model/CarModel;Z)V

    goto :goto_0

    .line 41
    .end local v1           #listener:Lcom/didi/frame/carmodel/CarModelListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/carmodel/CarModelListener;>;"
    :cond_1
    return-void
.end method

.method public static removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/didi/frame/carmodel/CarModelHelper;->carModelListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
