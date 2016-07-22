.class Lcom/didi/beatles/im/BtsConversationAdapter$2;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;->setListeners(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 334
    iget v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->val$position:I

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$000(Lcom/didi/beatles/im/BtsConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$000(Lcom/didi/beatles/im/BtsConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v2}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 338
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    if-eqz v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$500(Lcom/didi/beatles/im/BtsConversationAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0}, Lcom/didi/im/component/CommonMessagePopupHelper;->getDialogHelper(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)Lcom/didi/im/component/CommonMessagePopupHelper;

    move-result-object v1

    .line 343
    .local v1, dialogHelper:Lcom/didi/im/component/CommonMessagePopupHelper;
    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$500(Lcom/didi/beatles/im/BtsConversationAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/didi/im/helper/IMChatHelper;->getResendString()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/im/BtsConversationAdapter$2;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$600(Lcom/didi/beatles/im/BtsConversationAdapter;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/didi/im/component/CommonMessagePopupHelper;->showPopupWindow(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    goto :goto_0
.end method
