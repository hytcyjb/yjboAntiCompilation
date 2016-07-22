.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public firstClick()V
    .locals 1

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayStop()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3112
    return-void
.end method

.method public secondClick()V
    .locals 4

    .prologue
    .line 3116
    const-string v3, "tel:4000001999"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3117
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3119
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v3, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3123
    :goto_0
    return-void

    .line 3120
    :catch_0
    move-exception v0

    .line 3121
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public thirdClick()V
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3128
    return-void
.end method
