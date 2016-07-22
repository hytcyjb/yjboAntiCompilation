.class Lcom/didi/frame/price/PriceTriggerView$1;
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
    .line 41
    iput-object p1, p0, Lcom/didi/frame/price/PriceTriggerView$1;->this$0:Lcom/didi/frame/price/PriceTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/didi/frame/price/PriceTriggerView$1;->this$0:Lcom/didi/frame/price/PriceTriggerView;

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/didi/frame/price/PriceTriggerView$1;->this$0:Lcom/didi/frame/price/PriceTriggerView;

    new-instance v1, Lcom/didi/frame/price/PriceTriggerView$1$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/price/PriceTriggerView$1$1;-><init>(Lcom/didi/frame/price/PriceTriggerView$1;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/frame/price/PriceTriggerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method
