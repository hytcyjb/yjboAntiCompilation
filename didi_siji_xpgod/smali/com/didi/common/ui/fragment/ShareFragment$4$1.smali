.class Lcom/didi/common/ui/fragment/ShareFragment$4$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/ShareFragment$4;->onCheckedChanged(Lcom/didi/common/ui/component/TabGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/ShareFragment$4;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$4;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1200(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/fragment/ShareListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$4;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/fragment/ShareListAdapter;->notifyUpdate(Landroid/widget/ListView;)V

    .line 303
    return-void
.end method
