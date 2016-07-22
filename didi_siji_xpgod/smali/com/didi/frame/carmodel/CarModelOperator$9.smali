.class Lcom/didi/frame/carmodel/CarModelOperator$9;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelOperator;->showOtherTriggers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$9;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 419
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator$9;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 420
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v1

    .line 422
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 423
    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 424
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator$9;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #calls: Lcom/didi/frame/carmodel/CarModelOperator;->isAvailable(Landroid/view/View;)Z
    invoke-static {v4, v3}, Lcom/didi/frame/carmodel/CarModelOperator;->access$800(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    invoke-static {v3}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 422
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method
