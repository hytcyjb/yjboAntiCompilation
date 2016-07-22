.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$16;
.super Ljava/util/TimerTask;
.source "CarWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->myTask()Ljava/util/TimerTask;
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
    .line 648
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$610()I

    .line 653
    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$600()I

    move-result v0

    if-lez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2410()I

    .line 657
    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2400()I

    move-result v0

    if-lez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$16;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2300(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$800()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
