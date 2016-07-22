.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;
.super Ljava/lang/Object;
.source "FlierBookingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;->performLoadAnnouncement()V
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
    .line 216
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-virtual {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/PopupHelper;->setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 220
    return-void
.end method
