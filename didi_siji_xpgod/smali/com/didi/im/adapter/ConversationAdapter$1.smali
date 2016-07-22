.class Lcom/didi/im/adapter/ConversationAdapter$1;
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

.field final synthetic val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/ConversationAdapter;ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput p2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 274
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$000(Lcom/didi/im/adapter/ConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 275
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iput v5, v0, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    .line 281
    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->updateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 283
    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-ne v1, v4, :cond_2

    .line 284
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$position:I

    #setter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$102(Lcom/didi/im/adapter/ConversationAdapter;I)I

    .line 285
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 286
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 287
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    invoke-static {v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$200(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    goto :goto_0

    .line 289
    :cond_2
    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-ne v1, v3, :cond_4

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 292
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$position:I

    #setter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$102(Lcom/didi/im/adapter/ConversationAdapter;I)I

    .line 293
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 296
    :cond_4
    iget-object v1, v0, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/im/helper/IMFileHelper;->isAuioFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v1, v2, v3, v0}, Lcom/didi/im/adapter/ConversationAdapter;->access$300(Lcom/didi/im/adapter/ConversationAdapter;ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    goto :goto_0

    .line 299
    :cond_5
    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$1;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->playAudio(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v1, v2, v0}, Lcom/didi/im/adapter/ConversationAdapter;->access$400(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    goto :goto_0
.end method
