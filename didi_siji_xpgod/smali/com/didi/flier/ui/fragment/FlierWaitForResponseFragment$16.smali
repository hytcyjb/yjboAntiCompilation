.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;
.super Ljava/util/TimerTask;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTask()Ljava/util/TimerTask;
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
    .line 649
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 653
    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$610()I

    .line 654
    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$600()I

    move-result v0

    if-lez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 664
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2410()I

    .line 658
    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2400()I

    move-result v0

    if-lez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$800()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
