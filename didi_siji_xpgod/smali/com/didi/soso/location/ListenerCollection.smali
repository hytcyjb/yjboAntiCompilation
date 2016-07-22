.class public Lcom/didi/soso/location/ListenerCollection;
.super Ljava/lang/Object;
.source "ListenerCollection.java"


# static fields
.field private static mLocationListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/soso/location/LocationInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/didi/soso/location/ListenerCollection;->mLocationListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocationLister(Lcom/didi/soso/location/LocationInterface;)V
    .locals 3
    .parameter "inter"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    sget-object v0, Lcom/didi/soso/location/ListenerCollection;->mLocationListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
.end method

.method public static notifyLocation(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 35
    sget-object v3, Lcom/didi/soso/location/ListenerCollection;->mLocationListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/soso/location/LocationInterface;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 40
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/soso/location/LocationInterface;>;"
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/soso/location/LocationInterface;

    .line 44
    .local v1, li:Lcom/didi/soso/location/LocationInterface;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1, p0}, Lcom/didi/soso/location/LocationInterface;->onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V

    goto :goto_0

    .line 49
    .end local v1           #li:Lcom/didi/soso/location/LocationInterface;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/soso/location/LocationInterface;>;"
    :cond_1
    return-void
.end method

.method public static removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V
    .locals 2
    .parameter "inter"

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    sget-object v0, Lcom/didi/soso/location/ListenerCollection;->mLocationListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-void
.end method
