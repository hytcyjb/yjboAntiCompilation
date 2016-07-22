.class Lcom/didi/im/adapter/ConversationAdapter$3;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/adapter/ConversationAdapter;->playAudio(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/adapter/ConversationAdapter;

.field final synthetic val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 331
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    #calls: Lcom/didi/im/adapter/ConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    invoke-static {v0, v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$200(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V

    .line 332
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 337
    const v0, 0x7f0b0384

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onStarted()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iget-object v1, p0, Lcom/didi/im/adapter/ConversationAdapter$3;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    #getter for: Lcom/didi/im/adapter/ConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$100(Lcom/didi/im/adapter/ConversationAdapter;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/im/adapter/ConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 326
    return-void
.end method
