.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$608(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I

    .line 233
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->countReEstimateNum:I
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$600(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I

    move-result v0

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getEstimatePriceThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimateFare(Z)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    .line 237
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
