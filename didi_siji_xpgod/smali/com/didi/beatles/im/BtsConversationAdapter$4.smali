.class Lcom/didi/beatles/im/BtsConversationAdapter$4;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

.field final synthetic val$chatRecord:Lcom/didi/im/model/IMChatRecord;

.field final synthetic val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onOptionCallback(Lcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)Z
    .locals 3
    .parameter "option"
    .parameter "success"
    .parameter "res"
    .parameter "args"

    .prologue
    .line 381
    if-eqz p2, :cond_0

    .line 382
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    iget-object v2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->playAudio(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$400(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 388
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 385
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$4;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$200(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    .line 386
    const v0, 0x7f0b0383

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
