.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;
.super Ljava/lang/Object;
.source "FlierBookingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isclick:Z
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isclick:Z
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$002(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Z)Z

    .line 178
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 179
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->back()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    goto :goto_0
.end method
