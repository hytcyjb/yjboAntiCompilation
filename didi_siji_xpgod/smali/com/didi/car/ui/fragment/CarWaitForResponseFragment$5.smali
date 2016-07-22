.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 213
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 214
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 215
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    new-instance v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;

    invoke-direct {v1, p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5$1;-><init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$5;Lcom/didi/car/model/CarOrder;)V

    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->changeTip(Lcom/didi/common/net/ResponseListener;)V

    .line 228
    return-void
.end method
