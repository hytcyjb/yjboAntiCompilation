.class Lcom/didi/frame/price/PriceOperator$1$1;
.super Ljava/lang/Object;
.source "PriceOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceOperator$1;->onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/price/PriceOperator$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceOperator$1;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator$1$1;->this$1:Lcom/didi/frame/price/PriceOperator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator$1$1;->this$1:Lcom/didi/frame/price/PriceOperator$1;

    iget-object v0, v0, Lcom/didi/frame/price/PriceOperator$1;->this$0:Lcom/didi/frame/price/PriceOperator;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/frame/price/PriceOperator;->onBusinessCityChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/frame/price/PriceOperator;->access$100(Lcom/didi/frame/price/PriceOperator;Ljava/lang/String;)V

    .line 60
    return-void
.end method
