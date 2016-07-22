.class Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;
.super Ljava/lang/Object;
.source "TaxiBookingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->performLoadAnnouncement()V
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
    .line 166
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/PopupHelper;->setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 170
    return-void
.end method
