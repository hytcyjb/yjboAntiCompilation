.class Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;
.super Ljava/lang/Object;
.source "TaxiBookingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->isclick:Z
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->isclick:Z
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->access$002(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;Z)Z

    .line 151
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 152
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->back()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V

    goto :goto_0
.end method
