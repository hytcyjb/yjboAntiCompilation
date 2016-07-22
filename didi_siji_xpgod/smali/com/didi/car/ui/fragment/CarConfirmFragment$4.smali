.class Lcom/didi/car/ui/fragment/CarConfirmFragment$4;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$608(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I

    .line 238
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->countReEstimateNum:I
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$600(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I

    move-result v0

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getEstimatePriceThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$200(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimateFare(Z)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$700(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    .line 242
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
