.class Lcom/didi/im/adapter/ConversationAdapter$4;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/adapter/ConversationAdapter;->downloadAudiFileAndPlay(ILcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/adapter/ConversationAdapter;

.field final synthetic val$chatRecord:Lcom/didi/im/model/IMChatRecord;

.field final synthetic val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    iput-object p3, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

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
    .line 353
    if-eqz p2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    iget-object v2, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->playAudio(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
    invoke-static {v0, v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->access$400(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V

    .line 360
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 357
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$4;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    invoke-static {v0, v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$200(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    .line 358
    const v0, 0x7f0b0383

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
