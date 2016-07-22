.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iput-object p2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/PopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/common/helper/PopupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;->val$view:Landroid/view/View;

    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/PopupHelper;->setAnnouncementState(Landroid/view/View;Lcom/didi/frame/business/Business;)V

    .line 811
    return-void
.end method
