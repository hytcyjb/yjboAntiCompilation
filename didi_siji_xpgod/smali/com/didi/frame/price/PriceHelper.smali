.class public Lcom/didi/frame/price/PriceHelper;
.super Ljava/lang/Object;
.source "PriceHelper.java"


# static fields
.field private static priceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/price/PriceListener;",
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

    sput-object v0, Lcom/didi/frame/price/PriceHelper;->priceListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPriceListener(Lcom/didi/frame/price/PriceListener;)V
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
    sget-object v0, Lcom/didi/frame/price/PriceHelper;->priceListeners:Ljava/util/HashMap;

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
    .parameter "lastPrice"
    .parameter "newPrice"

    .prologue
    .line 41
    sget-object v3, Lcom/didi/frame/price/PriceHelper;->priceListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/price/PriceListener;>;>;"
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
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/price/PriceListener;>;"
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/price/PriceListener;

    .line 49
    .local v1, listener:Lcom/didi/frame/price/PriceListener;
    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v1, p0, p1}, Lcom/didi/frame/price/PriceListener;->onPriceChange(II)V

    goto :goto_0

    .line 53
    .end local v1           #listener:Lcom/didi/frame/price/PriceListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/price/PriceListener;>;"
    :cond_1
    return-void
.end method

.method public static removePriceListener(Lcom/didi/frame/price/PriceListener;)V
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
    sget-object v0, Lcom/didi/frame/price/PriceHelper;->priceListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setPrice(I)V
    .locals 1
    .parameter "price"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->setTip(I)V

    .line 33
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v0

    invoke-static {v0, p0}, Lcom/didi/frame/price/PriceHelper;->notifyChange(II)V

    .line 34
    return-void
.end method
