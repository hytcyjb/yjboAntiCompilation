.class Lcom/didi/beatles/im/BtsConversationAdapter$1;
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

.field final synthetic val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

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

    .line 293
    iget v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$000(Lcom/didi/beatles/im/BtsConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->chatRecords:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$000(Lcom/didi/beatles/im/BtsConversationAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    invoke-virtual {v1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v0

    .line 297
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-virtual {v0}, Lcom/didi/im/model/IMChatRecord;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 302
    iput v5, v0, Lcom/didi/im/model/IMChatRecord;->voiceStatus:I

    .line 303
    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->btsUpdateChatRecord(Lcom/didi/im/model/IMChatRecord;)I

    .line 305
    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-ne v1, v4, :cond_2

    .line 306
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$position:I

    #setter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$102(Lcom/didi/beatles/im/BtsConversationAdapter;I)I

    .line 307
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->stopPlaying()V

    .line 308
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 309
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    invoke-static {v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$200(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    goto :goto_0

    .line 311
    :cond_2
    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/didi/im/model/IMChatRecord;->playStatus:I

    if-ne v1, v3, :cond_4

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 314
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$position:I

    #setter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$102(Lcom/didi/beatles/im/BtsConversationAdapter;I)I

    .line 315
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 318
    :cond_4
    iget-object v1, v0, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/im/helper/IMFileHelper;->isAuioFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 319
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v1, v2, v3, v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$300(Lcom/didi/beatles/im/BtsConversationAdapter;ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    goto/16 :goto_0

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$1;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->playAudio(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v1, v2, v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$400(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    goto/16 :goto_0
.end method
