.class public Lcom/didi/frame/carmodel/CarModelAdapter;
.super Lcom/didi/frame/carmodel/ModelAdapter;
.source "CarModelAdapter.java"


# static fields
.field private static instance:Lcom/didi/frame/carmodel/CarModelAdapter;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {p0, v0}, Lcom/didi/frame/carmodel/ModelAdapter;-><init>(Lcom/didi/frame/business/Business;)V

    .line 28
    return-void
.end method

.method public static getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 32
    .local v0, busi:Lcom/didi/frame/business/Business;
    if-nez v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 34
    :cond_0
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v0, :cond_1

    .line 35
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    .line 37
    :cond_1
    sget-object v1, Lcom/didi/frame/carmodel/CarModelAdapter;->adapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/carmodel/ModelAdapter;

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/frame/carmodel/CarModelAdapter;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/didi/frame/carmodel/CarModelAdapter;->instance:Lcom/didi/frame/carmodel/CarModelAdapter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/didi/frame/carmodel/CarModelAdapter;

    invoke-direct {v0}, Lcom/didi/frame/carmodel/CarModelAdapter;-><init>()V

    sput-object v0, Lcom/didi/frame/carmodel/CarModelAdapter;->instance:Lcom/didi/frame/carmodel/CarModelAdapter;

    .line 23
    :cond_0
    sget-object v0, Lcom/didi/frame/carmodel/CarModelAdapter;->instance:Lcom/didi/frame/carmodel/CarModelAdapter;

    return-object v0
.end method


# virtual methods
.method public getCarModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTriggerCarModel(ILjava/util/List;)Lcom/didi/car/model/CarModel;
    .locals 1
    .parameter "selected"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;)",
            "Lcom/didi/car/model/CarModel;"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    return-object v0
.end method
