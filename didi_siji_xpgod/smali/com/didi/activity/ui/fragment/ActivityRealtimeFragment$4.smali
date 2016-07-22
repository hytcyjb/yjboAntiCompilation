.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;
.super Ljava/lang/Object;
.source "ActivityRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    iput-object p2, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;->val$view:Landroid/view/View;

    sget-object v2, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/PopupHelper;->setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 157
    return-void
.end method
