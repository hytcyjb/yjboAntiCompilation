.class Lcom/didi/im/activity/ConversationActivity$12;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/activity/ConversationActivity;->onGetNewMessage(ZZZZ[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;

.field final synthetic val$getPrivous:Z

.field final synthetic val$imChatRecords:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iput-object p2, p0, Lcom/didi/im/activity/ConversationActivity$12;->val$imChatRecords:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/didi/im/activity/ConversationActivity$12;->val$getPrivous:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 702
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
    .line 683
    .local p2, listDTOChatRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-boolean v0, v0, Lcom/didi/im/activity/ConversationActivity;->isDiscontinuous:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$1100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/adapter/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/adapter/ConversationAdapter;->clearData()V

    .line 685
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/im/activity/ConversationActivity;->isDiscontinuous:Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$1100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/adapter/ConversationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$12;->val$imChatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/didi/im/adapter/ConversationAdapter;->addItems(Ljava/util/ArrayList;)V

    .line 689
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->val$imChatRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    iget-boolean v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->val$getPrivous:Z

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 693
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 698
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;
    invoke-static {v1}, Lcom/didi/im/activity/ConversationActivity;->access$1100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/adapter/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/im/adapter/ConversationAdapter;->getDataSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 696
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$12;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->conversationAdapter:Lcom/didi/im/adapter/ConversationAdapter;
    invoke-static {v1}, Lcom/didi/im/activity/ConversationActivity;->access$1100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/adapter/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/im/adapter/ConversationAdapter;->getDataSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    goto :goto_0
.end method
