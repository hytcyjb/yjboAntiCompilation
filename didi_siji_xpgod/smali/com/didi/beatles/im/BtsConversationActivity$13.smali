.class Lcom/didi/beatles/im/BtsConversationActivity$13;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationActivity;->onGetNewMessage(ZZZ[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;

.field final synthetic val$getPrivous:Z

.field final synthetic val$imChatRecords:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->val$imChatRecords:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->val$getPrivous:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 743
    return-void
.end method

.method public successed([Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "results"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentProviderResult;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p2, listDTOChatRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1400(Lcom/didi/beatles/im/BtsConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1500(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/beatles/im/BtsConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->clearData()V

    .line 726
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/im/BtsConversationActivity;->isDiscontinuous:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1402(Lcom/didi/beatles/im/BtsConversationActivity;Z)Z

    .line 728
    :cond_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 729
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1500(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/beatles/im/BtsConversationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->val$imChatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->addItems(Ljava/util/ArrayList;)V

    .line 730
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->val$imChatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    iget-boolean v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->val$getPrivous:Z

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 734
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 739
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1500(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/beatles/im/BtsConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->getDataSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity$13;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->conversationAdapter:Lcom/didi/beatles/im/BtsConversationAdapter;
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1500(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/beatles/im/BtsConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->getDataSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    goto :goto_0
.end method
