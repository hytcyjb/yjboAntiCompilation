.class Lcom/didi/common/ui/fragment/CommonAddrFragment$3;
.super Ljava/lang/Object;
.source "CommonAddrFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonAddrFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 267
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 268
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$200(Lcom/didi/common/ui/fragment/CommonAddrFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->backToSyncCallFragment(Z)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    goto :goto_0
.end method
