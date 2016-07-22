.class Lcom/didi/common/ui/fragment/MenuFragment$4;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$4;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showMyOrdersFragment()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$4;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->closeFragmentDelayed()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$500(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 452
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setIMUnreadFlag(Z)V

    .line 453
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$4;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgOrderIcon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$600(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;

    move-result-object v0

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 454
    const-string v0, "pxxmenu101_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    return-void
.end method
