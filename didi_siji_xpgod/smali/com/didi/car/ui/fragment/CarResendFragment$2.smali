.class Lcom/didi/car/ui/fragment/CarResendFragment$2;
.super Ljava/lang/Object;
.source "CarResendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$308(Lcom/didi/car/ui/fragment/CarResendFragment;)I

    .line 151
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarResendFragment;->countReEstimateNum:I
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$300(Lcom/didi/car/ui/fragment/CarResendFragment;)I

    move-result v0

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getEstimatePriceThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$200(Lcom/didi/car/ui/fragment/CarResendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimateFare()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$400(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    .line 155
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
