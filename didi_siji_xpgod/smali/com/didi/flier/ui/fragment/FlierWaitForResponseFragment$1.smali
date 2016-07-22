.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;
.super Landroid/os/Handler;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$000()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 146
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v1, v4}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V

    .line 150
    :cond_0
    const-string v0, ""

    .line 151
    .local v0, pkMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)I

    move-result v1

    const/16 v2, 0x1b59

    if-ne v1, v2, :cond_3

    .line 152
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$500()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$600()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4, v6}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    .end local v0           #pkMessage:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 153
    .restart local v0       #pkMessage:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)I

    move-result v1

    const/16 v2, 0x1b5a

    if-ne v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$600()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    .end local v0           #pkMessage:Ljava/lang/String;
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 158
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0427

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v6}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 159
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 160
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 161
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_1
.end method
