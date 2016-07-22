.class Lcom/didi/car/ui/fragment/CarBookingFragment$1;
.super Ljava/lang/Object;
.source "CarBookingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->isclick:Z
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$000(Lcom/didi/car/ui/fragment/CarBookingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->isclick:Z
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$002(Lcom/didi/car/ui/fragment/CarBookingFragment;Z)Z

    .line 183
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 184
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$1;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->back()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$100(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    goto :goto_0
.end method
