.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;
.super Landroid/os/Handler;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestory:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadHistory()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRightImg()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
