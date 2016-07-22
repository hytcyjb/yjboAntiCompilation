.class Lcom/didi/im/adapter/ConversationAdapter$2;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/adapter/ConversationAdapter;->setListeners(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/adapter/ConversationAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/ConversationAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput p2, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 312
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$000(Lcom/didi/im/adapter/ConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v2}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 313
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$500(Lcom/didi/im/adapter/ConversationAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0}, Lcom/didi/im/component/CommonMessagePopupHelper;->getDialogHelper(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)Lcom/didi/im/component/CommonMessagePopupHelper;

    move-result-object v1

    .line 315
    .local v1, dialogHelper:Lcom/didi/im/component/CommonMessagePopupHelper;
    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$500(Lcom/didi/im/adapter/ConversationAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/didi/im/helper/IMChatHelper;->getResendString()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/im/adapter/ConversationAdapter$2;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/im/adapter/ConversationAdapter;->access$600(Lcom/didi/im/adapter/ConversationAdapter;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/didi/im/component/CommonMessagePopupHelper;->showPopupWindow(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 316
    return-void
.end method
