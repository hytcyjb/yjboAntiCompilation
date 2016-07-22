.class Lcom/didi/frame/price/PriceTriggerView$1$1;
.super Ljava/lang/Object;
.source "PriceTriggerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceTriggerView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/price/PriceTriggerView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceTriggerView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/frame/price/PriceTriggerView$1$1;->this$1:Lcom/didi/frame/price/PriceTriggerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->showContentPins()V

    .line 51
    return-void
.end method
