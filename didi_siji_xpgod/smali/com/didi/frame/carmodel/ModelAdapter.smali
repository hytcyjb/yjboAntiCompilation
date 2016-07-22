.class public abstract Lcom/didi/frame/carmodel/ModelAdapter;
.super Ljava/lang/Object;
.source "ModelAdapter.java"


# static fields
.field protected static adapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/didi/frame/business/Business;",
            "Lcom/didi/frame/carmodel/ModelAdapter;",
            ">;"
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

    sput-object v0, Lcom/didi/frame/carmodel/ModelAdapter;->adapterMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/didi/frame/carmodel/ModelAdapter;->adapterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 23
    .local v0, busi:Lcom/didi/frame/business/Business;
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/didi/frame/carmodel/ModelAdapter;->adapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/carmodel/ModelAdapter;

    goto :goto_0
.end method


# virtual methods
.method public abstract getCarModelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTriggerCarModel(ILjava/util/List;)Lcom/didi/car/model/CarModel;
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
.end method
