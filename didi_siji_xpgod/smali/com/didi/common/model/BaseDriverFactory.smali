.class public Lcom/didi/common/model/BaseDriverFactory;
.super Ljava/lang/Object;
.source "BaseDriverFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/model/BaseDriverFactory$BaseDriver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static createDriver(Lcom/didi/common/model/BaseObject;)Lcom/didi/common/model/BaseDriverFactory$BaseDriver;
    .locals 4
    .parameter "object"

    .prologue
    .line 17
    instance-of v1, p0, Lcom/didi/taxi/model/TaxiDriver;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 18
    check-cast v0, Lcom/didi/taxi/model/TaxiDriver;

    .line 19
    .local v0, driver:Lcom/didi/taxi/model/TaxiDriver;
    new-instance v1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    iget-object v2, v0, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    iget-object v3, v0, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .end local v0           #driver:Lcom/didi/taxi/model/TaxiDriver;
    :goto_0
    return-object v1

    .line 20
    :cond_0
    instance-of v1, p0, Lcom/didi/car/model/CarDriver;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 21
    check-cast v0, Lcom/didi/car/model/CarDriver;

    .line 22
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    new-instance v1, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    iget-object v2, v0, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    iget-object v3, v0, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    .end local v0           #driver:Lcom/didi/car/model/CarDriver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createDriverListByCar(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "sum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/BaseDriverFactory$BaseDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarDriver;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v0, drivers:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 42
    .local v3, r:Ljava/util/Random;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarDriver;

    .line 43
    .local v2, object:Lcom/didi/car/model/CarDriver;
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 44
    .local v4, random:I
    const/16 v5, 0x3c

    if-ge v4, v5, :cond_0

    .line 45
    invoke-static {v2}, Lcom/didi/common/model/BaseDriverFactory;->createDriver(Lcom/didi/common/model/BaseObject;)Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v2           #object:Lcom/didi/car/model/CarDriver;
    .end local v4           #random:I
    :cond_1
    return-object v0
.end method

.method public static createDriverListByTaxi(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "sum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/BaseDriverFactory$BaseDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiDriver;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v0, drivers:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 30
    .local v3, r:Ljava/util/Random;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiDriver;

    .line 31
    .local v2, object:Lcom/didi/taxi/model/TaxiDriver;
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 32
    .local v4, random:I
    const/16 v5, 0x3c

    if-ge v4, v5, :cond_0

    .line 33
    invoke-static {v2}, Lcom/didi/common/model/BaseDriverFactory;->createDriver(Lcom/didi/common/model/BaseObject;)Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v2           #object:Lcom/didi/taxi/model/TaxiDriver;
    .end local v4           #random:I
    :cond_1
    return-object v0
.end method
