.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;
.super Ljava/util/TimerTask;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1157
    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$410()I

    .line 1158
    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$400()I

    move-result v0

    if-lez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$000()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1168
    :goto_0
    return-void

    .line 1161
    :cond_0
    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4210()I

    .line 1162
    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4200()I

    move-result v0

    if-lez v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$500()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
