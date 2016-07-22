.class Lcom/didi/flier/ui/fragment/FlierResendFragment$2;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$308(Lcom/didi/flier/ui/fragment/FlierResendFragment;)I

    .line 159
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->countReEstimateNum:I
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierResendFragment;)I

    move-result v0

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getEstimatePriceThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimateFare()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    .line 163
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
