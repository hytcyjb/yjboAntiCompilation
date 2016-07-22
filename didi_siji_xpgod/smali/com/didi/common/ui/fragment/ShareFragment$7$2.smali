.class Lcom/didi/common/ui/fragment/ShareFragment$7$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/ShareFragment$7;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    new-instance v1, Lcom/didi/common/ui/fragment/ShareListAdapter;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/ShareFragment;->access$600(Lcom/didi/common/ui/fragment/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/common/ui/fragment/ShareListAdapter;-><init>(Ljava/util/ArrayList;)V

    #setter for: Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1202(Lcom/didi/common/ui/fragment/ShareFragment;Lcom/didi/common/ui/fragment/ShareListAdapter;)Lcom/didi/common/ui/fragment/ShareListAdapter;

    .line 480
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1200(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/fragment/ShareListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 481
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$2;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1300(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/MyProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/MyProgressBar;->setVisibility(I)V

    .line 482
    return-void
.end method
