.class Lcom/didi/frame/price/PricePinView$1$1;
.super Ljava/lang/Object;
.source "PricePinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PricePinView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/price/PricePinView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PricePinView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/frame/price/PricePinView$1$1;->this$1:Lcom/didi/frame/price/PricePinView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/frame/price/PricePinView$1$1;->this$1:Lcom/didi/frame/price/PricePinView$1;

    iget-object v0, v0, Lcom/didi/frame/price/PricePinView$1;->this$0:Lcom/didi/frame/price/PricePinView;

    invoke-static {v0}, Lcom/didi/frame/price/PriceOperator;->select(Lcom/didi/frame/price/PricePinView;)V

    .line 49
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 50
    return-void
.end method
