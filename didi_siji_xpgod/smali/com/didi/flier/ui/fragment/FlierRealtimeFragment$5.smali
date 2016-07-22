.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;
.super Ljava/lang/Object;
.source "FlierRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    iput-object p2, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;->val$view:Landroid/view/View;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/PopupHelper;->setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 247
    return-void
.end method
