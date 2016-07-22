.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 212
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 213
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 214
    .local v0, carOrder:Lcom/didi/flier/model/FlierOrder;
    new-instance v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;

    invoke-direct {v1, p0, v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;Lcom/didi/flier/model/FlierOrder;)V

    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->changeTip(Lcom/didi/common/net/ResponseListener;)V

    .line 227
    return-void
.end method
