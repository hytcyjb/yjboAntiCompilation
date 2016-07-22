.class Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/flier/ui/fragment/FlierResendFragment$8;

.field final synthetic val$car:Lcom/didi/flier/model/FlierOrder;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment$8;Lcom/didi/flier/model/FlierOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;->this$1:Lcom/didi/flier/ui/fragment/FlierResendFragment$8;

    iput-object p2, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;->val$car:Lcom/didi/flier/model/FlierOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    .line 441
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;->val$car:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v0, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 442
    return-void
.end method
