.class Lcom/didi/frame/price/PriceTriggerView$2;
.super Ljava/lang/Object;
.source "PriceTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceTriggerView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/price/PriceTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/frame/price/PriceTriggerView$2;->this$0:Lcom/didi/frame/price/PriceTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/didi/frame/price/PriceTriggerView$2;->this$0:Lcom/didi/frame/price/PriceTriggerView;

    #getter for: Lcom/didi/frame/price/PriceTriggerView;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/price/PriceTriggerView;->access$000(Lcom/didi/frame/price/PriceTriggerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 61
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 62
    .end local v0           #clickListener:Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method
