.class public Lcom/didi/car/listener/CarFirstTipListenerHelper;
.super Ljava/lang/Object;
.source "CarFirstTipListenerHelper.java"


# static fields
.field private static mCarFirstListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/car/listener/CarFirstTipListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/car/listener/CarFirstTipListenerHelper;->mCarFirstListener:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCarFirstListener(Lcom/didi/car/listener/CarFirstTipListener;)V
    .locals 3
    .parameter "inter"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    sget-object v0, Lcom/didi/car/listener/CarFirstTipListenerHelper;->mCarFirstListener:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    return-void
.end method

.method public static notifyShow()V
    .locals 4

    .prologue
    .line 33
    sget-object v3, Lcom/didi/car/listener/CarFirstTipListenerHelper;->mCarFirstListener:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/car/listener/CarFirstTipListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 38
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/car/listener/CarFirstTipListener;>;"
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/listener/CarFirstTipListener;

    .line 42
    .local v1, li:Lcom/didi/car/listener/CarFirstTipListener;
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1}, Lcom/didi/car/listener/CarFirstTipListener;->showCarFirstTip()V

    goto :goto_0

    .line 47
    .end local v1           #li:Lcom/didi/car/listener/CarFirstTipListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/car/listener/CarFirstTipListener;>;"
    :cond_1
    return-void
.end method

.method public static removeCarFirstListener(Lcom/didi/car/listener/CarFirstTipListener;)V
    .locals 2
    .parameter "inter"

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    sget-object v0, Lcom/didi/car/listener/CarFirstTipListenerHelper;->mCarFirstListener:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method
