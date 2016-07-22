.class Lcom/didi/beatles/im/BtsConversationAdapter$3;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;->playAudio(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

.field final synthetic val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 359
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    #calls: Lcom/didi/beatles/im/BtsConversationAdapter;->stopVoicePlayAnimation(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$200(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V

    .line 360
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 365
    const v0, 0x7f0b0384

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public onStarted()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$3;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    #getter for: Lcom/didi/beatles/im/BtsConversationAdapter;->audioPlayingPosition:I
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$100(Lcom/didi/beatles/im/BtsConversationAdapter;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/im/BtsConversationAdapter;->changeChatRecordVoicePlayState(II)V

    .line 354
    return-void
.end method
