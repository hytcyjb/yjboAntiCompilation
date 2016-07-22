.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15$1;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;

.field final synthetic val$car:Lcom/didi/flier/model/FlierOrder;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;Lcom/didi/flier/model/FlierOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15$1;->this$1:Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;

    iput-object p2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15$1;->val$car:Lcom/didi/flier/model/FlierOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 962
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    .line 963
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15$1;->val$car:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v0, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 964
    return-void
.end method
