.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$8;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->setBarListener()V
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
    .line 330
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->order:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1500(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->onConfirmTimely(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1600(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V

    .line 334
    const-string v0, "pgxwfr03_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1400(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    return-void
.end method
