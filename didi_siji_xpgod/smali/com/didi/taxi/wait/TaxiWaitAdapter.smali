.class public Lcom/didi/taxi/wait/TaxiWaitAdapter;
.super Lcom/didi/frame/wait/WaitAdapter;
.source "TaxiWaitAdapter.java"


# static fields
.field private static instance:Lcom/didi/taxi/wait/TaxiWaitAdapter;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-direct {p0, v0}, Lcom/didi/frame/wait/WaitAdapter;-><init>(Lcom/didi/frame/business/Business;)V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/didi/taxi/wait/TaxiWaitAdapter;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/taxi/wait/TaxiWaitAdapter;->instance:Lcom/didi/taxi/wait/TaxiWaitAdapter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/didi/taxi/wait/TaxiWaitAdapter;

    invoke-direct {v0}, Lcom/didi/taxi/wait/TaxiWaitAdapter;-><init>()V

    sput-object v0, Lcom/didi/taxi/wait/TaxiWaitAdapter;->instance:Lcom/didi/taxi/wait/TaxiWaitAdapter;

    .line 21
    :cond_0
    sget-object v0, Lcom/didi/taxi/wait/TaxiWaitAdapter;->instance:Lcom/didi/taxi/wait/TaxiWaitAdapter;

    return-object v0
.end method


# virtual methods
.method public getTriggerText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cityId"

    .prologue
    .line 35
    const-string v0, "\u613f\u7b49"

    return-object v0
.end method

.method public getWaitTimeList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "cityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getTaxiCityWaitTimeById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
