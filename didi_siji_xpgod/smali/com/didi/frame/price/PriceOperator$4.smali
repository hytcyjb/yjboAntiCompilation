.class Lcom/didi/frame/price/PriceOperator$4;
.super Ljava/lang/Object;
.source "PriceOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceOperator;->shrinkPins(I)V
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
    .line 296
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator$4;->this$0:Lcom/didi/frame/price/PriceOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 301
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator$4;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;
    invoke-static {v3}, Lcom/didi/frame/price/PriceOperator;->access$400(Lcom/didi/frame/price/PriceOperator;)[Lcom/didi/frame/price/PricePinView;

    move-result-object v3

    array-length v0, v3

    .line 303
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 304
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator$4;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;
    invoke-static {v3}, Lcom/didi/frame/price/PriceOperator;->access$400(Lcom/didi/frame/price/PriceOperator;)[Lcom/didi/frame/price/PricePinView;

    move-result-object v3

    aget-object v2, v3, v1

    .line 305
    .local v2, view:Lcom/didi/frame/price/PricePinView;
    invoke-virtual {v2}, Lcom/didi/frame/price/PricePinView;->invisible()V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v2           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    return-void
.end method
