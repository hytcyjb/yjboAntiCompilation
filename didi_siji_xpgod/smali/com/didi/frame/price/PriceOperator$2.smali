.class Lcom/didi/frame/price/PriceOperator$2;
.super Ljava/lang/Object;
.source "PriceOperator.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/price/PriceOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/price/PriceOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator$2;->this$0:Lcom/didi/frame/price/PriceOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator$2;->this$0:Lcom/didi/frame/price/PriceOperator;

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->clear()V

    .line 71
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator$2;->this$0:Lcom/didi/frame/price/PriceOperator;

    #calls: Lcom/didi/frame/price/PriceOperator;->onBusinessCityChange(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/didi/frame/price/PriceOperator;->access$100(Lcom/didi/frame/price/PriceOperator;Ljava/lang/String;)V

    .line 72
    return-void
.end method
