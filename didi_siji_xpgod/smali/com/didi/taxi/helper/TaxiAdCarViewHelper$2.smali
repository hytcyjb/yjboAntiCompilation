.class final Lcom/didi/taxi/helper/TaxiAdCarViewHelper$2;
.super Ljava/lang/Object;
.source "TaxiAdCarViewHelper.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/helper/TaxiAdCarViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 138
    #calls: Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->loadGuide()V
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$300()V

    .line 139
    return-void
.end method
