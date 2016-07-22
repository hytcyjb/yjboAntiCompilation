.class Lcom/didi/frame/carmodel/CarModelTriggerView$2;
.super Ljava/lang/Object;
.source "CarModelTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelTriggerView$2;->this$0:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelTriggerView$2;->this$0:Lcom/didi/frame/carmodel/CarModelTriggerView;

    #calls: Lcom/didi/frame/carmodel/CarModelTriggerView;->writeTraceLog()V
    invoke-static {v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->access$100(Lcom/didi/frame/carmodel/CarModelTriggerView;)V

    .line 72
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelTriggerView$2;->this$0:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
