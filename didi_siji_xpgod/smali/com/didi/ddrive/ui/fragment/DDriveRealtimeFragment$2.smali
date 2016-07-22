.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$2;
.super Ljava/lang/Object;
.source "DDriveRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$2;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$2;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->getBottomView()Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 190
    return-void
.end method
